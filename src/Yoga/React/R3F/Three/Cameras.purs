module Yoga.React.R3F.Three.Cameras where

import Foreign (Foreign)
import Prim.Row (class Union)
import React.Basic (JSX)
import Yoga.React.R3F.Internal (elementWithArgs, threejs)

type OrthographicCameraArgs =
  ( left :: Number
  , right :: Number
  , top :: Number
  , bottom :: Number
  , near :: Number
  , far :: Number
  )

orthographicCamera
  :: forall args args_ props
   . Union args args_ OrthographicCameraArgs
  => { | args }
  -> { | props }
  -> JSX
orthographicCamera =
  elementWithArgs (threejs "OrthographicCamera") flattenOrthographicCameraArgs

foreign import flattenOrthographicCameraArgs :: forall args. { | args } -> Array Foreign
