use employee_db;

INSERT INTO department (title)

VALUES
    ('Executive'),
    ('Coaching'),
    ('Squad');

INSERT INTO role (title, salary, department_id)

VALUES
    ('Owner', 500000, 1),
    ('Director of Futbol Operations', 250000, 1),
    ('Marketing Director', 200000, 1),
    ('Manager', 175000, 2),
    ('Assistant Coach', 150000, 2),
    ('Players', 275000, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)

VALUES
    ('Rebecca', 'Welton', 1, NULL),
    ('Leslie', 'Higgins', 2, NULL),
    ('Keeley', 'Jones', 3, NULL),
    ('Ted', 'Lasso', 4, 1),
    ('Coach', 'Beard', 5, 2),
    ('Roy', 'Kent', 5, 2),

    ('Tom', 'OBrien', 6, NULL),
    ('Arlo', 'Dixon', 6, NULL),
    ('Gareth', 'Canterbury', 6, NULL),
    ('Tommy', 'Winchester', 6, NULL),
    ('Issac', 'McAdoo', 6, NULL),
    ('Richard', 'Montlaur', 6, NULL),
    ('Jamie', 'Tartt', 6, NULL),
    ('Colin', 'Hughes', 6, NULL),
    ('Jan', 'Maas', 6, NULL),
    ('Dani', 'Rojas', 6, NULL),
    ('Jack', 'Dawkins', 6, NULL),
    ('Robbie', 'Roberts', 6, NULL),
    ('Jeff', 'Goodman', 6, NULL),
    ('Declan', 'Cockburn', 6, NULL),
    ('Paul', 'Reynolds', 6, NULL),
    ('Moe', 'Bumbercatch', 6, NULL),
    ('Sam', 'Obianya', 6, NULL),
    ('Tyler', 'Shannon', 6, NULL),
    ('Kyle', 'McCracken', 6, NULL),
    ('Thierry', 'Zoreaux', 6, NULL);