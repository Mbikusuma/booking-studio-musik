CREATE TABLE `studios` (
  `id_studio` integer PRIMARY KEY,
  `nama_studio` varchar(100),
  `lokasi` varchar(100),
  `harga_per_jam` decimal(10,2)
);

CREATE TABLE `users` (
  `id` integer PRIMARY KEY,
  `nama` varchar(100),
  `email` varchar(100),
  `password` varchar(100)
);

CREATE TABLE `bookings` (
  `id_booking` integer PRIMARY KEY,
  `id` integer NOT NULL,
  `id_studio` integer NOT NULL,
  `desc` varchar(100),
  `body` text COMMENT 'ada pesan khusus?',
  `tanggal` datetime,
  `jam_mulai` datetime,
  `jam_kelar` datetime,
  `status` enum(pending,confirmed,cancelled) DEFAULT 'pending',
  `created_at` timestamp DEFAULT (CURRENT_TIMESTAMP)
);

ALTER TABLE `bookings` ADD FOREIGN KEY (`id`) REFERENCES `users` (`id`);

ALTER TABLE `bookings` ADD FOREIGN KEY (`id_studio`) REFERENCES `studios` (`id_studio`);
