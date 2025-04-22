<?php
session_start();
if (!isset($_SESSION['id'])) {
    header("Location: index.php");
    exit;
}
$nama = $_SESSION['nama'];
?>

<h2>Selamat datang, <?= $nama ?>!</h2>
<ul>
  <li><a href="cek_jadwal.php">Cek Jadwal Studio</a></li>
  <li><a href="booking.php">Booking Jadwal Studio</a></li>
  <li><a href="riwayat.php">Riwayat Booking</a></li>
  <li><a href="logout.php">Logout</a></li>
</ul>
