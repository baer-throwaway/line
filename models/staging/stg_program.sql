with source as (
  select * from {{ ref('raw_program') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed