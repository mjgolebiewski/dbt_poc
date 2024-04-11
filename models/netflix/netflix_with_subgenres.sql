with netflix_with_subgenres as (
    select
        *
    from
        {{ ref('netflix_titles_join') }} 
    where
        subgenre is not null
)

select * from netflix_with_subgenres