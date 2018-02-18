<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);
$mysqli =  new mysqli('database', 'pedrom', 'pw1544', 'db');

/* Comprueba la conexión */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$result = $mysqli->query("SELECT * FROM users");

/* obtener un array asociativo */
while ($row = $result->fetch_assoc()) {
    printf ("%s (%s)\n", $row["id"], $row["username"]);
}

