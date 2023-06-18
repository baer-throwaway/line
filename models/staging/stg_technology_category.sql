with source as (
  select * from {{ ref('raw_technology_category') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed