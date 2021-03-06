module Star exposing (star)

import Html.Attributes as Html
import Svg exposing (svg)
import Svg.Attributes exposing (d, fill, height, viewBox, width)


star =
    svg
        [ Html.style "z-index" "1"
        , Html.style "position" "absolute"
        , Html.style "top" "50%"
        , Html.style "left" "50%"
        , Html.style "transform" "translate(-50%, -50%)"
        , width "136"
        , height "130"
        , viewBox "0 0 136 130"
        , fill "none"
        ]
        [ Svg.path
            [ d "M59.3589 5.83589C63.2162 -0.786783 72.7838 -0.786786 76.6411 5.83589L91.6447 31.5954C93.0577 34.0214 95.4255 35.7417 98.1694 36.3359L127.305 42.645C134.795 44.267 137.752 53.3663 132.645 59.0814L112.783 81.3107C110.912 83.4043 110.008 86.1878 110.29 88.981L113.293 118.64C114.065 126.265 106.325 131.889 99.3117 128.798L72.0325 116.777C69.4634 115.645 66.5366 115.645 63.9675 116.777L36.6883 128.798C29.6749 131.889 21.9346 126.265 22.7067 118.64L25.7096 88.981C25.9924 86.1878 25.088 83.4043 23.2174 81.3107L3.35499 59.0814C-1.75155 53.3663 1.20498 44.267 8.6955 42.645L37.8306 36.3359C40.5745 35.7417 42.9423 34.0214 44.3553 31.5954L59.3589 5.83589Z"
            , fill "#ECB904"
            ]
            []
        ]
