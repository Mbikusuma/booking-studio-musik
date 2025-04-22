<?php
session_start();
include 'koneksi.php';

if (!isset($_SESSION['id'])) {
    header("Location: index.php");
    exit;
}

$id = $_SESSION['id'];
$result = mysqli_query($conn, "SELECT * FROM bookings WHERE id = $id");

echo "<h2>Riwayat Booking</h2>";
while ($row = mysqli_fetch_assoc($result)) {
    echo "<p>
        <b>{$row['tanggal']}</b> - {$row['jam_mulai']} sampai {$row['jam_kelar']} - <b>Status:</b> {$row['status']}
        <form method='post' action='hapus_booking.php' style='display:inline;'>
            <input type='hidden' name='id_booking' value='{$row['id_booking']}'>
            <button type='submit'>Hapus</button>
        </form>
    </p>";
}
echo "<a href='dashboard.php'>🔙 Kembali</a>";
?>
