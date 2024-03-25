--models/src/src_reviews.sql
WITH raw_reviews AS (
    SELECT
        *
    FROM
      {{source('airbnb','reviews')}}
)
SELECT
    listing_id,
    DATE AS review_date, -- new alias name
    reviewer_name,
    comments AS review_text, -- new alias name
    sentiment AS review_sentiment -- new alias name
FROM
    raw_reviews
