<?php
$conn = mysqli_connect("localhost", "sigwa", "123456", "booking_studio");
if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>
