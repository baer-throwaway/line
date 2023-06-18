with source as (
  select * from {{ ref('raw_parameter_set') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed