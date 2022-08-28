#### J.5.1. Schema bookings

The bookings schema contains all objects of the demo database. When you connect to the database, search_path configuration parameter is automatically set to bookings, public, so you do not need to specify the schema name explicitly. However, for the bookings.now function, you always have to specify the schema to distinguish this function from the standard now function.

**J.5.2.** Translations By default, values of several translatable fields are shown in Russian. These are airport_name and city of the airports view, as well as model of the aircrafts view. You can choose to display these fields in another language (although only the English translation is provided in the demo database). To switch to English, set the bookings.lang parameter to en. It may be convenient to choose the language at the database level:
```bash
ALTER DATABASE demo SET bookings.lang = en;
```
You have to reconnect to the database for this command to take effect. For other methods of settings configuration parameters, see Section 18.1. In the examples below, the English language is selected for translatable fields.
J.5.3. Sample Queries To better understand the contents of the demo database, let's take a look at the results of several simple queries. The results displayed below were received on a small database version (demo-small) of August 15, 2017. If the same queries return different data on your system, check your demo database version (using the bookings.now function). Some minor deviations may be caused by the difference between your local time and Moscow time, or your locale settings. All flights are operated by several types of aircraft:

```bash
SELECT * FROM aircrafts;

aircraft_code | model | range ---------------+---------------------+------- 773 | Boeing 777-300 | 11100 763 | Boeing 767-300 | 7900 SU9 | Sukhoi SuperJet-100 | 3000 320 | Airbus A320-200 | 5700 321 | Airbus A321-200 | 5600 319 | Airbus A319-100 | 6700 733 | Boeing 737-300 | 4200 CN1 | Cessna 208 Caravan | 1200 CR2 | Bombardier CRJ-200 | 2700 (9 rows)
```
For each aircraft type, a separate list of seats is supported. For example, in a small Cessna 208 Caravan, one can select the following seats:
```bash
SELECT a.aircraft_code, a.model, s.seat_no, s.fare_conditions FROM aircrafts a JOIN seats s ON a.aircraft_code = s.aircraft_code WHERE a.model = 'Cessna 208 Caravan' ORDER BY s.seat_no;
```
```bash
aircraft_code | model | seat_no | fare_conditions ---------------+--------------------+---------+----------------- CN1 | Cessna 208 Caravan | 1A | Economy CN1 | Cessna 208 Caravan | 1B | Economy CN1 | Cessna 208 Caravan | 2A | Economy CN1 | Cessna 208 Caravan | 2B | Economy CN1 | Cessna 208 Caravan | 3A | Economy CN1 | Cessna 208 Caravan | 3B | Economy CN1 | Cessna 208 Caravan | 4A | Economy CN1 | Cessna 208 Caravan | 4B | Economy CN1 | Cessna 208 Caravan | 5A | Economy CN1 | Cessna 208 Caravan | 5B | Economy CN1 | Cessna 208 Caravan | 6A | Economy CN1 | Cessna 208 Caravan | 6B | Economy (12 rows)
```
Bigger aircraft have more seats of various travel classes:

SELECT s2.aircraft_code, string_agg (s2.fare_conditions || '(' || s2.num::text || ')', ', ') as fare_conditions FROM ( SELECT s.aircraft_code, s.fare_conditions, count(*) as num FROM seats s GROUP BY s.aircraft_code, s.fare_conditions ORDER BY s.aircraft_code, s.fare_conditions ) s2 GROUP BY s2.aircraft_code ORDER BY s2.aircraft_code;

aircraft_code | fare_conditions ---------------+----------------------------------------- 319 | Business(20), Economy(96) 320 | Business(20), Economy(120) 321 | Business(28), Economy(142) 733 | Business(12), Economy(118) 763 | Business(30), Economy(192) 773 | Business(30), Comfort(48), Economy(324) CN1 | Economy(12) CR2 | Economy(50) SU9 | Business(12), Economy(85) (9 rows)

