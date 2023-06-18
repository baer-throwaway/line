with source as (
  select * from {{ ref('raw_state') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed