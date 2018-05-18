module Html.UnsafeHeaders exposing (h1, h2, h3, h4, h5, h6)

{-| This library defines HTML headers with unescaped text.


# Definition

@docs h1, h2, h3, h4, h5, h6

-}

import Html exposing (Html)
import Html.Attributes
import Json.Encode


{-| h1
-}
h1 : List (Html.Attribute msg) -> String -> Html msg
h1 attributes text =
    Html.h1 (innerHtml text :: attributes) []


{-| h2
-}
h2 : List (Html.Attribute msg) -> String -> Html msg
h2 attributes text =
    Html.h2 (innerHtml text :: attributes) []


{-| h3
-}
h3 : List (Html.Attribute msg) -> String -> Html msg
h3 attributes text =
    Html.h3 (innerHtml text :: attributes) []


{-| h4
-}
h4 : List (Html.Attribute msg) -> String -> Html msg
h4 attributes text =
    Html.h4 (innerHtml text :: attributes) []


{-| h5
-}
h5 : List (Html.Attribute msg) -> String -> Html msg
h5 attributes text =
    Html.h5 (innerHtml text :: attributes) []


{-| h6
-}
h6 : List (Html.Attribute msg) -> String -> Html msg
h6 attributes text =
    Html.h6 (innerHtml text :: attributes) []


innerHtml : String -> Html.Attribute msg
innerHtml text =
    Html.Attributes.property "innerHTML" (Json.Encode.string text)
