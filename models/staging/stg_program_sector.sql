with source as (
  select * from {{ ref('raw_program_sector') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed