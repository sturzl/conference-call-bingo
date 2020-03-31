module DauberView exposing (dauberView)

import Dot exposing (Color(..))
import Html exposing (div, label, text)
import Html.Attributes exposing (class, style)
import Html.Events exposing (onClick)
import Msg exposing (Msg(..))
import Style exposing (bold, fontStyle)


dauberView { dauberColor } =
    div [ class "boardStyleSelectorWrapper", style "margin-top" "auto" ]
        [ div [ style "text-transform" "uppercase", style "font-size" "1.25rem", bold, fontStyle, style "margin-bottom" ".5rem" ] [ text "dauber color" ]
        , dauberToggle dauberColor Blue "Blue"
        , dauberToggle dauberColor Keylime "Keylime"
        , dauberToggle dauberColor Magenta "Magenta"
        , dauberToggle dauberColor Ruby "Ruby"
        , dauberToggle dauberColor Tangerine "Tangerine"
        ]


dauberToggle selectedColor color colorLabel =
    let
        borderStyle =
            if selectedColor == color then
                [ class "boardOptionSelected" ]

            else
                [ class "boardOption" ]
    in
    div ([ style "padding" ".75rem", onClick (DauberSelected color), style "display" "flex", style "align-items" "center", style "cursor" "pointer" ] ++ borderStyle)
        [ div [ class "dauber-chip", class (color |> Dot.class) ] []
        , label [ style "font-size" "1rem", bold, fontStyle, style "padding" ".75rem", style "cursor" "pointer" ] [ text colorLabel ]
        ]
