module Yoga.React.R3F.Drei.Perf where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)

type PerfProps =
  ( logsPerSecond :: Int
  , antialias :: Boolean
  , overClock :: Boolean
  , deepAnalyze :: Boolean
  , showGraph :: Boolean
  , minimal :: Boolean
  , customData ::
      { value :: Number
      , name :: String
      , round :: Int
      , info :: String
      }
  , matrixUpdate :: Boolean
  , chart :: { hz :: Int, length :: Int }
  , colorBlind :: Boolean
  , className :: String
  , position :: String
  )

perf
  :: forall props props_
   . Union props props_ PerfProps
  => { | props }
  -> JSX
perf = element perfImpl

foreign import perfImpl :: forall props. ReactComponent { | props }
