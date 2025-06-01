<?php
include 'koneksi.php';
$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $cek = mysqli_query($conn, "SELECT * FROM users WHERE email='$email'");
    if (mysqli_num_rows($cek) > 0) {
        $message = "<p class='error'>❌ Email sudah terdaftar. <a href='register.php'>Coba lagi</a></p>";
    } else {
        $simpan = mysqli_query($conn, "
            INSERT INTO users (nama, email, password) 
            VALUES ('$nama', '$email', '$password')
        ");

        if ($simpan) {
            $message = "<p class='success'>✅ Pendaftaran berhasil! Silakan <a href='login.php'>Login</a></p>";
        } else {
            $message = "<p class='error'>❌ Gagal daftar: " . mysqli_error($conn) . "</p>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Form Registrasi</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="form-box">
    <h2>Notifikasi</h2>

    <?php
    if (!empty($message)) {
        echo $message;
    }
    ?>

  </div>
</body>
</html>