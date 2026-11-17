WITH BIKE AS (
    select 
    ride_id,
    date(to_timestamp(started_at)) as trip_date,
    start_statio_id as start_station_id,
    end_station_id,
    member_csual as member_casual,
    timestampdiff(second,to_timestamp(started_at), to_timestamp(ended_at)) as trip_duration_seconds
    FROM 
    {{ ref('stg_bike') }}
    where RIDE_ID != '"bikeid"' and RIDE_ID != 'bikeid'
)

SELECT * FROM BIKE