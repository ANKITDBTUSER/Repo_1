SELECT * FROM {{ ref('dim_listings_cleaned') }} l
INNER JOIN {{ ref('fact_reviews') }} r
USING (listing_id)
WHERE l.created_at >= r.review_date