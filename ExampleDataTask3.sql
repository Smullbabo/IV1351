
INSERT INTO instructor (personNumber, name, phone, email, canTeachEnsemble, timeSlot, street, zip, city)
VALUES
('P1001', 'John Smith', '555-1234', 'john.smith@example.com', TRUE, '09-10', '123 Elm St', '10001', 'New York'),
('P1002', 'Jane Doe', '555-5678', 'jane.doe@example.com', FALSE, '10-11', '456 Oak St', '10002', 'New York'),
('P1003', 'Robert Brown', '555-8765', 'robert.brown@example.com', TRUE, '11-12', '789 Pine St', '10003', 'New York'),
('P1004', 'Emily White', '555-4321', 'emily.white@example.com', FALSE, '12-13', '321 Cedar St', '10004', 'New York'),
('P1005', 'Michael Green', '555-2468', 'michael.green@example.com', TRUE, '13-14', '654 Maple St', '10005', 'New York');


INSERT INTO student (personNumber, name, phone, email, contactPersonPhone, contactPersonEmail, street, zip, city)
VALUES
('S1001', 'Alice Johnson', '555-1111', 'alice.johnson@example.com', '555-0001', 'alice.contact@example.com', '123 Maple St', '20001', 'New York'),
('S1002', 'Bob Martin', '555-2222', 'bob.martin@example.com', '555-0002', 'bob.contact@example.com', '456 Oak St', '20002', 'New York'),
('S1003', 'Charlie Davis', '555-3333', 'charlie.davis@example.com', '555-0003', 'charlie.contact@example.com', '789 Pine St', '20003', 'New York'),
('S1004', 'David Wilson', '555-4444', 'david.wilson@example.com', '555-0004', 'david.contact@example.com', '321 Birch St', '20004', 'New York'),
('S1005', 'Eva White', '555-5555', 'eva.white@example.com', '555-0005', 'eva.contact@example.com', '654 Cedar St', '20005', 'New York'),
('S1006', 'Frank Clark', '555-6666', 'frank.clark@example.com', '555-0006', 'frank.contact@example.com', '987 Elm St', '20006', 'New York'),
('S1007', 'Grace Hall', '555-7777', 'grace.hall@example.com', '555-0007', 'grace.contact@example.com', '135 Maple St', '20007', 'New York'),
('S1008', 'Hannah Lewis', '555-8888', 'hannah.lewis@example.com', '555-0008', 'hannah.contact@example.com', '246 Pine St', '20008', 'New York'),
('S1009', 'Ian Walker', '555-9999', 'ian.walker@example.com', '555-0009', 'ian.contact@example.com', '369 Birch St', '20009', 'New York'),
('S1010', 'Jack Young', '555-0000', 'jack.young@example.com', '555-0010', 'jack.contact@example.com', '741 Cedar St', '20010', 'New York'),
('S1011', 'Katherine Moore', '555-1112', 'katherine.moore@example.com', '555-0011', 'katherine.contact@example.com', '123 Spruce St', '20011', 'New York'),
('S1012', 'Liam Carter', '555-2223', 'liam.carter@example.com', '555-0012', 'liam.contact@example.com', '456 Aspen St', '20012', 'New York'),
('S1013', 'Mia Evans', '555-3334', 'mia.evans@example.com', '555-0013', 'mia.contact@example.com', '789 Willow St', '20013', 'New York'),
('S1014', 'Noah Brooks', '555-4445', 'noah.brooks@example.com', '555-0014', 'noah.contact@example.com', '321 Cherry St', '20014', 'New York'),
('S1015', 'Olivia Foster', '555-5556', 'olivia.foster@example.com', '555-0015', 'olivia.contact@example.com', '654 Maplewood St', '20015', 'New York');



INSERT INTO price_scheme (skillLevel, typeOfLesson, price)
VALUES
('Beginner', 'Group', 50),
('Beginner', 'Individual', 80),
('Beginner', 'Ensemble', 60),
('Intermediate', 'Group', 75),
('Intermediate', 'Individual', 120),
('Intermediate', 'Ensemble', 90),
('Advanced', 'Group', 100),
('Advanced', 'Individual', 150),
('Advanced', 'Ensemble', 120);




INSERT INTO lesson (time, minStudents, maxStudent, numberOfStudents, price_id, specificInstrument, genre, skillLevel, instructor_id)
VALUES
('2024-11-22 09:00:00', 2, 3, 2, 1, 'Piano', 'Classical', 'Beginner', 2),
('2024-11-22 10:00:00', 2, 3, 3, 4, 'Violin', 'Jazz', 'Intermediate', 1),
('2024-12-22 11:00:00', 2, 3, 3, 7, 'Guitar', 'Rock', 'Advanced', 4),


