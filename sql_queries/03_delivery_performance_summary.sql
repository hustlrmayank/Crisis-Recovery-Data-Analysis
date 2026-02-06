select
	case
	 when fo.order_timestamp < '2025-06-01' then 'pre_crisis'
	 when fo.order_timestamp between '2025-06-01' and '2025-06-30' then 'crisis'
	 else 'recovery'
	end as company_phase,
    d.city,
    fo.restaurant_id,
    d.delivery_partner_id,
    d.partner_name,
    avg(fd.actual_delivery_time_mins) as avg_actual_time,
    avg(fd.expected_delivery_time_mins) as avg_expected_time,
    count(fo.order_id) as total_orders,
	sum(
        case 
          when fo.is_cancelled = 'Y' then 1 else 0
		 end
      ) as cancelled_orders
      
      from fact_orders fo 
        join fact_delivery_performance fd 
         on fo.order_id = fd.order_id
       join dim_delivery_partner_ d
         on d.delivery_partner_id = fo.delivery_partner_id 
	  
      group by
       company_phase,
	   d.delivery_partner_id,
     fo.restaurant_id,
       d.city,
       d.partner_name
	 
     order by
        company_phase,
        d.city;