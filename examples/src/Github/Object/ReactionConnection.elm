module Github.Object.ReactionConnection exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReactionConnection
selection constructor =
    Object.object constructor


{-| A list of edges.
-}
edges : SelectionSet selection Github.Object.ReactionEdge -> FieldDecoder (Maybe (List (Maybe selection))) Github.Object.ReactionConnection
edges object =
    Object.selectionFieldDecoder "edges" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| A list of nodes.
-}
nodes : SelectionSet selection Github.Object.Reaction -> FieldDecoder (Maybe (List (Maybe selection))) Github.Object.ReactionConnection
nodes object =
    Object.selectionFieldDecoder "nodes" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet selection Github.Object.PageInfo -> FieldDecoder selection Github.Object.ReactionConnection
pageInfo object =
    Object.selectionFieldDecoder "pageInfo" [] object identity


{-| Identifies the total count of items in the connection.
-}
totalCount : FieldDecoder Int Github.Object.ReactionConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int


{-| Whether or not the authenticated user has left a reaction on the subject.
-}
viewerHasReacted : FieldDecoder Bool Github.Object.ReactionConnection
viewerHasReacted =
    Object.fieldDecoder "viewerHasReacted" [] Decode.bool
