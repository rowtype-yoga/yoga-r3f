module Yoga.React.R3F.Drei.Staging where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, Ref, element)
import Yoga.React.R3F.Three.Types (Color, Scene, Texture)
import Type.Row (type (+))
import Untagged.Union (type (|+|))

stage :: forall props. { | props } -> JSX
stage = element stageImpl

sky :: forall props. { | props } -> JSX
sky = element skyImpl

float :: forall props. { | props } -> JSX
float = element floatImpl

backdrop :: forall props. { | props } -> JSX
backdrop = element backdropImpl

type EnvironmentLoaderProps r =
  ( files :: String |+| Array String
  , path :: String
  , preset :: String
  | r
  )

type EnvironmentProps =
  ( children :: Array JSX
  , frames :: Int
  , near :: Number
  , far :: Number
  , resolution :: Int
  , background :: Boolean |+| String
  , blur :: Number
  , map :: Texture
  , preset :: String
  , scene :: Scene |+| Ref JSX
  , ground :: Boolean |+| { radius :: Number, height :: Number, scale :: Number }
  )

environment
  :: forall props props_
   . Union props props_ (EnvironmentLoaderProps + EnvironmentProps)
  => { | props }
  -> JSX
environment = element environmentImpl

type ContactShadowsProps =
  ( opacity :: Number
  , width :: Number
  , height :: Number
  , blur :: Number
  , near :: Number
  , far :: Number
  , smooth :: Boolean
  , resolution :: Int
  , frames :: Int
  , scale :: Number |+| Array Number
  , color :: Color
  , depthWrite :: Boolean
  , position :: Array Number
  )

contactShadows
  :: forall props props_
   . Union props props_ ContactShadowsProps
  => { | props }
  -> JSX
contactShadows = element contactShadowsImpl

foreign import stageImpl :: forall props. ReactComponent { | props }
foreign import skyImpl :: forall props. ReactComponent { | props }
foreign import floatImpl :: forall props. ReactComponent { | props }
foreign import backdropImpl :: forall props. ReactComponent { | props }
foreign import environmentImpl :: forall props. ReactComponent { | props }
foreign import contactShadowsImpl :: forall props. ReactComponent { | props }
