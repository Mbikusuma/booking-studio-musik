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
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      margin: 0;
      padding: 2rem;
      flex-direction: column;
    }
    .box {
      text-align: center;
      max-width: 800px;
      width: 100%;
    }
    h1, h3, h4 {
      margin-bottom: 1rem;
      text-align: center;
    }
    .form-group {
      background: #3D365C;
      padding: 1rem;
      border-radius: 20px;
      display: inline-block;
      color: white;
      margin-bottom: 1rem;
    }
    input[type="date"] {
      margin-left: 1rem;
      padding: 5px;
      border-radius: 8px;
      border: none;
    }
    button {
      background-color: #ff7043;
      color: white;
      border: none;
      padding: 0.8rem 1.5rem;
      border-radius: 20px;
      cursor: pointer;
      font-weight: bold;
      margin-top: 10px;
    }
    .result {
      margin-top: 2rem;
      background: #ffffff33;
      padding: 1rem;
      border-radius: 15px;
      width: 100%;
    }
    .studio {
      margin: 1rem 0;
      background: #f7e4f2;
      color: #333;
      border-radius: 10px;
      padding: 1rem;
      text-align: center;
    }
    .jam-entry {
      margin-bottom: 0.5rem;
    }
    form.inline {
      display: inline;
    }
    a {
      color: white;
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="box">
    <h1>Hai, <?= htmlspecialchars($nama) ?>!</h1>
    <a href="dashboard.php">Kembali ke Dashboard</a><br><br>

    <form method="post">
      <div class="form-group">
        📅 Pilih Tanggal: <input type="date" name="tanggal" required>
      </div>
      <br>
      <button type="submit" name="cek">Cek Jadwal</button>
    </form>

    <?php if (isset($_POST['cek'])): ?>
      <div class="result">
        <?php
          $tanggal = $_POST['tanggal'];
          echo "<h3>Jadwal Studio untuk <span style='color:#ff0;'>$tanggal</span></h3>";

          $jam_studio = ["08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00"];
          $studio_result = mysqli_query($conn, "SELECT * FROM studios");

          while ($studio = mysqli_fetch_assoc($studio_result)):
              $id_studio = $studio['id_studio'];
              $nama_studio = $studio['nama_studio'];
        ?>
            <div class="studio">
              <h4><?= $nama_studio ?></h4>
              <?php foreach ($jam_studio as $jam): ?>
                <div class="jam-entry">
                  <?php
                    $cek = mysqli_query($conn, "SELECT * FROM bookings WHERE tanggal='$tanggal' AND jam_mulai='$jam' AND id_studio='$id_studio'");
                    $isBooked = rand(0, 1) === 1;
                    if (mysqli_num_rows($cek) > 0) {
                      echo "❌ $jam - Sudah Dibooking";
                    } else if ($isBooked){
                      echo " ";
                    }else {
                      echo "✅ $jam - Tersedia ";
                      echo "<form method='post' action='booking.php' class='inline'>
                        <input type='hidden' name='tanggal' value='$tanggal'>
                        <input type='hidden' name='jam_mulai' value='$jam'>
                        <input type='hidden' name='id_studio' value='$id_studio'>
                        <button type='submit'>Booking</button>
                      </form>";
                    }
                  ?>
                </div>
              <?php endforeach; ?>
            </div>
        <?php endwhile; ?>
      </div>
    <?php endif; ?>
  </div>
</body>
</html>
