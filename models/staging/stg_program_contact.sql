with source as (
  select * from {{ ref('raw_program_contact') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed