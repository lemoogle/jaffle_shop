
with source as (

    select * from {{ source('jaffle_shop', 'ORDER_ITEMS') }}

),

renamed as (

    select
        id as order_item_id,
        order_id,
        sku as product_id, 
        value as order_item_data

    from source

)

select * from renamed
