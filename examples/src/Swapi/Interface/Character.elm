-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Interface.Character exposing (appearsIn, avatarUrl, commonSelection, friends, id, name, onDroid, onHuman, selection)

import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(Absent))
import Graphql.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode
import Swapi.Enum.Episode
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Swapi.Interface.Character
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Swapi.Interface.Character) -> SelectionSet (a -> constructor) Swapi.Interface.Character
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onHuman : SelectionSet decodesTo Swapi.Object.Human -> FragmentSelectionSet decodesTo Swapi.Interface.Character
onHuman (SelectionSet fields decoder) =
    FragmentSelectionSet "Human" fields decoder


onDroid : SelectionSet decodesTo Swapi.Object.Droid -> FragmentSelectionSet decodesTo Swapi.Interface.Character
onDroid (SelectionSet fields decoder) =
    FragmentSelectionSet "Droid" fields decoder


{-| Which movies they appear in.
-}
appearsIn : Field (List Swapi.Enum.Episode.Episode) Swapi.Interface.Character
appearsIn =
    Object.fieldDecoder "appearsIn" [] (Swapi.Enum.Episode.decoder |> Decode.list)


{-| Url to a profile picture for the character.
-}
avatarUrl : Field String Swapi.Interface.Character
avatarUrl =
    Object.fieldDecoder "avatarUrl" [] Decode.string


{-| The friends of the character, or an empty list if they have none.
-}
friends : SelectionSet decodesTo Swapi.Interface.Character -> Field (List decodesTo) Swapi.Interface.Character
friends object =
    Object.selectionField "friends" [] object (identity >> Decode.list)


{-| The ID of the character.
-}
id : Field Swapi.Scalar.Id Swapi.Interface.Character
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Swapi.Scalar.Id)


{-| The name of the character.
-}
name : Field String Swapi.Interface.Character
name =
    Object.fieldDecoder "name" [] Decode.string
