with source as (
  select * from {{ ref('raw_energy_category') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed