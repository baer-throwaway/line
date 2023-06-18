with source as (
  select * from {{ ref('raw_program_category') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed