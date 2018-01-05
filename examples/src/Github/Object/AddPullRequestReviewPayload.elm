module Github.Object.AddPullRequestReviewPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddPullRequestReviewPayload
selection constructor =
    Object.object constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : FieldDecoder (Maybe String) Github.Object.AddPullRequestReviewPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.maybe)


{-| The newly created pull request review.
-}
pullRequestReview : SelectionSet selection Github.Object.PullRequestReview -> FieldDecoder selection Github.Object.AddPullRequestReviewPayload
pullRequestReview object =
    Object.selectionFieldDecoder "pullRequestReview" [] object identity


{-| The edge from the pull request's review connection.
-}
reviewEdge : SelectionSet selection Github.Object.PullRequestReviewEdge -> FieldDecoder selection Github.Object.AddPullRequestReviewPayload
reviewEdge object =
    Object.selectionFieldDecoder "reviewEdge" [] object identity
