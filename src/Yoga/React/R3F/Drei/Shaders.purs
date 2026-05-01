module Yoga.React.R3F.Drei.Shaders where

import Prelude

import Data.Function.Uncurried (Fn3, runFn3)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import Yoga.React.R3F.Internal (extend, threejs)
import Type.Prelude (Proxy(..))

-- | Create a custom shader material. The name must start with an uppercase letter.
shaderMaterial
  :: forall @materialName args props
   . IsSymbol materialName
  => { | args }
  -> String
  -> String
  -> { | props }
  -> JSX
shaderMaterial args vertexShader fragmentShader = do
  let mat = runFn3 shaderMaterialImpl args vertexShader fragmentShader
  let _ = extend @materialName mat
  element $ threejs $ reflectSymbol (Proxy :: _ materialName)

type SoftShadowsProps =
  ( size :: Number
  , focus :: Number
  , samples :: Int
  )

softShadows
  :: forall props props_
   . Union props props_ SoftShadowsProps
  => { | props }
  -> JSX
softShadows = element softShadowsImpl

meshTransmissionMaterial :: forall props. { | props } -> JSX
meshTransmissionMaterial = element meshTransmissionMaterialImpl

foreign import shaderMaterialImpl
  :: forall args props. Fn3 { | args } String String (ReactComponent { | props })
foreign import softShadowsImpl :: forall props. ReactComponent { | props }
foreign import meshTransmissionMaterialImpl :: forall props. ReactComponent { | props }
