<?php
session_start();
include 'koneksi.php';

if (!isset($_SESSION['nama'])) {
    header("Location: login.php");
    exit;
}

$nama = $_SESSION['nama'];
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cek Jadwal Studio</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #a18cd1, #fbc2eb);
      color: white;
      margin: 0;
      padding: 2rem;
    }
    .container {
      max-width: 800px;
      margin: 0 auto;
    }
    h2, h3, h4 {
      color: white;
    }
    .form-group {
      background: #555;
      padding: 1rem;
      border-radius: 20px;
      display: inline-block;
      color: white;
      margin-bottom: 1rem;
    }
    input[type="date"] {
      margin-left: 1rem;
    }
    button {
      background-color: #ff7043;
      color: white;
      border: none;
      padding: 0.5rem 1rem;
      border-radius: 10px;
      cursor: pointer;
      font-weight: bold;
    }
    .jam-entry {
      margin-bottom: 0.5rem;
    }
    hr {
      border: 1px solid #fff;
      margin: 1rem 0;
    }
    form {
      display: inline;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Hai, <?= htmlspecialchars($nama) ?>!</h2>
    <a href="dashboard.php" style="color:white; text-decoration:underline;">Kembali ke Dashboard</a><br><br>

    <form method="post">
      <div class="form-group">
        📅 Pilih Tanggal: <input type="date" name="tanggal" required>
        <button type="submit" name="cek">Booking</button>
      </div>
    </form>

    <?php
    if (isset($_POST['cek'])) {
        $tanggal = $_POST['tanggal'];
        echo "<h3>Jadwal Studio untuk $tanggal</h3>";

        $jam_studio = ["08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00"];
        $studio_result = mysqli_query($conn, "SELECT * FROM studios");

        while ($studio = mysqli_fetch_assoc($studio_result)) {
            $id_studio = $studio['id_studio'];
            echo "<h4>{$studio['nama_studio']}</h4>";

            foreach ($jam_studio as $jam) {
                $cek = mysqli_query($conn, "
                    SELECT * FROM bookings 
                    WHERE tanggal='$tanggal' AND jam_mulai='$jam' AND id_studio='$id_studio'
                ");

                echo '<div class="jam-entry">';
                if (mysqli_num_rows($cek) > 0) {
                    echo "❌ $jam - Sudah Dibooking";
                } else {
                    echo "✅ $jam - Kosong ";
                    echo "<form method='post' action='booking_____.php'>
                        <input type='hidden' name='tanggal' value='$tanggal'>
                        <input type='hidden' name='jam_mulai' value='$jam'>
                        <input type='hidden' name='id_studio' value='$id_studio'>
                        <button type='submit'>Booking</button>
                    </form>";
                }
                echo '</div>';
            }

            echo "<hr>";
        }
    }
    ?>
  </div>
</body>
</html>
