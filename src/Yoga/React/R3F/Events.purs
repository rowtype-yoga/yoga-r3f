module Yoga.React.R3F.Events where

import Prelude

import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Uncurried (EffectFn2, EffectFn3, mkEffectFn2, runEffectFn3)

foreign import data ThreeEvent :: Type

foreign import eventPointX :: ThreeEvent -> Number
foreign import eventPointY :: ThreeEvent -> Number
foreign import eventPointZ :: ThreeEvent -> Number
foreign import eventClientX :: ThreeEvent -> Number
foreign import eventClientY :: ThreeEvent -> Number
foreign import eventCameraZoom :: ThreeEvent -> Number
foreign import stopPropagation :: ThreeEvent -> Effect Unit
foreign import stopNativeImmediate :: ThreeEvent -> Effect Unit
foreign import setCursor :: String -> Effect Unit

foreign import startPointerDragImpl :: EffectFn3 ThreeEvent (EffectFn2 Number Number Unit) (Effect Unit) Unit

startPointerDrag :: ThreeEvent -> (Number -> Number -> Effect Unit) -> Effect Unit -> Effect Unit
startPointerDrag e onMove onEnd = runEffectFn3 startPointerDragImpl e (mkEffectFn2 onMove) onEnd

foreign import withChildrenImpl :: forall c p. Fn2 c p p

withChildren :: forall c p. c -> p -> p
withChildren = runFn2 withChildrenImpl
