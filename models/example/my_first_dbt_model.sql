{{ config(materialized='table') }}

SELECT
    id,
    name,
    amount,
    status,
    created_at
FROM {{ source('dwh', 'test_orders') }}
WHERE status != 'deleted'