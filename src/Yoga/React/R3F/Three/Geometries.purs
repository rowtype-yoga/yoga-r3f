module Yoga.React.R3F.Three.Geometries where

import Foreign (Foreign)
import Prim.Row (class Union)
import React.Basic (JSX, element)
import Yoga.React.R3F.Internal (elementWithArgs, threejs)

-- Typed-args geometries

type BoxGeometryArgs =
  ( width :: Number
  , height :: Number
  , depth :: Number
  , widthSegments :: Int
  , heightSegments :: Int
  , depthSegments :: Int
  )

boxGeometry
  :: forall args args_ props
   . Union args args_ BoxGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
boxGeometry = elementWithArgs (threejs "BoxGeometry") flattenBoxArgs

type PlaneGeometryArgs =
  ( width :: Number
  , height :: Number
  , widthSegments :: Int
  , heightSegments :: Int
  )

planeGeometry
  :: forall args args_ props
   . Union args args_ PlaneGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
planeGeometry = elementWithArgs (threejs "PlaneGeometry") flattenPlaneArgs

type SphereGeometryArgs =
  ( radius :: Number
  , widthSegments :: Int
  , heightSegments :: Int
  , phiStart :: Number
  , phiLength :: Number
  , thetaStart :: Number
  , thetaLength :: Number
  )

sphereGeometry
  :: forall args args_ props
   . Union args args_ SphereGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
sphereGeometry = elementWithArgs (threejs "SphereGeometry") flattenSphereArgs

type CircleGeometryArgs =
  ( radius :: Number
  , segments :: Int
  , thetaStart :: Number
  , thetaLength :: Number
  )

circleGeometry
  :: forall args args_ props
   . Union args args_ CircleGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
circleGeometry = elementWithArgs (threejs "CircleGeometry") flattenCircleArgs

type CylinderGeometryArgs =
  ( radiusTop :: Number
  , radiusBottom :: Number
  , height :: Number
  , radialSegments :: Int
  , heightSegments :: Int
  , openEnded :: Boolean
  , thetaStart :: Number
  , thetaLength :: Number
  )

cylinderGeometry
  :: forall args args_ props
   . Union args args_ CylinderGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
cylinderGeometry = elementWithArgs (threejs "CylinderGeometry") flattenCylinderArgs

type ConeGeometryArgs =
  ( radius :: Number
  , height :: Number
  , radialSegments :: Int
  , heightSegments :: Int
  , openEnded :: Boolean
  , thetaStart :: Number
  , thetaLength :: Number
  )

coneGeometry
  :: forall args args_ props
   . Union args args_ ConeGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
coneGeometry = elementWithArgs (threejs "ConeGeometry") flattenConeArgs

type TorusGeometryArgs =
  ( radius :: Number
  , tube :: Number
  , radialSegments :: Int
  , tubularSegments :: Int
  , arc :: Number
  )

torusGeometry
  :: forall args args_ props
   . Union args args_ TorusGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
torusGeometry = elementWithArgs (threejs "TorusGeometry") flattenTorusArgs

type TorusKnotGeometryArgs =
  ( radius :: Number
  , tube :: Number
  , tubularSegments :: Int
  , radialSegments :: Int
  , p :: Int
  , q :: Int
  )

torusKnotGeometry
  :: forall args args_ props
   . Union args args_ TorusKnotGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
torusKnotGeometry = elementWithArgs (threejs "TorusKnotGeometry") flattenTorusKnotArgs

type RingGeometryArgs =
  ( innerRadius :: Number
  , outerRadius :: Number
  , thetaSegments :: Int
  , phiSegments :: Int
  , thetaStart :: Number
  , thetaLength :: Number
  )

ringGeometry
  :: forall args args_ props
   . Union args args_ RingGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
ringGeometry = elementWithArgs (threejs "RingGeometry") flattenRingArgs

-- Simple geometries (no typed constructor args needed)

dodecahedronGeometry :: forall props. { | props } -> JSX
dodecahedronGeometry = element (threejs "DodecahedronGeometry")

icosahedronGeometry :: forall props. { | props } -> JSX
icosahedronGeometry = element (threejs "IcosahedronGeometry")

octahedronGeometry :: forall props. { | props } -> JSX
octahedronGeometry = element (threejs "OctahedronGeometry")

tetrahedronGeometry :: forall props. { | props } -> JSX
tetrahedronGeometry = element (threejs "TetrahedronGeometry")

tubeGeometry :: forall props. { | props } -> JSX
tubeGeometry = element (threejs "TubeGeometry")

latheGeometry :: forall props. { | props } -> JSX
latheGeometry = element (threejs "LatheGeometry")

extrudeGeometry :: forall props. { | props } -> JSX
extrudeGeometry = element (threejs "ExtrudeGeometry")

shapeGeometry :: forall props. { | props } -> JSX
shapeGeometry = element (threejs "ShapeGeometry")

edgesGeometry :: forall props. { | props } -> JSX
edgesGeometry = element (threejs "EdgesGeometry")

capsuleGeometry :: forall props. { | props } -> JSX
capsuleGeometry = element (threejs "CapsuleGeometry")

-- FFI flatten functions

foreign import flattenBoxArgs :: forall args. { | args } -> Array Foreign
foreign import flattenPlaneArgs :: forall args. { | args } -> Array Foreign
foreign import flattenSphereArgs :: forall args. { | args } -> Array Foreign
foreign import flattenCircleArgs :: forall args. { | args } -> Array Foreign
foreign import flattenCylinderArgs :: forall args. { | args } -> Array Foreign
foreign import flattenConeArgs :: forall args. { | args } -> Array Foreign
foreign import flattenTorusArgs :: forall args. { | args } -> Array Foreign
foreign import flattenTorusKnotArgs :: forall args. { | args } -> Array Foreign
foreign import flattenRingArgs :: forall args. { | args } -> Array Foreign
