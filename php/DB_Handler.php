<?php

require_once("DB_Pwd.php");

class DB_Handler
{
    private $servername;
    private $username;
    private $password;
    private $dbname;
    private $conn;

    public function __construct()
    {
        $this->servername = "localhost";
        $this->username = "root";
        $this->password = $pwd;
        $this->dbname = "employee_management";
    }

    private function connect()
    {
        try
        {
            $this->conn = new PDO("mysql:host=$servername; dbname=$dbname", $username, $password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        catch(PDOException $e)
        {
            echo "Connection failed: " . $e->getMessage();
        }
    }

    private function disconnect()
    {
        $this->conn = null;
    }

    public function createAccount()
    { 
    }

    public function activateAccount()
    {
    }

    public function suspendAccount()
    {
    }

    public function createEmployee()
    {
    }

    public function editEmployeeContact()
    {
    }

    public function editEmployeePosition()
    {
    }

}
?>