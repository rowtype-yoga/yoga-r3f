module Yoga.React.R3F.Drei.Controls where

import Prelude

import Effect (Effect)
import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)

orbitControls :: forall props. { | props } -> JSX
orbitControls = element orbitControlsImpl

type CameraControlsProps =
  ( camera :: JSX
  , makeDefault :: Boolean
  , onStart :: { "type" :: String } -> Effect Unit
  , onEnd :: { "type" :: String } -> Effect Unit
  , onChange :: { "type" :: String } -> Effect Unit
  )

cameraControls
  :: forall props props_
   . Union props props_ CameraControlsProps
  => { | props }
  -> JSX
cameraControls = element cameraControlsImpl

mapControls :: forall props. { | props } -> JSX
mapControls = element mapControlsImpl

presentationControls :: forall props. { | props } -> JSX
presentationControls = element presentationControlsImpl

foreign import orbitControlsImpl :: forall props. ReactComponent { | props }
foreign import cameraControlsImpl :: forall props. ReactComponent { | props }
foreign import mapControlsImpl :: forall props. ReactComponent { | props }
foreign import presentationControlsImpl :: forall props. ReactComponent { | props }
