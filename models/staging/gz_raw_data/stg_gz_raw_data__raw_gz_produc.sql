with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_produc') }}

),

renamed as (

    select
        products_id,
        --purchse_price as purchase_price
        CAST(purchse_price AS FLOAT64) AS purchase_price_float

    from source

)

select * from renamed
