<?php
include 'koneksi.php';

$nama = $_POST['nama'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Hash biar aman

// Cek email udah ada atau belum
$cek = mysqli_query($conn, "SELECT * FROM users WHERE email='$email'");
if (mysqli_num_rows($cek) > 0) {
    echo "❌ Email sudah terdaftar. <a href='register.php'>Coba lagi</a>";
} else {
    $simpan = mysqli_query($conn, "
        INSERT INTO users (nama, email, password) 
        VALUES ('$nama', '$email', '$password')
    ");

    if ($simpan) {
        echo "✅ Pendaftaran berhasil! Silakan <a href='index.php'>Login</a>";
    } else {
        echo "❌ Gagal daftar: " . mysqli_error($conn);
    }
}
?>
