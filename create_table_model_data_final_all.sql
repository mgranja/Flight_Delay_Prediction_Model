-- All Carriers
create table model_data_final_all as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all;


-- Alaska Airlines

create table model_data_final_AlaskaAirlines as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'ALASKA AIRLINES';

-- American Airlines

create table model_data_final_americanairlines as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'American Airlines';

-- American Eagle

create table model_data_final_americaneagle as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'American Eagle';

-- Delta

create table model_data_final_delta as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'Delta';

-- Express Jet

create table model_data_final_expressjet as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'Express Jet';

-- Frontier

create table model_data_final_frontier as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'Frontier';

-- JetBlue

create table model_data_final_jetblue as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'JetBlue';

-- Spirit Airlines

create table model_data_final_spiritairlines as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'Spirit Airlines';

-- United

create table model_data_final_unitedairlines as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'United Airlines';

-- Virgin 

create table model_data_final_virginamerica as

select month, day_of_month, day_of_week, origin, destination, floor(departure_time / 100) as departure_time, is_delay as delayed

from model_data_all

where carrier_code = 'Virgin America';
