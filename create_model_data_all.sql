create table model_data_all as
select carrier_code, date_part('month', flight_date) as month, date_part('day', flight_date) as day_of_month, 
	date_part('isodow', flight_date) as day_of_week, 'ORD' as origin, destination_airport as destination, 
	to_char(departure_time_scheduled, 'HH24MI') as departure_time,
	case 
		when departure_delay >= 15 then 1
		else 0 end as is_delay
		
from flights

alter table model_data_all alter column departure_time type integer using departure_time::integer
