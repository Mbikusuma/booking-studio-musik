<?php
session_start();
include 'koneksi.php';

if (!isset($_SESSION['id'])) {
    header("Location: login.php"); 
    exit;
}

$id = $_SESSION['id'];
$result = mysqli_query($conn, "SELECT * FROM bookings WHERE id = $id");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Riwayat Booking</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #a18cd1, #fbc2eb);
      margin: 0;
      padding: 0;
    }
    .history {
      max-width: 600px;
      background: white;
      margin: 100px auto;
      padding: 2rem;
      border-radius: 20px;
      box-shadow: 0 10px 25px rgba(0,0,0,0.1);
    }
    h2 {
      text-align: center;
      color: #6a1b9a;
    }
    .card {
      background: #eee;
      padding: 1rem;
      border-radius: 10px;
      margin-bottom: 1rem;
    }
    .btn-row {
      display: flex;
      flex-wrap: wrap;
      gap: 1rem;
      justify-content: center;
    }
    button {
      padding: 1rem 2rem;
      border: none;
      border-radius: 10px;
      font-weight: bold;
      cursor: pointer;
    }
    .btn-green { background: #66bb6a; color: white; }
    .btn-red { background: #ef5350; color: white; }
    form {
      display: inline;
    }
  </style>
</head>
<body>
  <div class="history">
    <h2>RIWAYAT BOOKING</h2>
    <?php while ($row = mysqli_fetch_assoc($result)): ?>
      <div class="card">
        <div><b><?= $row['tanggal'] ?></b> - <?= $row['jam_mulai'] ?> sampai <?= $row['jam_kelar'] ?></div>
        <div><b>Status:</b> <?= $row['status'] ?></div>
        <div class="btn-row">
          <form method="post" action="hapus_booking.php">
            <input type="hidden" name="id_booking" value="<?= $row['id_booking'] ?>">
            <button class="btn-green" type="submit">Hapus</button>
          </form>
        </div>
      </div>
    <?php endwhile; ?>
    <div class="btn-row">
      <a href="dashboard.php"><button class="btn-red">Kembali ke Dashboard</button></a>
    </div>
  </div>
</body>
</html>
