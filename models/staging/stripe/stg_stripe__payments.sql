SELECT
*
FROM {{ source('stripe', 'payment') }}