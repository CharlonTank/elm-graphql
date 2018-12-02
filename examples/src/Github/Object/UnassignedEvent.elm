-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.UnassignedEvent exposing (actor, assignable, createdAt, id, user)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.UnassignedEvent
actor object_ =
    Object.selectionField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the assignable associated with the event.
-}
assignable : SelectionSet decodesTo Github.Interface.Assignable -> SelectionSet decodesTo Github.Object.UnassignedEvent
assignable object_ =
    Object.selectionField "assignable" [] object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.UnassignedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


id : SelectionSet Github.Scalar.Id Github.Object.UnassignedEvent
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the subject (user) who was unassigned.
-}
user : SelectionSet decodesTo Github.Object.User -> SelectionSet (Maybe decodesTo) Github.Object.UnassignedEvent
user object_ =
    Object.selectionField "user" [] object_ (identity >> Decode.nullable)
