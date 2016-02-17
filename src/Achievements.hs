{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Achievements where

import qualified Data.Text as T
import Data.Aeson
import GHC.Generics (Generic)
import Servant

data Application = Application String deriving (Show, Eq, Generic)
instance ToJSON Application

--data Achievement = Achievement
--    {
--    } deriving (Show, Eq)

type AchievementsAPI = "apps" :> Get '[JSON] [Application]
--                  :<|> "apps" :> Capture "appName" T.Text :> Get '[JSON] [Achievement]

server :: Server AchievementsAPI
server = return getApps

getApps = [Application "BingeHack4"]
