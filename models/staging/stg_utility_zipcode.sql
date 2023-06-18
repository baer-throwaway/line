with source as (
  select * from {{ ref('raw_utility_zipcode') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed