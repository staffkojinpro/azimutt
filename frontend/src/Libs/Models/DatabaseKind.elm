module Libs.Models.DatabaseKind exposing (DatabaseKind(..), fromUrl)

import Libs.Models.DatabaseUrl exposing (DatabaseUrl)



-- similar to libs/database-types/src/url.ts


type DatabaseKind
    = Couchbase
    | MongoDB
    | MySQL
    | PostgreSQL
    | SQLServer
    | Other


fromUrl : DatabaseUrl -> DatabaseKind
fromUrl url =
    if url |> String.contains "couchbase" then
        Couchbase

    else if url |> String.contains "mongodb" then
        MongoDB

    else if url |> String.contains "mysql" then
        MySQL

    else if url |> String.contains "postgre" then
        PostgreSQL

    else if (url |> String.contains "sqlserver") || (url |> String.contains "Server=") then
        SQLServer

    else
        Other
