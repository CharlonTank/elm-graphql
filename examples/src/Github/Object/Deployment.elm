-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Deployment exposing (StatusesOptionalArguments, commit, createdAt, creator, databaseId, environment, id, latestStatus, payload, repository, selection, state, statuses)

import Github.Enum.DeploymentState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Deployment
selection constructor =
    Object.selection constructor


{-| Identifies the commit sha of the deployment.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> Field (Maybe decodesTo) Github.Object.Deployment
commit object =
    Object.selectionField "commit" [] object (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.Deployment
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| Identifies the actor who triggered the deployment.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.Deployment
creator object =
    Object.selectionField "creator" [] object (identity >> Decode.nullable)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.Deployment
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


{-| The environment to which this deployment was made.
-}
environment : Field (Maybe String) Github.Object.Deployment
environment =
    Object.fieldDecoder "environment" [] (Decode.string |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.Deployment
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The latest status of this deployment.
-}
latestStatus : SelectionSet decodesTo Github.Object.DeploymentStatus -> Field (Maybe decodesTo) Github.Object.Deployment
latestStatus object =
    Object.selectionField "latestStatus" [] object (identity >> Decode.nullable)


{-| Extra information that a deployment system might need.
-}
payload : Field (Maybe String) Github.Object.Deployment
payload =
    Object.fieldDecoder "payload" [] (Decode.string |> Decode.nullable)


{-| Identifies the repository associated with the deployment.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.Deployment
repository object =
    Object.selectionField "repository" [] object identity


{-| The current state of the deployment.
-}
state : Field (Maybe Github.Enum.DeploymentState.DeploymentState) Github.Object.Deployment
state =
    Object.fieldDecoder "state" [] (Github.Enum.DeploymentState.decoder |> Decode.nullable)


type alias StatusesOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| A list of statuses associated with the deployment.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
statuses : (StatusesOptionalArguments -> StatusesOptionalArguments) -> SelectionSet decodesTo Github.Object.DeploymentStatusConnection -> Field (Maybe decodesTo) Github.Object.Deployment
statuses fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "statuses" optionalArgs object (identity >> Decode.nullable)
