-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Status exposing (ContextRequiredArguments, commit, context, contexts, id, selection, state)

import Github.Enum.StatusState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Status
selection constructor =
    Object.selection constructor


{-| The commit this status is attached to.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> Field (Maybe decodesTo) Github.Object.Status
commit object =
    Object.selectionField "commit" [] object (identity >> Decode.nullable)


type alias ContextRequiredArguments =
    { name : String }


{-| Looks up an individual status context by context name.

  - name - The context name.

-}
context : ContextRequiredArguments -> SelectionSet decodesTo Github.Object.StatusContext -> Field (Maybe decodesTo) Github.Object.Status
context requiredArgs object =
    Object.selectionField "context" [ Argument.required "name" requiredArgs.name Encode.string ] object (identity >> Decode.nullable)


{-| The individual status contexts for this commit.
-}
contexts : SelectionSet decodesTo Github.Object.StatusContext -> Field (List decodesTo) Github.Object.Status
contexts object =
    Object.selectionField "contexts" [] object (identity >> Decode.list)


id : Field Github.Scalar.Id Github.Object.Status
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The combined commit status.
-}
state : Field Github.Enum.StatusState.StatusState Github.Object.Status
state =
    Object.fieldDecoder "state" [] Github.Enum.StatusState.decoder
