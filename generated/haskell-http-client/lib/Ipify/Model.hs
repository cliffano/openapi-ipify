{-
   ipify

   OpenAPI client for ipify, a simple public IP address API

   OpenAPI Version: 3.0.0
   ipify API version: 0.9.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Ipify.Model
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Ipify.Model where

import Ipify.Core
import Ipify.MimeTypes

import Data.Aeson ((.:),(.:!),(.:?),(.=))

import qualified Control.Arrow as P (left)
import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.HashMap.Lazy as HM
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Time as TI
import qualified Lens.Micro as L
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Control.Applicative ((<|>))
import Control.Applicative (Alternative)
import Data.Function ((&))
import Data.Monoid ((<>))
import Data.Text (Text)
import Prelude (($),(/=),(.),(<$>),(<*>),(>>=),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)

import qualified Prelude as P



-- * Parameter newtypes


-- ** Callback
newtype Callback = Callback { unCallback :: Text } deriving (P.Eq, P.Show)

-- ** Format
newtype Format = Format { unFormat :: E'Format } deriving (P.Eq, P.Show)

-- * Models


-- ** Ip
-- | Ip
data Ip = Ip
  { ipIp :: !(Text) -- ^ /Required/ "ip"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON Ip
instance A.FromJSON Ip where
  parseJSON = A.withObject "Ip" $ \o ->
    Ip
      <$> (o .:  "ip")

-- | ToJSON Ip
instance A.ToJSON Ip where
  toJSON Ip {..} =
   _omitNulls
      [ "ip" .= ipIp
      ]


-- | Construct a value of type 'Ip' (by applying it's required fields, if any)
mkIp
  :: Text -- ^ 'ipIp' 
  -> Ip
mkIp ipIp =
  Ip
  { ipIp
  }


-- * Enums


-- ** E'Format

-- | Enum of 'Text'
data E'Format
  = E'Format'Json -- ^ @"json"@
  | E'Format'Jsonp -- ^ @"jsonp"@
  deriving (P.Show, P.Eq, P.Typeable, P.Ord, P.Bounded, P.Enum)

instance A.ToJSON E'Format where toJSON = A.toJSON . fromE'Format
instance A.FromJSON E'Format where parseJSON o = P.either P.fail (pure . P.id) . toE'Format =<< A.parseJSON o
instance WH.ToHttpApiData E'Format where toQueryParam = WH.toQueryParam . fromE'Format
instance WH.FromHttpApiData E'Format where parseQueryParam o = WH.parseQueryParam o >>= P.left T.pack . toE'Format
instance MimeRender MimeMultipartFormData E'Format where mimeRender _ = mimeRenderDefaultMultipartFormData

-- | unwrap 'E'Format' enum
fromE'Format :: E'Format -> Text
fromE'Format = \case
  E'Format'Json -> "json"
  E'Format'Jsonp -> "jsonp"

-- | parse 'E'Format' enum
toE'Format :: Text -> P.Either String E'Format
toE'Format = \case
  "json" -> P.Right E'Format'Json
  "jsonp" -> P.Right E'Format'Jsonp
  s -> P.Left $ "toE'Format: enum parse failure: " P.++ P.show s


