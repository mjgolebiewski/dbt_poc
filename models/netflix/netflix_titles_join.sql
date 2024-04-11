{{ config(materialized='table',
    file_format='parquet') }}

with netflix_with_ratings as (
    select
        n.*,
        r.subgenre as subgenre
    from
        {{ ref('netflix_titles') }} as n
    left join
        {{ ref('subgenres') }} as r
    on
        n.type = r.genre
)

select * from netflix_with_ratings