<?php

class Account
{
    private $employeeID = 0;
    private $email = "";
    private $password = "";
    private $isAdmin = false;

    public function __construct($email, $password)
    {
        // Employee ID is auto-incremented in the SQL database. No need to generate one.

        $this->email = $email;
        $this->password = $password;
        $this->isAdmin = false; // Can only be set to true by another admin.
    }
}