The demo database contains the list of airports of almost all major Russian cities. Most cities have only one airport. The exceptions are:

SELECT a.airport_code as code, a.airport_name, a.city, a.coordinates FROM airports a WHERE a.city IN ( SELECT aa.city FROM airports aa GROUP BY aa.city HAVING COUNT(*) > 1 ) ORDER BY a.city, a.airport_code;

code | airport_name | city | coordinates ------+------------------------------------+-----------+------------------------- DME | Domodedovo | Moscow | (37.9062995910645,55.4087982177734) | International Airport | | SVO | Sheremetyevo | Moscow | (37.4146,55.972599) | International Airport | | VKO | Vnukovo | Moscow | (37.2615013123,55.5914993286) | International Airport | | ULV | Ulyanovsk | Ulyanovsk | (48.2266998291,54.2682991028) | Baratayevka Airport | | ULY | Ulyanovsk East Airport | Ulyanovsk | (48.8027000427246,54.4010009765625) (5 rows)

To learn about your flying options from one point to another, it is convenient to use the routes materialized view that aggregates information on all flights. For example, here are the destinations where you can get from Volgograd on specific days of the week, with flight duration:

SELECT r.arrival_city as city, r.arrival_airport as code, r.arrival_airport_name as airport_name, r.days_of_week, r.duration FROM routes r WHERE r.departure_city = 'Volgograd';

city | code | airport_name | days_of_week | duration -------------+------+------------------------------------+-----------------+---------- Moscow | SVO | Sheremetyevo International Airport | {1,2,3,4,5,6,7} | 01:15:00 Chelyabinsk | CEK | Chelyabinsk Balandino Airport | {1,2,3,4,5,6,7} | 01:50:00 Rostov | ROV | Rostov-on-Don Airport | {1,2,3,4,5,6,7} | 00:30:00 Moscow | VKO | Vnukovo International Airport | {1,2,3,4,5,6,7} | 01:10:00 Cheboksary | CSY | Cheboksary Airport | {1,2,3,4,5,6,7} | 02:45:00 Tomsk | TOF | Bogashevo Airport | {1} | 03:50:00 (6 rows)

The database was formed at the moment returned by the bookings.now() function:

SELECT bookings.now() as now;

now ------------------------ 2017-08-15 18:00:00+03

In relation to this moment, all flights are classified as past and future flights:

SELECT status, count(*) as count, min(scheduled_departure) as min_scheduled_departure, max(scheduled_departure) as max_scheduled_departure FROM flights GROUP BY status ORDER BY min_scheduled_departure;

status | count | min_scheduled_departure | max_scheduled_departure -----------+-------+-------------------------+------------------------- Arrived | 16707 | 2017-07-16 01:50:00+03 | 2017-08-15 17:25:00+03 Cancelled | 414 | 2017-07-19 11:35:00+03 | 2017-09-14 20:55:00+03 Departed | 58 | 2017-08-15 09:55:00+03 | 2017-08-15 17:50:00+03 Delayed | 41 | 2017-08-15 15:15:00+03 | 2017-08-16 17:25:00+03 On Time | 518 | 2017-08-15 17:55:00+03 | 2017-08-16 18:00:00+03 Scheduled | 15383 | 2017-08-16 18:05:00+03 | 2017-09-14 20:40:00+03 (6 rows)

Let's find the next flight from Yekaterinburg to Moscow. The flight table is not very convenient for such queries, as it does not include information on the cities of departure and arrival. That is why we will use the flights_v view:

\x SELECT f.* FROM flights_v f WHERE f.departure_city = 'Yekaterinburg' AND f.arrival_city = 'Moscow' AND f.scheduled_departure > bookings.now() ORDER BY f.scheduled_departure LIMIT 1;

