with source as (
  select * from {{ ref('raw_parameter_set_technology') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed