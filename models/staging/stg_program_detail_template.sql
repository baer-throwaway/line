with source as (
  select * from {{ ref('raw_program_detail_template') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed