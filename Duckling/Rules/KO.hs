-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.


{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}

module Duckling.Rules.KO
  ( rules
  ) where

import Duckling.Dimensions.Types
import qualified Duckling.AmountOfMoney.KO.Rules as AmountOfMoney
import qualified Duckling.Distance.KO.Rules as Distance
import qualified Duckling.Duration.KO.Rules as Duration
import qualified Duckling.Numeral.KO.Rules as Numeral
import qualified Duckling.Ordinal.KO.Rules as Ordinal
import qualified Duckling.Quantity.KO.Rules as Quantity
import qualified Duckling.Temperature.KO.Rules as Temperature
import qualified Duckling.Time.KO.Rules as Time
import qualified Duckling.TimeGrain.KO.Rules as TimeGrain
import Duckling.Types
import qualified Duckling.Volume.KO.Rules as Volume

rules :: Some Dimension -> [Rule]
rules (This Distance) = Distance.rules
rules (This Duration) = Duration.rules
rules (This Numeral) = Numeral.rules
rules (This Email) = []
rules (This AmountOfMoney) = AmountOfMoney.rules
rules (This Ordinal) = Ordinal.rules
rules (This PhoneNumber) = []
rules (This Quantity) = Quantity.rules
rules (This RegexMatch) = []
rules (This Temperature) = Temperature.rules
rules (This Time) = Time.rules
rules (This TimeGrain) = TimeGrain.rules
rules (This Url) = []
rules (This Volume) = Volume.rules
