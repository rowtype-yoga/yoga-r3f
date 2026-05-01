module Yoga.React.R3F.Three.Objects where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, runEffectFn1, runEffectFn2, runEffectFn3)
import Foreign (Foreign)
import Prim.Row (class Union)
import React.Basic (JSX, Ref, element)
import Yoga.React.R3F.Internal (elementWithArgs, threejs)
import Yoga.React.R3F.Three.Types (BufferGeometry, InstancedBufferAttribute, InstancedMesh, Material, Matrix4, Mesh)

group :: forall props. { | props } -> JSX
group = element (threejs "Group")

mesh :: forall props. { | props } -> JSX
mesh = element (threejs "Mesh")

points :: forall props. { | props } -> JSX
points = element (threejs "Points")

line :: forall props. { | props } -> JSX
line = element (threejs "Line")

lineSegments :: forall props. { | props } -> JSX
lineSegments = element (threejs "LineSegments")

lineLoop :: forall props. { | props } -> JSX
lineLoop = element (threejs "LineLoop")

fog :: forall props. { | props } -> JSX
fog = element (threejs "Fog")

type MeshArgs =
  ( geometry :: BufferGeometry
  , material :: Material
  )

type InstancedMeshArgs =
  ( count :: Int
  | MeshArgs
  )

instancedMesh
  :: forall args args_ props
   . Union args args_ InstancedMeshArgs
  => { | args }
  -> { | props }
  -> JSX
instancedMesh = elementWithArgs (threejs "InstancedMesh") flattenInstancedMeshArgs

class MeshOps a where
  getGeometry :: a -> Effect BufferGeometry
  setGeometry :: a -> BufferGeometry -> Effect Unit

instance MeshOps Mesh where
  getGeometry = runEffectFn1 meshGetGeometry
  setGeometry = runEffectFn2 meshSetGeometry

instance MeshOps (Ref JSX) where
  getGeometry = runEffectFn1 refGetGeometry
  setGeometry = runEffectFn2 refSetGeometry

class InstancedMeshOps a where
  setMatrixAt :: a -> Int -> Matrix4 -> Effect Unit
  getInstanceMatrix :: a -> Effect InstancedBufferAttribute

instance InstancedMeshOps InstancedMesh where
  setMatrixAt = runEffectFn3 instancedMeshSetMatrixAt
  getInstanceMatrix = runEffectFn1 instancedMeshGetInstanceMatrix

instance InstancedMeshOps (Ref JSX) where
  setMatrixAt = runEffectFn3 refSetMatrixAt
  getInstanceMatrix = runEffectFn1 refGetInstanceMatrix

foreign import flattenInstancedMeshArgs :: forall args. { | args } -> Array Foreign
foreign import meshGetGeometry :: EffectFn1 Mesh BufferGeometry
foreign import refGetGeometry :: EffectFn1 (Ref JSX) BufferGeometry
foreign import meshSetGeometry :: EffectFn2 Mesh BufferGeometry Unit
foreign import refSetGeometry :: EffectFn2 (Ref JSX) BufferGeometry Unit
foreign import instancedMeshSetMatrixAt :: EffectFn3 InstancedMesh Int Matrix4 Unit
foreign import refSetMatrixAt :: EffectFn3 (Ref JSX) Int Matrix4 Unit
foreign import instancedMeshGetInstanceMatrix :: EffectFn1 InstancedMesh InstancedBufferAttribute
foreign import refGetInstanceMatrix :: EffectFn1 (Ref JSX) InstancedBufferAttribute