-[ RECORD 1 ]-------------+----------------------------------- flight_id | 10927 flight_no | PG0226 scheduled_departure | 2017-08-16 08:10:00+03 scheduled_departure_local | 2017-08-16 10:10:00 scheduled_arrival | 2017-08-16 09:55:00+03 scheduled_arrival_local | 2017-08-16 09:55:00 scheduled_duration | 01:45:00 departure_airport | SVX departure_airport_name | Koltsovo Airport departure_city | Yekaterinburg arrival_airport | SVO arrival_airport_name | Sheremetyevo International Airport arrival_city | Moscow status | On Time aircraft_code | 773 actual_departure | actual_departure_local | actual_arrival | actual_arrival_local | actual_duration |

Note that the flights_v view shows both Moscow time and local time at the airports of departure and arrival.

J.5.4. Bookings Each booking can include several tickets, one for each passenger. The ticket, in its turn, can include several flight segments. The complete information about the booking is stored in three tables: bookings, tickets, and ticket_flights. Let's find several most expensive bookings:

SELECT * FROM bookings ORDER BY total_amount desc LIMIT 10;

book_ref | book_date | total_amount ----------+------------------------+-------------- 3B54BB | 2017-07-05 17:08:00+03 | 1204500.00 3AC131 | 2017-07-31 01:06:00+03 | 1087100.00 65A6EA | 2017-07-03 06:28:00+03 | 1065600.00 D7E9AA | 2017-08-08 05:29:00+03 | 1062800.00 EF479E | 2017-08-02 15:58:00+03 | 1035100.00 521C53 | 2017-07-08 09:25:00+03 | 985500.00 514CA6 | 2017-07-27 05:07:00+03 | 955000.00 D70BD9 | 2017-07-05 12:47:00+03 | 947500.00 EC7EDA | 2017-07-02 16:13:00+03 | 946800.00 8E4370 | 2017-07-28 02:04:00+03 | 945700.00 (10 rows)

Let's take a look at the tickets included into the booking with code 521C53:

SELECT ticket_no, passenger_id, passenger_name FROM tickets WHERE book_ref = '521C53';

ticket_no | passenger_id | passenger_name ---------------+--------------+-------------------- 0005432661914 | 8234 547529 | IVAN IVANOV 0005432661915 | 2034 201228 | ANTONINA KUZNECOVA (2 rows)

If we would like to know, which flight segments are included into Antonina Kuznecova's ticket, we can use the following query:

SELECT to_char(f.scheduled_departure, 'DD.MM.YYYY') AS when, f.departure_city || ' (' || f.departure_airport || ')' AS departure, f.arrival_city || ' (' || f.arrival_airport || ')' AS arrival, tf.fare_conditions AS class, tf.amount FROM ticket_flights tf JOIN flights_v f ON tf.flight_id = f.flight_id WHERE tf.ticket_no = '0005432661915' ORDER BY f.scheduled_departure;

when | departure | arrival | class | amount ------------+----------------------+----------------------+----------+----------- 29.07.2017 | Moscow (SVO) | Anadyr (DYR) | Business | 185300.00 02.08.2017 | Anadyr (DYR) | Khabarovsk (KHV) | Business | 92200.00 03.08.2017 | Khabarovsk (KHV) | Blagoveshchensk (BQS)| Business | 18000.00 08.08.2017 | Blagoveshchensk (BQS)| Khabarovsk (KHV) | Business | 18000.00 12.08.2017 | Khabarovsk (KHV) | Anadyr (DYR) | Economy | 30700.00 17.08.2017 | Anadyr (DYR) | Moscow (SVO) | Business | 185300.00 (6 rows)

As we can see, high booking cost is explained by multiple long-haul flights in business class. Some of the flight segments in this ticket have earlier dates than the bookings.now() return value: it means that these flights had already happened. The last flight had not happened yet at the time of the database creation. After the check-in, a boarding pass with the allocated seat number is issued. We can check the exact seats occupied by Antonina (note the outer left join with table boarding_passes):

