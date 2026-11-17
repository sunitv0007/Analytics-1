WITH BIKE AS (
    select 
    distinct
    start_statio_id as station_id,
    start_station_name as station_name,
    start_lat,
    start_lng
    FROM 
   {{ ref('stg_bike') }}
    WHERE RIDE_ID != '"bike_id"'
)

SELECT * FROM BIKE