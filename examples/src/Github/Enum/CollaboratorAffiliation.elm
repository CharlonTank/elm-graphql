-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.CollaboratorAffiliation exposing (CollaboratorAffiliation(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


{-| Collaborators affiliation level with a repository.

  - Outside - All outside collaborators of an organization-owned repository.
  - Direct - All collaborators with permissions to an organization-owned repository, regardless of organization membership status.
  - All - All collaborators the authenticated user can see.

-}
type CollaboratorAffiliation
    = Outside
    | Direct
    | All


decoder : Decoder CollaboratorAffiliation
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "OUTSIDE" ->
                        Decode.succeed Outside

                    "DIRECT" ->
                        Decode.succeed Direct

                    "ALL" ->
                        Decode.succeed All

                    _ ->
                        Decode.fail ("Invalid CollaboratorAffiliation type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : CollaboratorAffiliation -> String
toString enum =
    case enum of
        Outside ->
            "OUTSIDE"

        Direct ->
            "DIRECT"

        All ->
            "ALL"
