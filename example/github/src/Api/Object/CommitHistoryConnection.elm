module Api.Object.CommitHistoryConnection exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode
import Json.Encode as Encode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.CommitHistoryConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.CommitEdge -> FieldDecoder (List edges) Api.Object.CommitHistoryConnection
edges object =
    Object.listOf "edges" [] object


nodes : Object nodes Api.Object.Commit -> FieldDecoder (List nodes) Api.Object.CommitHistoryConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.CommitHistoryConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.CommitHistoryConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
