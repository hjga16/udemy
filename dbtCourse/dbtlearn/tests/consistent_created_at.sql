SELECT
   *
FROM
    {{ref('dim_listings_cleansed')}} A
LEFT JOIN 
    {{ref('fct_reviews')}} B
ON
    A.LISTING_ID = B.LISTING_ID 
WHERE
    A.CREATED_AT > B.REVIEW_DATE