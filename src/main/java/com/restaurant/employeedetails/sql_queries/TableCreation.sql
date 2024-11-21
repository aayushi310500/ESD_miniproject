CREATE TABLE employee (
                          employee_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique identifier for each employee
                          first_name VARCHAR(255) NOT NULL,            -- Employee's first name
                          last_name VARCHAR(255) NOT NULL,             -- Employee's last name
                          email VARCHAR(255) UNIQUE NOT NULL,          -- Employee's email address
                          title VARCHAR(255),                          -- Job title or position of the employee
                          photograph_path VARCHAR(500),                -- Path to the employee's photograph
                          department VARCHAR(255)                      -- Department the employee belongs to
);


CREATE TABLE Employee_Salary (
                                 id INT PRIMARY KEY AUTO_INCREMENT,    -- Unique identifier for each salary record
                                 employee_id INT NOT NULL,             -- ID referencing an employee
                                 payment_date DATE,                    -- Date of the salary payment
                                 amount DECIMAL(10, 2),                -- Amount of salary paid
                                 description VARCHAR(255)             -- Description or notes about the payment
);

CREATE TABLE Faculty_Courses (
                                 id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique identifier for each record
                                 faculty VARCHAR(255) NOT NULL,       -- Faculty name or identifier
                                 course_id INT NOT NULL               -- ID referencing a course
);

CREATE TABLE Department (
                            department_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each department
                            name VARCHAR(255) NOT NULL,                    -- Name of the department
                            capacity INT NOT NULL                          -- Capacity of the department
);
CREATE TABLE Courses (
                         course_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique identifier for each course
                         course_code VARCHAR(50) NOT NULL,           -- Unique code for the course
                         name VARCHAR(255) NOT NULL,                 -- Name of the course
                         description TEXT,                           -- Detailed description of the course
                         year INT NOT NULL,                          -- Year in which the course is offered
                         term VARCHAR(50) NOT NULL,                  -- Term or semester (e.g., Fall, Spring)
                         faculty VARCHAR(255),                       -- Faculty name or identifier teaching the course
                         credits INT NOT NULL,                       -- Number of credits for the course
                         capacity INT NOT NULL                       -- Maximum number of students allowed in the course
);
