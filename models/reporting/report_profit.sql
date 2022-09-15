select 
    stg.productid,
    stg.productname,
    stg.category,
    stg.subcategory,
    sum(stg.orderprofit) as profit
from {{ ref('stg_orders') }} as stg
group by 
stg.productid,
stg.productname,
stg.category,
stg.subcategory