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
    ('Coach', 'Beard', 5, 1),
    ('Roy', 'Kent', 5, 1),

    ('Tom', 'OBrien', 6, 4),
    ('Arlo', 'Dixon', 6, 4),
    ('Gareth', 'Canterbury', 6, 4),
    ('Tommy', 'Winchester', 6, 4),
    ('Issac', 'McAdoo', 6, 4),
    ('Richard', 'Montlaur', 6, 4),
    ('Jamie', 'Tartt', 6, 4),
    ('Colin', 'Hughes', 6, 4),
    ('Jan', 'Maas', 6, 4),
    ('Dani', 'Rojas', 6, 4),
    ('Jack', 'Dawkins', 6, 4),
    ('Robbie', 'Roberts', 6, 4),
    ('Jeff', 'Goodman', 6, 4),
    ('Declan', 'Cockburn', 6, 4),
    ('Paul', 'Reynolds', 6, 4),
    ('Moe', 'Bumbercatch', 6, 4),
    ('Sam', 'Obianya', 6, 4),
    ('Tyler', 'Shannon', 6, 4),
    ('Kyle', 'McCracken', 6, 4),
    ('Thierry', 'Zoreaux', 6, 4);