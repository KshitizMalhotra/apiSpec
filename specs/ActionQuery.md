Action
1. Add seat to reservation
   - Method
     - POST
   - URL
     - /reservations/{reservation_id}/passenger/{user_id}/seats
   - Inputs: 
     - Reservation_id
     - Flight_id
     - User_Id
     - Seat number
   - Response:
     - Seat Id
     - Success/Error 
   - Expected Results
     - Selected seat number is added to reservation successfully

Query
1. View available flight seats 
   - Method
     - GET
   - URL
     - /flights/{flight_id}/flight_seats
   - Inputs: 
     - Flight_id
   - Response:
     - Flight Seating Info JSON object, consisting of:
       - An Array of Seat Info objects for reserved seats
       - An Array of Seat Info objects for unreserved seats
	    Each Individual Seat Info object contains:
          - Seat_id
          - Aisle_code
          - Row_number
          - Seat_number

   - Expected Results
     - Returns info regarding seat position and availability. 
