with source as (
  select * from {{ ref('raw_program_city') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed