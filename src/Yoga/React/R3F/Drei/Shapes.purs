module Yoga.React.R3F.Drei.Shapes where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import Yoga.React.R3F.Three.Geometries (BoxGeometryArgs, PlaneGeometryArgs, TorusKnotGeometryArgs, flattenBoxArgs, flattenPlaneArgs, flattenTorusKnotArgs)
import Yoga.React.R3F.Internal (elementWithArgs)

box
  :: forall args args_ props
   . Union args args_ BoxGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
box = elementWithArgs boxImpl flattenBoxArgs

plane
  :: forall args args_ props
   . Union args args_ PlaneGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
plane = elementWithArgs planeImpl flattenPlaneArgs

torusKnot
  :: forall args args_ props
   . Union args args_ TorusKnotGeometryArgs
  => { | args }
  -> { | props }
  -> JSX
torusKnot = elementWithArgs torusKnotImpl flattenTorusKnotArgs

roundedBox :: forall props. { | props } -> JSX
roundedBox = element roundedBoxImpl

tube :: forall props. { | props } -> JSX
tube = element tubeImpl

cone :: forall props. { | props } -> JSX
cone = element coneImpl

dreiLine :: forall props. { | props } -> JSX
dreiLine = element lineImpl

foreign import boxImpl :: forall props. ReactComponent { | props }
foreign import planeImpl :: forall props. ReactComponent { | props }
foreign import torusKnotImpl :: forall props. ReactComponent { | props }
foreign import roundedBoxImpl :: forall props. ReactComponent { | props }
foreign import tubeImpl :: forall props. ReactComponent { | props }
foreign import coneImpl :: forall props. ReactComponent { | props }
foreign import lineImpl :: forall props. ReactComponent { | props }
