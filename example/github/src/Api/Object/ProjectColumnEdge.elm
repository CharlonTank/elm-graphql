module Api.Object.ProjectColumnEdge exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode
import Json.Encode as Encode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.ProjectColumnEdge
build constructor =
    Object.object constructor


cursor : FieldDecoder String Api.Object.ProjectColumnEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : Object node Api.Object.ProjectColumn -> FieldDecoder node Api.Object.ProjectColumnEdge
node object =
    Object.single "node" [] object
