module Yoga.React.R3F.Postprocessing where

import React.Basic (JSX, ReactComponent, element)

effectComposer :: forall props. { | props } -> JSX
effectComposer = element effectComposerImpl

bloom :: forall props. { | props } -> JSX
bloom = element bloomImpl

depthOfField :: forall props. { | props } -> JSX
depthOfField = element depthOfFieldImpl

noise :: forall props. { | props } -> JSX
noise = element noiseImpl

vignette :: forall props. { | props } -> JSX
vignette = element vignetteImpl

foreign import effectComposerImpl :: forall props. ReactComponent { | props }
foreign import bloomImpl :: forall props. ReactComponent { | props }
foreign import depthOfFieldImpl :: forall props. ReactComponent { | props }
foreign import noiseImpl :: forall props. ReactComponent { | props }
foreign import vignetteImpl :: forall props. ReactComponent { | props }
