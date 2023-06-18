with source as (
  select * from {{ ref('raw_city') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed