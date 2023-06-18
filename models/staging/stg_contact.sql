with source as (
  select * from {{ ref('raw_contact') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed