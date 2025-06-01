<?php
session_start();

// Handle confirmation
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  if (isset($_POST['confirm']) && $_POST['confirm'] === 'yes') {
    session_destroy();
    header("Location: login.php");
    exit;
  } else {
    header("Location: dashboard.php");
    exit;
  }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Logout - StudioKuYuk</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <div class="logout-confirm">
    <h2>Logout</h2>
    <div class="card">Yakin mau logout?</div>
    <form method="POST" class="btn-row">
      <button type="submit" name="confirm" value="yes" class="btn btn-green">Yakin</button>
      <button type="submit" name="confirm" value="no" class="btn btn-yellow">Tidak</button>
    </form>
  </div>
</body>
</html>
