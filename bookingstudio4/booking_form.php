<?php
include 'koneksi.php';

$id_studio = $_GET['id_studio'];
$tanggal = $_GET['tanggal'];
$jam_mulai = $_GET['mulai'];
$jam_kelar = $_GET['selesai'];
?>

<h2>Form Booking Studio</h2>
<form method="POST" action="proses_booking.php">
  <input type="hidden" name="id_studio" value="<?= $id_studio ?>">
  <input type="hidden" name="tanggal" value="<?= $tanggal ?>">
  <input type="hidden" name="jam_mulai" value="<?= $jam_mulai ?>">
  <input type="hidden" name="jam_kelar" value="<?= $jam_kelar ?>">

  <label>Nama:</label><br>
  <input type="text" name="nama" required><br>

  <label>Email:</label><br>
  <input type="email" name="email" required><br>

  <label>Catatan:</label><br>
  <textarea name="desc"></textarea><br><br>

  <button type="submit" onclick="return confirm('Yakin ingin booking studio ini?')">Booking Sekarang</button>
</form>
