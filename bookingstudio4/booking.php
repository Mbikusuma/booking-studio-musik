<?php
session_start();
include 'koneksi.php';

if (!isset($_SESSION['id'])) {
    header("Location: login.php");
    exit;
}

$id = $_SESSION['id'];
$nama = $_SESSION['nama'];

$tanggal = $_POST['tanggal'];
$jam = $_POST['jam_mulai'];
$id_studio = $_POST['id_studio'];

// Cek booking ganda
$cek = mysqli_query($conn, "
    SELECT * FROM bookings 
    WHERE id = '$id' 
    AND tanggal = '$tanggal' 
    AND jam_mulai = '$jam'
");

if (mysqli_num_rows($cek) > 0) {
    echo "❌ $nama, kamu sudah booking tanggal <b>$tanggal</b> jam <b>$jam</b>!";
} else {
    // Simpan booking
    $simpan = mysqli_query($conn, "
        INSERT INTO bookings (tanggal, jam_mulai, id_studio, id) 
        VALUES ('$tanggal', '$jam', '$id_studio', '$id')
    ");

    if ($simpan) {
        // Ambil nama studio
        $studio_result = mysqli_query($conn, "SELECT nama_studio FROM studios WHERE id_studio = '$id_studio'");
        $studio_data = mysqli_fetch_assoc($studio_result);
        $nama_studio = $studio_data['nama_studio'];

        echo "✅ Booking berhasil untuk <b>$nama</b> tanggal <b>$tanggal</b> jam <b>$jam</b> di <b>$nama_studio</b>!";
    } else {
        echo "❌ Gagal: " . mysqli_error($conn);
    }
}

echo "<br><a href='cek_jadwal.php'>🔙 Kembali</a>";
?>
