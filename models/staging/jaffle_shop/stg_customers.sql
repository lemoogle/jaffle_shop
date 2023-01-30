
with source as (

    select * from {{ source('jaffle_shop', 'CUSTOMERS') }}

),

renamed as (

    select
        id as customer_id,
        name as customer_name, 
        value as customer_data

    from source

)

select * from renamed
