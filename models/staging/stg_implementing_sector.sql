with source as (
  select * from {{ ref('raw_implementing_sector') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed