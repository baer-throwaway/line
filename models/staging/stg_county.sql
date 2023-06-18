with source as (
  select * from {{ ref('raw_county') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed