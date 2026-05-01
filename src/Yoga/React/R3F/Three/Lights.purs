module Yoga.React.R3F.Three.Lights where

import Foreign (Foreign)
import Prim.Row (class Union)
import React.Basic (JSX, element)
import Yoga.React.R3F.Internal (elementWithArgs, threejs)

ambientLight :: forall props. { | props } -> JSX
ambientLight = element (threejs "AmbientLight")

directionalLight :: forall props. { | props } -> JSX
directionalLight = element (threejs "DirectionalLight")

pointLight :: forall props. { | props } -> JSX
pointLight = element (threejs "PointLight")

hemisphereLight :: forall props. { | props } -> JSX
hemisphereLight = element (threejs "HemisphereLight")

rectAreaLight :: forall props. { | props } -> JSX
rectAreaLight = element (threejs "RectAreaLight")

type SpotLightArgs =
  ( color :: Int
  , intensity :: Number
  , distance :: Number
  , angle :: Number
  , penumbra :: Number
  , decay :: Number
  )

spotLight
  :: forall args args_ props
   . Union args args_ SpotLightArgs
  => { | args }
  -> { | props }
  -> JSX
spotLight = elementWithArgs (threejs "SpotLight") flattenSpotLightArgs

foreign import flattenSpotLightArgs :: forall args. { | args } -> Array Foreign
