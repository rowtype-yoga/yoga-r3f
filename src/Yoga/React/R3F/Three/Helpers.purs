module Yoga.React.R3F.Three.Helpers where

import Prelude

import Effect.Uncurried (EffectFn1, runEffectFn1)
import Foreign (Foreign)
import Prim.Row (class Union)
import React.Basic (JSX, element)
import React.Basic.Hooks (Hook, unsafeHook)
import Yoga.React.R3F.Internal (elementWithArgs, threejs)

axesHelper :: Number -> JSX
axesHelper size = element (threejs "AxesHelper") { args: [ size ] }

type GridHelperArgs =
  ( size :: Number
  , divisions :: Number
  , colorCenterLine :: String
  , colorGrid :: String
  )

gridHelper
  :: forall args args_ props
   . Union args args_ GridHelperArgs
  => { | args }
  -> { | props }
  -> JSX
gridHelper = elementWithArgs (threejs "GridHelper") flattenGridHelperArgs

type PolarGridHelperArgs =
  ( radius :: Number
  , sectors :: Number
  , rings :: Number
  , divisions :: Number
  , color1 :: String
  , color2 :: String
  )

polarGridHelper
  :: forall args args_ props
   . Union args args_ PolarGridHelperArgs
  => { | args }
  -> { | props }
  -> JSX
polarGridHelper = elementWithArgs (threejs "PolarGridHelper") flattenPolarHelperArgs

foreign import data UseHelper :: Type -> Type -> Type

useCameraHelper :: forall a b. a -> Hook (UseHelper b) Unit
useCameraHelper = unsafeHook <<< runEffectFn1 useCameraHelperImpl

foreign import flattenGridHelperArgs :: forall args. { | args } -> Array Foreign
foreign import flattenPolarHelperArgs :: forall args. { | args } -> Array Foreign
foreign import useCameraHelperImpl :: forall a. EffectFn1 a Unit
