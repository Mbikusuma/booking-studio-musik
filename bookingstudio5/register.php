<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Register - StudioKuYuk</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <div class="form-box">
    <h2>StudioKuYuk - Sign Up</h2>
    <form action="register_process.php" method="POST">
      <input type="text" name="nama" placeholder="Full Name" required />
      <input type="email" name="email" placeholder="Email" required />
      <input type="password" name="password" placeholder="Kata Sandi" required />
      <button type="submit">Daftar</button>
    </form>
    <div class="card">
      <small>Sudah punya akun? <a href="login.php">Login</a></small>
    </div>
  </div>
</body>
</html>
