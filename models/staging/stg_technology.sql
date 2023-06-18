with source as (
  select * from {{ ref('raw_technology') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed