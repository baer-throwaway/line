with source as (
  select * from {{ ref('raw_utility') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed