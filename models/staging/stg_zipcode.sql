with source as (
  select * from {{ ref('raw_zipcode') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed