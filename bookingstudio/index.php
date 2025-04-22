<?php
session_start();
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Ambil user berdasarkan email saja dulu
    $cek = mysqli_query($conn, "SELECT * FROM users WHERE email='$email'");
    $user = mysqli_fetch_assoc($cek);

    // Cek jika user ditemukan dan password cocok
    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['nama'] = $user['nama'];
        $_SESSION['id'] = $user['id'];
        header("Location: dashboard.php"); 
        exit;
    } else {
        echo "❌ Login gagal. Cek email atau password!";
    }
}
?>

<h2>Login Booking Studio</h2>
<form method="post">
  Email: <input type="text" name="email" required><br>
  Password: <input type="password" name="password" required><br>
  <button type="submit">Login</button>
  <p>Belum punya akun? <a href="register.php">Daftar di sini</a></p>
</form>
