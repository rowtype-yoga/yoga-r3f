module Yoga.React.R3F.Internal where

import Prelude

import Data.Function.Uncurried (Fn2, Fn4, runFn2, runFn4)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Effect.Unsafe (unsafePerformEffect)
import Foreign (Foreign)
import React.Basic (JSX, ReactComponent)
import React.Basic.DOM (unsafeCreateDOMComponent)
import Type.Prelude (Proxy(..))

elementWithArgs
  :: forall args props
   . ReactComponent { | props }
  -> ({ | args } -> Array Foreign)
  -> { | args }
  -> { | props }
  -> JSX
elementWithArgs = runFn4 elementImpl

-- | Register a custom Three.js class with react-three/fiber.
-- | The name must start with an uppercase letter.
extend
  :: forall @name a
   . IsSymbol name
  => a
  -> Unit
extend = runFn2 extendImpl (reflectSymbol (Proxy :: _ name))

threejs :: forall props. String -> ReactComponent { | props }
threejs = unsafePerformEffect <<< unsafeCreateDOMComponent

foreign import elementImpl
  :: forall args props
   . Fn4 (ReactComponent { | props }) ({ | args } -> Array Foreign) { | args } { | props } JSX

foreign import extendImpl :: forall a. Fn2 String a Unit

foreign import data Null :: Type
foreign import nullImpl :: Null

null :: Null
null = nullImpl
