<?php
session_start();
if (!isset($_SESSION['id'])) {
    header("Location: login.php");
    exit;
}
$nama = $_SESSION['nama'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Dashboard - StudioKuYuk</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <div class="dashboard">
    <h2>Selamat Datang, <?= htmlspecialchars($nama) ?>!</h2>
    <div class="btn-row">
      <a href="cek_jadwal.php" class="btn btn-yellow">Cek Jadwal Studio</a>
      <a href="booking.php" class="btn btn-blue">Booking Jadwal Studio</a>
      <a href="riwayat.php" class="btn btn-brown">Riwayat Booking</a>
      <a href="logout.php" class="btn btn-green">Logout</a>
    </div>
  </div>
</body>
</html>
