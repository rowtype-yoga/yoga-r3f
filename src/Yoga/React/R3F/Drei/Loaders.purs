module Yoga.React.R3F.Drei.Loaders where

import Prelude

import Effect.Uncurried (EffectFn1, runEffectFn1)
import React.Basic.Hooks (Hook, unsafeHook)
import Yoga.React.R3F.Three.Types (Texture)

useTexture :: forall hooks. String -> Hook (UseLoader hooks) Texture
useTexture = unsafeHook <<< runEffectFn1 useTextureImpl

useGLTF :: forall hooks a. String -> Hook (UseLoader hooks) a
useGLTF = unsafeHook <<< runEffectFn1 useGLTFImpl

preloadGLTF :: forall hooks. String -> Hook (UseLoader hooks) Unit
preloadGLTF = unsafeHook <<< runEffectFn1 preloadGLTFImpl

useEnvironment :: forall hooks. String -> Hook (UseLoader hooks) Texture
useEnvironment file = unsafeHook $ runEffectFn1 useEnvImpl { files: file }

foreign import data UseLoader :: Type -> Type -> Type
foreign import useTextureImpl :: EffectFn1 String Texture
foreign import useGLTFImpl :: forall a. EffectFn1 String a
foreign import preloadGLTFImpl :: EffectFn1 String Unit
foreign import useEnvImpl :: forall props. EffectFn1 { | props } Texture
