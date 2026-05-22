WITH country_details_africa AS (
    SELECT
        *,
        country_common_name || country_continent_name || country_currency_name AS pk
    FROM {{ ref('country_details_transform') }}
    WHERE UPPER(COUNTRY_CONTINENT_NAME) = 'AFRICA'
)

SELECT *
FROM country_details_africa