('2024-10-22 12:00:00', 1, 1, 1, 2, 'Flute', 'Classical', 'Beginner', 3),
('2024-11-22 13:00:00', 1, 1, 1, 5, 'Saxophone', 'Jazz', 'Intermediate', 5),
('2024-12-22 14:00:00', 1, 1, 1, 8, 'Trumpet', 'Pop', 'Advanced', 5),


('2024-11-22 15:00:00', 8, 8, 8, 3, 'Full Orchestra', 'Classical', 'Beginner', 1),
('2024-11-22 16:00:00', 8, 8, 8, 6, 'Full Band', 'Jazz', 'Intermediate', 3),
('2024-10-22 17:00:00', 8, 8, 8, 9, 'Full Ensemble', 'Rock', 'Advanced', 5);

INSERT INTO lesson (time, minStudents, maxStudent, numberOfStudents, price_id, specificInstrument, genre, skillLevel, instructor_id)
VALUES
('2024-12-09 15:00:00', 8, 8, 8, 3, 'Full Orchestra', 'Classical', 'Beginner', 1),
('2024-12-10 15:00:00', 8, 8, 6, 4, 'Full Orchestra', 'Classical', 'Intermediate', 2),
('2024-12-10 11:00:00', 8, 8, 7, 5, 'Full Orchestra', 'Classical', 'Advanced', 3),
('2024-12-12 15:00:00', 8, 8, 5, 6, 'Full Orchestra', 'Classical', 'Beginner', 4),
('2024-12-13 13:00:00', 8, 8, 3, 7, 'Full Orchestra', 'Classical', 'Intermediate', 5);





INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10);


INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(9, 11),
(10, 11),
(11, 11),
(12, 11),
(13, 11),
(14, 11);


INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(5, 12),
(6, 12),
(7, 12);

INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(8, 13),
(9, 13),
(10, 13),
(11, 13),
(12, 13);


INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(13, 14),
(14, 14),
(1, 14);



INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(1, 1),
(2, 1);

INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(3, 2),
(4, 2),
(5, 2);

INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(6, 3),
(7, 3),
(8, 3);

INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(9, 4);


INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(10, 5);


INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(1, 6);


INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7);


INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8);


INSERT INTO lesson_student (student_id, lesson_id)
VALUES 
(9, 9),
(10, 9),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9);


INSERT INTO instrument (brand, typeOfInstrument, isAvalible, price, timeOfLease, student_id)
VALUES
('Yamaha', 'Piano', TRUE, 150, NULL, NULL),
('Stradivarius', 'Violin', FALSE, 200, '2024-11-21 11:00:00', 2),  -- For student S1002
('Fender', 'Guitar', FALSE, 100, '2024-11-21 12:00:00', 3),  -- For student S1003
('Selmer', 'Saxophone', TRUE, 120, NULL, NULL),
('Bach', 'Trumpet', TRUE, 130, NULL, NULL);



INSERT INTO Instruments (type)
VALUES
('Piano'),
('Violin'),
('Guitar'),
('Drums'),
('Flute'),
('Saxophone'),
('Trumpet'),
('Clarinet'),
('Cello'),
('Bass Guitar');


INSERT INTO instructor_instruments (instruments_id, instructor_id)
VALUES
(1, 1),  
(2, 1),  
(10, 1);


INSERT INTO instructor_instruments (instruments_id, instructor_id)
VALUES
(2, 2),  
(3, 2),  
(6, 2); 

INSERT INTO instructor_instruments (instruments_id, instructor_id)
VALUES
(5, 3),
(6, 3),
(10, 3);


INSERT INTO instructor_instruments (instruments_id, instructor_id)
VALUES
(3, 4),
(4, 4),
(9, 4);


INSERT INTO instructor_instruments (instruments_id, instructor_id)
VALUES
(6, 5),
(7, 5),
(9, 5);


INSERT INTO siblings (student_id1, student_id2)
VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 2);

INSERT INTO siblings (student_id1, student_id2)
VALUES
(5, 6),
(5, 7),
(6, 5),
(6, 7),
(7, 5),
(7, 6);


INSERT INTO siblings (student_id1, student_id2)
VALUES
(8, 9),
(9, 8),

(10, 11),
(11, 10);