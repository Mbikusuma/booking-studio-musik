<?php
session_start();
include 'koneksi.php';

// Cek apakah user sudah login
if (!isset($_SESSION['id'])) {
    echo "❌ Silakan login terlebih dahulu.";
    echo "<br><a href='login.php'>Login</a>";
    exit;
}

$id = $_SESSION['id'];
$nama = $_SESSION['nama'];

$nama_input = $_POST['nama']; // untuk catatan, beda dengan $_SESSION['nama']
$email = $_POST['email'];
$desc = $_POST['desc'];
$id_studio = $_POST['id_studio'];
$tanggal = $_POST['tanggal'];
$jam_mulai = $_POST['jam_mulai'];
$jam_kelar = $_POST['jam_kelar'];

// Cek booking ganda
$cek = mysqli_query($conn, "
    SELECT * FROM bookings 
    WHERE id = '$id' 
    AND tanggal = '$tanggal' 
    AND jam_mulai = '$jam_mulai'
");

if (mysqli_num_rows($cek) > 0) {
    echo "❌ $nama, kamu sudah booking tanggal <b>$tanggal</b> jam <b>$jam_mulai</b>!";
} else {
    // Simpan booking
    $simpan = mysqli_query($conn, "
        INSERT INTO bookings (id, id_studio, `desc`, tanggal, jam_mulai, jam_kelar, status) 
        VALUES ('$id', '$id_studio', '$desc', '$tanggal', '$jam_mulai', '$jam_kelar', 'pending')
    ");

    if ($simpan) {
        // Ambil nama studio
        $studio_result = mysqli_query($conn, "SELECT nama_studio FROM studios WHERE id_studio = '$id_studio'");
        $studio_data = mysqli_fetch_assoc($studio_result);
        $nama_studio = $studio_data['nama_studio'];

        echo "✅ Booking berhasil untuk <b>$nama</b> tanggal <b>$tanggal</b> jam <b>$jam_mulai</b> di <b>$nama_studio</b>!";
    } else {
        echo "❌ Gagal: " . mysqli_error($conn);
    }
}

echo "<br><a href='cek_jadwal.php'>🔙 Kembali</a>";
?>
