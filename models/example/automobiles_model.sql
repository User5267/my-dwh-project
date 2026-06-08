{{ config(materialized='table') }}

SELECT *
FROM {{ source('dwh', 'automobiles') }}