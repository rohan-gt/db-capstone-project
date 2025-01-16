-- Task 2
-- For your second task, Little Lemon need you to create a new procedure called UpdateBooking
-- that they can use to update existing bookings in the booking table.

-- The procedure should have two input parameters in the form of booking id and booking date.
-- You must also include an UPDATE statement inside the procedure.

DELIMITER //

CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATETIME)
BEGIN
UPDATE Bookings SET BookingDate = booking_date
WHERE BookingID = booking_id;
-- SELECT CONCAT("Booking ", booking_id, " updated") AS "Confirmation";
END //
DELIMITER ;

CALL UpdateBooking(5, "2022-12-17")
