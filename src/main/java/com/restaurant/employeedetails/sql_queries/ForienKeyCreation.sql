ALTER TABLE employee
    ADD CONSTRAINT fk_department
        FOREIGN KEY (department)
            REFERENCES department(name)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

