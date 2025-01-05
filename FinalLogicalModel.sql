CREATE TABLE instructor (
    instructor_id INT GENERATED ALWAYS
    AS IDENTITY NOT NULL PRIMARY KEY,
    personNumber  VARCHAR(500) NOT NULL UNIQUE,
    name VARCHAR(500) NOT NULL,
    phone VARCHAR(500) NOT NULL,
    email VARCHAR(500),
    canTeachEnsemble BOOLEAN NOT NULL, 
    timeSlot CHAR(10) NOT NULL,
    street VARCHAR(500) NOT NULL,
    zip VARCHAR(500) NOT NULL,
    city VARCHAR(500) NOT NULL
);

CREATE TABLE Instruments (
    instruments_id INT GENERATED ALWAYS
    AS IDENTITY NOT NULL PRIMARY KEY,
    type VARCHAR(500)
);

CREATE TABLE price_scheme (
    price_id INT GENERATED ALWAYS
    AS IDENTITY NOT NULL PRIMARY KEY,
    skillLevel VARCHAR(500) NOT NULL,
    typeOfLesson VARCHAR(500) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE student (
    student_id INT GENERATED ALWAYS
    AS IDENTITY NOT NULL PRIMARY KEY,
    personNumber VARCHAR(500) NOT NULL UNIQUE,
    name VARCHAR(500) NOT NULL,
    phone VARCHAR(500) NOT NULL,
    email VARCHAR(500),
    contactPersonPhone VARCHAR(500),
    contactPersonEmail VARCHAR(500),
    street VARCHAR(500) NOT NULL,
    zip VARCHAR(500) NOT NULL,
    city VARCHAR(500) NOT NULL
);

CREATE TABLE instructor_instruments (
    instruments_id INT NOT NULL,
    instructor_id INT NOT NULL,

    PRIMARY KEY (instruments_id, instructor_id),

    FOREIGN KEY (instruments_id) REFERENCES Instruments (instruments_id) ON DELETE CASCADE,
    FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE CASCADE
);

CREATE TABLE instrument (
    instrument_id INT GENERATED ALWAYS
    AS IDENTITY NOT NULL PRIMARY KEY,
    brand VARCHAR(500),
    typeOfInstrument VARCHAR(500) NOT NULL,
    isAvalible BOOLEAN NOT NULL,
    price INT NOT NULL,
    timeOfLease TIMESTAMP(6),
    student_id INT,

    FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE NO ACTION
);

CREATE TABLE lesson (
    lesson_id INT GENERATED ALWAYS
    AS IDENTITY NOT NULL PRIMARY KEY,
    time TIMESTAMP(6) NOT NULL,
    minStudents INT,
    maxStudent INT,
    price_id INT NOT NULL,
    specificInstrument VARCHAR(500),
    genre VARCHAR(500),
    skillLevel VARCHAR(500) NOT NULL,
    instructor_id INT NOT NULL,

    FOREIGN KEY (price_id) REFERENCES price_scheme (price_id) ON DELETE NO ACTION,
    FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE NO ACTION
);

CREATE TABLE lesson_student (
    student_id INT NOT NULL,
    lesson_id INT NOT NULL,

    PRIMARY KEY (student_id, lesson_id),

    FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE,
    FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id) ON DELETE CASCADE
);



CREATE TABLE siblings (
    student_id1 INT NOT NULL,
    student_id2 INT NOT NULL,

    PRIMARY KEY (student_id1, student_id2),

    FOREIGN KEY (student_id1) REFERENCES student (student_id)  ON DELETE CASCADE,
    FOREIGN KEY (student_id2) REFERENCES student (student_id)  ON DELETE CASCADE,

    CHECK (student_id1 <> student_id2)
);
