-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Topic exposing (id, name, relatedTopics)

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


id : SelectionSet Github.Scalar.Id Github.Object.Topic
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The topic's name.
-}
name : SelectionSet String Github.Object.Topic
name =
    Object.fieldDecoder "name" [] Decode.string


{-| A list of related topics, including aliases of this topic, sorted with the most relevant
first.
-}
relatedTopics : SelectionSet decodesTo Github.Object.Topic -> SelectionSet (List decodesTo) Github.Object.Topic
relatedTopics object_ =
    Object.selectionField "relatedTopics" [] object_ (identity >> Decode.list)
