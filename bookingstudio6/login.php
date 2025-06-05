<?php
session_start();
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $cek = mysqli_query($conn, "SELECT * FROM users WHERE email='$email'");
    $user = mysqli_fetch_assoc($cek);

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['nama'] = $user['nama'];
        $_SESSION['email'] = $user['email'];
        $_SESSION['id'] = $user['id'];
        header("Location: dashboard.php");
        exit;
    } else {
        $error = "❌ Login gagal. Cek email atau password!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login - StudioKuYuk</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="form-box">
    <h2>Welcome To StudioKuYuk</h2>

    <?php if (!empty($error)): ?>
      <div class="error"><?= $error ?></div>
    <?php endif; ?>

    <form method="post">
      <input type="email" name="email" placeholder="Email" required />
      <input type="password" name="password" placeholder="Kata Sandi" required />
      <button type="submit">Masuk</button>
    </form>

    <div class="card">
      <small>Belum Memiliki Akun? <a href="register.php">Registrasi</a></small>
    </div>
  </div>
</body>
</html>
