module Bingo exposing (Board, Square, allSquares, centerSquare, falseSquare, randomBoard)

import Random
import Random.List


type alias Square =
    { value : String, checked : Bool }


type alias Board =
    List Square


falseSquare : String -> Square
falseSquare text =
    Square text False


allSquares : List Square
allSquares =
    [ falseSquare "\"Mute your phone please\""
    , falseSquare "5 seconds awkward silence"
    , falseSquare "People talking at the same time"
    , falseSquare "Sound of telephone ringing"
    , falseSquare "(sigh)"
    , falseSquare "\"Ok, let's get started\""
    , falseSquare "(coughing)"
    , falseSquare "Child or animal noise"
    , falseSquare "People talking at the same time"
    , falseSquare "\"This was shared ahead of time\""
    , falseSquare "Echo noise or feedback"
    , falseSquare "Sound of someone typing"
    , falseSquare "\"Can you repeat that?\""
    , falseSquare "\"Can you share that by email?\""
    , falseSquare "Sound of background conversation"
    , falseSquare "\"...technical difficulties.\""
    , falseSquare "5th \"Thank you\""
    , falseSquare "\"Time is just about up\""
    , falseSquare "Powerpoint malfunction"
    , falseSquare "\"I was on mute.\""
    , falseSquare "\"Can you see my screen?\""
    , falseSquare "Unintended interruption"
    , falseSquare "\"__ can you comment\""
    , falseSquare "\"I need to step out\""
    , falseSquare "\"Go further\""
    , falseSquare "\"Can you share?\""
    , falseSquare "\"You're not sharing\""
    , falseSquare "Any acronym"
    , falseSquare "A well known acronym repurposed by Ford"
    , falseSquare "\"VIN number\""
    ]


randomBoard : Int -> Board
randomBoard seed =
    let
        output =
            Random.initialSeed seed
                |> Random.step (Random.List.shuffle allSquares)
                |> Tuple.first
    in
    List.take 12 output
        ++ [ centerSquare ]
        ++ (output
                |> List.drop 12
                |> List.take 12
           )


centerSquare : Square
centerSquare =
    Square "Free ⭐️ Space" True
