-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.MilestoneState exposing (MilestoneState(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a milestone.

  - Open - A milestone that is still open.
  - Closed - A milestone that has been closed.

-}
type MilestoneState
    = Open
    | Closed


decoder : Decoder MilestoneState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "OPEN" ->
                        Decode.succeed Open

                    "CLOSED" ->
                        Decode.succeed Closed

                    _ ->
                        Decode.fail ("Invalid MilestoneState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : MilestoneState -> String
toString enum =
    case enum of
        Open ->
            "OPEN"

        Closed ->
            "CLOSED"
