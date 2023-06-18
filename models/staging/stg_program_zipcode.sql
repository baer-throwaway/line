with source as (
  select * from {{ ref('raw_program_zipcode') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed