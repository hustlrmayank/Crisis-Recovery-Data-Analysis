select
    date(order_timestamp) as order_date,
	  case
         when order_timestamp < '2025-06-01' then 'pre_crisis'
         when order_timestamp between '2025-06-01' and '2025-06-30' then 'crisis'
         else 'recovery'
	  end as company_phase,
      
      count(order_id) as daily_orders,
      sum(total_amount) as daily_revenue,
      sum(
        case 
          when is_cancelled = 'Y' then 1 else 0
		 end
      ) as daily_cancelled
      
 from
	 fact_orders
      
group by
	order_date,
	company_phase
         
order by
	order_date;