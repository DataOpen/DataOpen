module Model exposing (..)

import NotebookHistory
import Page exposing (Page(..))


type alias Model =
    { page : Page
    , uid : String
    , notebookHistory : Maybe NotebookHistory.Model
    }


new : Model
new =
    { page = Home
    , uid = ""
    , notebookHistory = Nothing
    }


updatePage : Model -> Page -> Model
updatePage model page =
    { model | page = page }


updateUid : Model -> String -> Model
updateUid model uid =
    { model | uid = uid }


updateNotebookHistory : Model -> Maybe NotebookHistory.Model -> Model
updateNotebookHistory model notebookHistory =
    { model | notebookHistory = notebookHistory }
