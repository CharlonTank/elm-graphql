module Api.Object.DemilestonedEvent exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode
import Json.Encode as Encode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.DemilestonedEvent
build constructor =
    Object.object constructor


actor : Object actor Api.Object.Actor -> FieldDecoder actor Api.Object.DemilestonedEvent
actor object =
    Object.single "actor" [] object


createdAt : FieldDecoder String Api.Object.DemilestonedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Api.Object.DemilestonedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


milestoneTitle : FieldDecoder String Api.Object.DemilestonedEvent
milestoneTitle =
    Object.fieldDecoder "milestoneTitle" [] Decode.string


subject : FieldDecoder String Api.Object.DemilestonedEvent
subject =
    Object.fieldDecoder "subject" [] Decode.string