SELECT to_char(f.scheduled_departure, 'DD.MM.YYYY') AS when, f.departure_city || ' (' || f.departure_airport || ')' AS departure, f.arrival_city || ' (' || f.arrival_airport || ')' AS arrival, f.status, bp.seat_no FROM ticket_flights tf JOIN flights_v f ON tf.flight_id = f.flight_id LEFT JOIN boarding_passes bp ON tf.flight_id = bp.flight_id AND tf.ticket_no = bp.ticket_no WHERE tf.ticket_no = '0005432661915' ORDER BY f.scheduled_departure;

when | departure | arrival | status | seat_no ------------+----------------------+----------------------+-----------+--------- 29.07.2017 | Moscow (SVO) | Anadyr (DYR) | Arrived | 5C 02.08.2017 | Anadyr (DYR) | Khabarovsk (KHV) | Arrived | 1D 03.08.2017 | Khabarovsk (KHV) | Blagoveshchensk (BQS)| Arrived | 2C 08.08.2017 | Blagoveshchensk (BQS)| Khabarovsk (KHV) | Arrived | 2D 12.08.2017 | Khabarovsk (KHV) | Anadyr (DYR) | Arrived | 20B 17.08.2017 | Anadyr (DYR) | Moscow (SVO) | Scheduled | (6 rows)

J.5.5. New Booking Let's try to send Aleksandr Radishchev from Saint Petersburg to Moscow — the route that made him famous. Naturally, he will travel for free and in business class. We have already found a flight for tomorrow, and a return flight a week later.

BEGIN;

INSERT INTO bookings (book_ref, book_date, total_amount) VALUES ('_QWE12', bookings.now(), 0);

INSERT INTO tickets (ticket_no, book_ref, passenger_id, passenger_name) VALUES ('_000000000001', '_QWE12', '1749 051790', 'ALEKSANDR RADISHCHEV');

INSERT INTO ticket_flights (ticket_no, flight_id, fare_conditions, amount) VALUES ('_000000000001', 8525, 'Business', 0), ('_000000000001', 4967, 'Business', 0);

COMMIT;

To avoid conflicts with the range of values present in the database, identifiers are started with an underscore. We will check in Aleksandr for tomorrow's flight right away:

INSERT INTO boarding_passes (ticket_no, flight_id, boarding_no, seat_no) VALUES ('_000000000001', 8525, 1, '1A');

Now let's check the booking information:

SELECT b.book_ref, t.ticket_no, t.passenger_id, t.passenger_name, tf.fare_conditions, tf.amount, f.scheduled_departure_local, f.scheduled_arrival_local, f.departure_city || ' (' || f.departure_airport || ')' AS departure, f.arrival_city || ' (' || f.arrival_airport || ')' AS arrival, f.status, bp.seat_no FROM bookings b JOIN tickets t ON b.book_ref = t.book_ref JOIN ticket_flights tf ON tf.ticket_no = t.ticket_no JOIN flights_v f ON tf.flight_id = f.flight_id LEFT JOIN boarding_passes bp ON tf.flight_id = bp.flight_id AND tf.ticket_no = bp.ticket_no WHERE b.book_ref = '_QWE12' ORDER BY t.ticket_no, f.scheduled_departure;

-[ RECORD 1 ]-------------+--------------------- book_ref | _QWE12 ticket_no | _000000000001 passenger_id | 1749 051790 passenger_name | ALEKSANDR RADISHCHEV fare_conditions | Business amount | 0.00 scheduled_departure_local | 2017-08-16 09:45:00 scheduled_arrival_local | 2017-08-16 10:35:00 departure | St. Petersburg (LED) arrival | Moscow (SVO) status | On Time seat_no | 1A -[ RECORD 2 ]-------------+--------------------- book_ref | _QWE12 ticket_no | _000000000001 passenger_id | 1749 051790 passenger_name | ALEKSANDR RADISHCHEV fare_conditions | Business amount | 0.00 scheduled_departure_local | 2017-08-23 10:20:00 scheduled_arrival_local | 2017-08-23 11:10:00 departure | Moscow (SVO) arrival | St. Petersburg (LED) status | Scheduled seat_no |

We hope that these simple examples helped you get an idea of this demo database.