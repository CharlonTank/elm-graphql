-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RepositoryInvitation exposing (id, invitee, inviter, permission, repository, selection)

import Github.Enum.RepositoryPermission
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RepositoryInvitation
selection constructor =
    Object.selection constructor


id : Field Github.Scalar.Id Github.Object.RepositoryInvitation
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The user who received the invitation.
-}
invitee : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.RepositoryInvitation
invitee object =
    Object.selectionField "invitee" [] object identity


{-| The user who created the invitation.
-}
inviter : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.RepositoryInvitation
inviter object =
    Object.selectionField "inviter" [] object identity


{-| The permission granted on this repository by this invitation.
-}
permission : Field Github.Enum.RepositoryPermission.RepositoryPermission Github.Object.RepositoryInvitation
permission =
    Object.fieldDecoder "permission" [] Github.Enum.RepositoryPermission.decoder


{-| The Repository the user is invited to.
-}
repository : SelectionSet decodesTo Github.Object.RepositoryInvitationRepository -> Field (Maybe decodesTo) Github.Object.RepositoryInvitation
repository object =
    Object.selectionField "repository" [] object (identity >> Decode.nullable)
