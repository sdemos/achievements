{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}

module Achievements where

import Servant

type AchievementsAPI = "apps" :> Get '[JSON] [String]

server :: Server AchievementsAPI
server = return getApps

getApps = ["BingeHack4"]
