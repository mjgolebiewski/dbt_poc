with country_release_stats as (
    select
        country,
        release_year,
        count(*) as total_count,
        avg(duration) as avg_duration
    from
        {{ ref('netflix_titles') }}
    group by
        country,
        release_year
    order by
        total_count desc
)

select * from country_release_stats