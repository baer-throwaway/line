with source as (
  select * from {{ ref('raw_program_detail') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed