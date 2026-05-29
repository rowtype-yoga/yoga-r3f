module Yoga.React.R3F.Drei.Misc where

import React.Basic (JSX, ReactComponent, element)

stats :: JSX
stats = element statsImpl {}

html :: forall props. { | props } -> JSX
html = element htmlImpl

text :: forall props. { | props } -> JSX
text = element textImpl

outlines :: forall props. { | props } -> JSX
outlines = element outlinesImpl

edges :: forall props. { | props } -> JSX
edges = element edgesImpl

instances :: forall props. { | props } -> JSX
instances = element instancesImpl

instance_ :: forall props. { | props } -> JSX
instance_ = element instanceImpl

roundedBoxGeometry :: forall props. { | props } -> JSX
roundedBoxGeometry = element roundedBoxGeometryImpl

trail :: forall props. { | props } -> JSX
trail = element trailImpl

lightformer :: forall props. { | props } -> JSX
lightformer = element lightformerImpl

foreign import statsImpl :: forall props. ReactComponent { | props }
foreign import htmlImpl :: forall props. ReactComponent { | props }
foreign import textImpl :: forall props. ReactComponent { | props }
foreign import outlinesImpl :: forall props. ReactComponent { | props }
foreign import edgesImpl :: forall props. ReactComponent { | props }
foreign import instancesImpl :: forall props. ReactComponent { | props }
foreign import instanceImpl :: forall props. ReactComponent { | props }
foreign import roundedBoxGeometryImpl :: forall props. ReactComponent { | props }
foreign import trailImpl :: forall props. ReactComponent { | props }
foreign import lightformerImpl :: forall props. ReactComponent { | props }
