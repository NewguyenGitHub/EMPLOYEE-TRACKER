const connection = require("../config/connection");

class EmployeeDB {

  constructor(connection) {
    this.connection = connection;
  }

  // Show All Departments
  showDepartments() {
    return this.connection.promise().query(
        `SELECT department.id, department.title FROM department;`
    );
  }

  // Show All Roles
  showRoles() {
    return this.connection.promise().query(
        `SELECT role.id, role.title, department.title AS department, role.salary FROM role 
        LEFT JOIN department on role.department_id = department.id;`
    );
  }

  // Show All Employees
  showEmployees() {
    return this.connection.promise().query(
        `SELECT employee.id, employee.first_name, employee.last_name, role.title, department.title AS department, role.salary, 
        CONCAT(manager.first_name, ' ', manager.last_name) AS manager FROM employee 
        LEFT JOIN role on employee.role_id = role.id
        LEFT JOIN department on role.department_id = department.id
        LEFT JOIN employee manager on manager.id = employee.manager_id;`
    );
  }

  // Show All Managers
  showManagers(employeeId) {
    return this.connection.promise().query(
        `SELECT id, first_name, last_name FROM employee WHERE id != ?;`, employeeId
    );
  }
  
  // Add Department
  addDepartment(department) {
    return this.connection.promise().query(
        `INSERT INTO department SET ?;`, department
    );
  }

  // Add Role
  addRole(role) {
    return this.connection.promise().query(
        `INSERT INTO role SET ?;`, role
    );
  }

  // Add Employee
  addEmployee(employee) {
    return this.connection.promise().query(
        `INSERT INTO employee SET ?;`, employee
    );
  }

  // Update Employee Role
  updateEmployeeRole(employeeId, roleId) {
    return this.connection.promise().query(
        `UPDATE employee SET role_id = ? WHERE id = ?;`, [roleId, employeeId]
    );
  }

};

module.exports = new EmployeeDB(connection);