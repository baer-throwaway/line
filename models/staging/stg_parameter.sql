with source as (
  select * from {{ ref('raw_parameter') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed