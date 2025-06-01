<?php
include 'koneksi.php';

// Start session if you're using sessions
session_start();

// Debug output
//echo "<pre>POST variables: ";
//print_r($_POST);
//echo "\nGET variables: ";
//print_r($_GET);
//echo "\nSESSION variables: ";
//print_r($_SESSION ?? []);
//echo "</pre>"; 

// Check if variables exist before accessing them
// Also note the variable name change from 'jam_mulai' to 'mulai'
$id_studio = isset($_GET['id_studio']) ? $_GET['id_studio'] : '';
$tanggal = isset($_GET['tanggal']) ? $_GET['tanggal'] : '';
$jam_mulai = isset($_GET['mulai']) ? $_GET['mulai'] : '';  // Changed from 'jam_mulai' to 'mulai'
$jam_kelar = isset($_GET['selesai']) ? $_GET['selesai'] : '';

// Now you can use these variables safely
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
