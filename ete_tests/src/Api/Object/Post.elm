-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Post exposing (..)

import Api.Interface
import Api.Object
import Api.Scalar
import Api.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(Absent))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.Post
selection constructor =
    Object.selection constructor


body : Field String Api.Object.Post
body =
    Object.fieldDecoder "body" [] Decode.string


comments : SelectionSet decodesTo Api.Object.Comment -> Field (Maybe (List decodesTo)) Api.Object.Post
comments object =
    Object.selectionField "comments" [] object (identity >> Decode.list >> Decode.maybe)


id : Field Api.Scalar.Id Api.Object.Post
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Api.Scalar.Id)


title : Field String Api.Object.Post
title =
    Object.fieldDecoder "title" [] Decode.string
