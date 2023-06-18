with source as (
  select * from {{ ref('raw_subscription_memo') }}
),

renamed as (
  select
      *
  from source
)

select * from renamed