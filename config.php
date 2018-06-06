<?php

$host = 'localhost';
$user = 'root';
$password = '';
$db = 'library';

$connect = mysqli_connect($host, $user, $password, $db);
mysqli_set_charset($connect, 'utf8' );