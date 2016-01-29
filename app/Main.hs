{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Network.Wai.Handler.Warp (run)
import Servant
import Achievements (AchievementsAPI, server)

main :: IO ()
main = run 8000 $ serve (Proxy :: Proxy AchievementsAPI) server
