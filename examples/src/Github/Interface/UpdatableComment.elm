module Github.Interface.UpdatableComment exposing (..)

import Github.Enum.CommentCannotUpdateReason
import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.UpdatableComment
commonSelection constructor =
    Object.object constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.UpdatableComment) -> SelectionSet (a -> constructor) Github.Interface.UpdatableComment
selection constructor typeSpecificDecoders =
    Object.polymorphicObject typeSpecificDecoders constructor


onCommitComment : SelectionSet selection Github.Object.CommitComment -> FragmentSelectionSet selection Github.Interface.UpdatableComment
onCommitComment (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitComment" fields decoder


onGistComment : SelectionSet selection Github.Object.GistComment -> FragmentSelectionSet selection Github.Interface.UpdatableComment
onGistComment (SelectionSet fields decoder) =
    FragmentSelectionSet "GistComment" fields decoder


onIssue : SelectionSet selection Github.Object.Issue -> FragmentSelectionSet selection Github.Interface.UpdatableComment
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onIssueComment : SelectionSet selection Github.Object.IssueComment -> FragmentSelectionSet selection Github.Interface.UpdatableComment
onIssueComment (SelectionSet fields decoder) =
    FragmentSelectionSet "IssueComment" fields decoder


onPullRequest : SelectionSet selection Github.Object.PullRequest -> FragmentSelectionSet selection Github.Interface.UpdatableComment
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder


onPullRequestReview : SelectionSet selection Github.Object.PullRequestReview -> FragmentSelectionSet selection Github.Interface.UpdatableComment
onPullRequestReview (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReview" fields decoder


onPullRequestReviewComment : SelectionSet selection Github.Object.PullRequestReviewComment -> FragmentSelectionSet selection Github.Interface.UpdatableComment
onPullRequestReviewComment (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewComment" fields decoder


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : FieldDecoder (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Interface.UpdatableComment
viewerCannotUpdateReasons =
    Object.fieldDecoder "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)
