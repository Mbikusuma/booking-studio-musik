<?php
session_start();
include 'koneksi.php';

if (!isset($_SESSION['id'])) {
    header("Location: index.php");
    exit;
}

$id_booking = $_POST['id_booking'];
mysqli_query($conn, "DELETE FROM bookings WHERE id_booking = '$id_booking'");

header("Location: riwayat.php");
?>
