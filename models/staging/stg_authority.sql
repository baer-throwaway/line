with source as (
  select * from {{ ref('raw_authority') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed