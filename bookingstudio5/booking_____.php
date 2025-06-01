<?php
session_start();
include 'koneksi.php';

$message = "";

if (!isset($_SESSION['nama']) || !isset($_SESSION['email'])) {
    header("Location: login.php");
    exit;
}

$id = $_SESSION['id'];
$nama = $_SESSION['nama'];
$email_user = $_SESSION['email'];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $tanggal = $_POST['tanggal'];
    $jam = $_POST['jam_mulai'];
    $id_studio = $_POST['id_studio'];

    // Check if slot is already booked
    $cek = mysqli_query($conn, "SELECT * FROM bookings WHERE tanggal='$tanggal' AND jam_mulai='$jam' AND id_studio='$id_studio'");
    if (mysqli_num_rows($cek) > 0) {
        $message = "<p class='error'>❌ Slot sudah dibooking!</p>";
    } else {
        // Save booking
        mysqli_query($conn, "INSERT INTO bookings (tanggal, jam_mulai, id_studio, id) VALUES ('$tanggal', '$jam', '$id_studio', '$id')");

        // Get studio name
        $studio = mysqli_fetch_assoc(mysqli_query($conn, "SELECT nama_studio FROM studios WHERE id_studio='$id_studio'"));
        $nama_studio = $studio['nama_studio'];

        // Create confirmation email
        $to = $email_user;
        $subject = "Konfirmasi Booking Studio - $nama_studio";
        $emailMessage = "
        <html>
        <head><title>Konfirmasi Booking</title></head>
        <body style='font-family: Arial, sans-serif;'>
          <h2>Halo, $nama!</h2>
          <p>Booking Anda telah berhasil. Berikut detailnya:</p>
          <ul>
            <li><strong>Studio:</strong> $nama_studio</li>
            <li><strong>Tanggal:</strong> $tanggal</li>
            <li><strong>Jam:</strong> $jam WIB</li>
          </ul>
          <p>Terima kasih telah menggunakan layanan kami.</p>
        </body>
        </html>
        ";

        $headers = "MIME-Version: 1.0\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8\r\n";
        $headers .= "From: studio-booking@yourdomain.com\r\n";

        if (mail($to, $subject, $emailMessage, $headers)) {
            $message = "<p class='success'>✅ Booking berhasil! Konfirmasi dikirim ke email Anda.</p>";
        } else {
            $message = "<p class='error'>⚠️ Booking berhasil, tapi gagal mengirim email konfirmasi.</p>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Konfirmasi Booking</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="form-box">
        <h2>Konfirmasi Booking</h2>
        <?php echo $message; ?>
        <div class="card">
            <a class="btn btn-yellow" href="cek_jadwal.php">Kembali</a>
        </div>
    </div>
</body>
</html>
