select 
ordr.orderid,
ordr.orderdate,
ordr.shipdate,
ordr.shipmode,
ordr.ordersellingprice,
ordr.ordercostprice,
ordr.ordersellingprice - ordr.ordercostprice as orderprofit,
cust.customername,
cust.segment,
cust.country,
prod.category,
prod.productname,
prod.subcategory
from {{ ref('raw_orders') }} as ordr
left join {{ ref('raw_customer') }} as cust
on ordr.customerid = cust.customerid
left join {{ ref('raw_product') }} as prod
on ordr.productid = prod.productid