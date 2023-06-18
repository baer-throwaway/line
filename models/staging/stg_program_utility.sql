with source as (
  select * from {{ ref('raw_program_utility') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed