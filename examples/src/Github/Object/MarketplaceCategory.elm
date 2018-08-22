-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.MarketplaceCategory exposing (description, howItWorks, name, primaryListingCount, resourcePath, secondaryListingCount, selection, slug, url)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(Absent))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.MarketplaceCategory
selection constructor =
    Object.selection constructor


{-| The category's description.
-}
description : Field (Maybe String) Github.Object.MarketplaceCategory
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| The technical description of how apps listed in this category work with GitHub.
-}
howItWorks : Field (Maybe String) Github.Object.MarketplaceCategory
howItWorks =
    Object.fieldDecoder "howItWorks" [] (Decode.string |> Decode.nullable)


{-| The category's name.
-}
name : Field String Github.Object.MarketplaceCategory
name =
    Object.fieldDecoder "name" [] Decode.string


{-| How many Marketplace listings have this as their primary category.
-}
primaryListingCount : Field Int Github.Object.MarketplaceCategory
primaryListingCount =
    Object.fieldDecoder "primaryListingCount" [] Decode.int


{-| The HTTP path for this Marketplace category.
-}
resourcePath : Field Github.Scalar.Uri Github.Object.MarketplaceCategory
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| How many Marketplace listings have this as their secondary category.
-}
secondaryListingCount : Field Int Github.Object.MarketplaceCategory
secondaryListingCount =
    Object.fieldDecoder "secondaryListingCount" [] Decode.int


{-| The short name of the category used in its URL.
-}
slug : Field String Github.Object.MarketplaceCategory
slug =
    Object.fieldDecoder "slug" [] Decode.string


{-| The HTTP URL for this Marketplace category.
-}
url : Field Github.Scalar.Uri Github.Object.MarketplaceCategory
url =
    Object.fieldDecoder "url" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)
