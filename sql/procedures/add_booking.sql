-- Task 1
-- In this first task you need to create a new procedure called AddBooking to add a new table booking record.
-- The procedure should include four input parameters in the form of the following bookings parameters:
-- booking id,
-- booking date,
-- table number,
-- and customer id.

DELIMITER //
CREATE PROCEDURE AddBooking(IN booking_id INT, IN booking_date DATETIME, IN table_number INT, IN customer_id INT)
BEGIN
	INSERT INTO Bookings(BookingID, BookingDate, TableNumber, CustomerID)
    VALUES(booking_id, booking_date, table_number, customer_id);
    -- SELECT "New booking added" AS "Confirmation";
END //
DELIMITER ;

CALL AddBooking(5, "2022-12-30", 1, 4);
