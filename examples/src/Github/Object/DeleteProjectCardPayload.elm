-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.DeleteProjectCardPayload exposing (clientMutationId, column, deletedCardId)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Github.Object.DeleteProjectCardPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The column the deleted card was in.
-}
column : SelectionSet decodesTo Github.Object.ProjectColumn -> SelectionSet decodesTo Github.Object.DeleteProjectCardPayload
column object_ =
    Object.selectionField "column" [] object_ identity


{-| The deleted card ID.
-}
deletedCardId : SelectionSet Github.Scalar.Id Github.Object.DeleteProjectCardPayload
deletedCardId =
    Object.fieldDecoder "deletedCardId" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)
