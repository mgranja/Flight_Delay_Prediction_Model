create table flights (
record_id INTEGER,
carrier_code TEXT, 
flight_date DATE,
flight_number INTEGER, 
tail_number TEXT,
destination_airport TEXT, 
departure_time_scheduled TIME,
departure_time_actual TIME, 
elapsed_time_actual INTEGER, 
departure_delay INTEGER,
delay_carrier INTEGER, 
delay_weather INTEGER, 
delay_nas INTEGER, 
delay_security INTEGER,
delay_late_aircraft_arrival INTEGER,
is_delay INTEGER
);