<?php
session_start();
include 'koneksi.php';

if (!isset($_SESSION['nama'])) {
    header("Location: index.php");
    exit;
}

$nama = $_SESSION['nama'];
echo "<h2>Hai, $nama!</h2>";
echo "<a href='logout.php'>Logout</a><br><br>";

echo "<form method='post'>";
echo "Pilih Tanggal: <input type='date' name='tanggal' required>";
echo "<input type='submit' name='cek' value='Cek Jadwal'>";
echo "</form>";

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

            if (mysqli_num_rows($cek) > 0) {
                echo "❌ $jam - Sudah Dibooking<br>";
            } else {
                echo "✅ $jam - Kosong 
                <form method='post' action='booking.php' style='display:inline;'>
                    <input type='hidden' name='tanggal' value='$tanggal'>
                    <input type='hidden' name='jam_mulai' value='$jam'>
                    <input type='hidden' name='id_studio' value='$id_studio'>
                    <button type='submit'>Booking</button>
                </form><br>";
            }
        }

        echo "<hr>";
    }
}
?>
