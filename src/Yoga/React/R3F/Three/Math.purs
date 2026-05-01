module Yoga.React.R3F.Three.Math where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn4, runEffectFn1, runEffectFn4)
import JS.Object (EffectMth0, EffectMth4, JSObject, runEffectMth0, runEffectMth4)
import Yoga.React.R3F.Three.Types (Color, Matrix4)
import Type.Proxy (Proxy(..))
import Type.Row (type (+))

class Matrix4Ops a where
  clone :: a -> Effect a

instance Matrix4Ops Matrix4 where
  clone = runEffectFn1 matrix4Clone

class ColorOps a where
  convertSRGBToLinear :: a -> Effect Unit

instance ColorOps Color where
  convertSRGBToLinear = runEffectFn1 srgb2Linear

type XI r = (x :: EffectMth0 Number | r)
type YI r = (y :: EffectMth0 Number | r)
type ZI r = (z :: EffectMth0 Number | r)
type WI r = (w :: EffectMth0 Number | r)
type Set4I r = (set :: EffectMth4 Number Number Number Number Unit | r)
type NormalizeI r = (normalize :: EffectMth0 Unit | r)

x :: forall r. JSObject (XI r) -> Effect Number
x = runEffectMth0 (Proxy :: _ "x")

y :: forall r. JSObject (YI r) -> Effect Number
y = runEffectMth0 (Proxy :: _ "y")

z :: forall r. JSObject (ZI r) -> Effect Number
z = runEffectMth0 (Proxy :: _ "z")

w :: forall r. JSObject (WI r) -> Effect Number
w = runEffectMth0 (Proxy :: _ "w")

set4 :: forall r. JSObject (Set4I r) -> Number -> Number -> Number -> Number -> Effect Unit
set4 = runEffectMth4 (Proxy :: _ "set")

normalize :: forall r. JSObject (NormalizeI r) -> Effect Unit
normalize = runEffectMth0 (Proxy :: _ "normalize")

type Vector4 = JSObject (XI + YI + ZI + WI + Set4I + NormalizeI + ())

vector4 :: Number -> Number -> Number -> Number -> Effect Vector4
vector4 = runEffectFn4 vector4Impl

vector4Default :: Effect Vector4
vector4Default = runEffectFn4 vector4Impl 0.0 0.0 0.0 1.0

foreign import vector4Impl :: EffectFn4 Number Number Number Number Vector4
foreign import matrix4Clone :: EffectFn1 Matrix4 Matrix4
foreign import srgb2Linear :: EffectFn1 Color Unit
