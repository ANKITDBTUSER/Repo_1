--models/src/src_hosts.sql
WITH raw_hosts AS (
    SELECT
        *
    FROM
       {{source('airbnb','hosts')}}
)
SELECT
    id AS host_id, -- new alias name
    NAME AS host_name, -- new alias name
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts
