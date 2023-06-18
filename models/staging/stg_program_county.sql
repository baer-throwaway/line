with source as (
  select * from {{ ref('raw_program_county') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed