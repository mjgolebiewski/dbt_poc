{{ config(materialized='table',
    file_format='parquet') }}
    
with country_release_summary as (
    select
        country,
        release_year,
        total_count,
        avg_duration,
        case
            when total_count >= 100 then 'High'
            when total_count >= 50 then 'Medium'
            else 'Low'
        end as popularity
    from
        {{ ref('country_release_stats') }}
)

select * from country_release_summary