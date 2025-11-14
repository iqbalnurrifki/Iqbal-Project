#create database kelompok1project;
#drop database kelompok1project;
use kelompok1project;
set sql_safe_updates = 0;

-- Table Pembeli
CREATE TABLE IF NOT EXISTS Pembeli (
  ID_Pembeli VARCHAR(6) NOT NULL,
  Nama_Pembeli VARCHAR(100) NOT NULL,
  Nomor_Telepon VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_Pembeli)
);

-- Table Warna
CREATE TABLE IF NOT EXISTS Warna (
  ID_Warna VARCHAR(2) NOT NULL,
  Warna VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_Warna)
);

-- Table Memory
CREATE TABLE IF NOT EXISTS Memory (
  ID_Memory VARCHAR(2) NOT NULL,
  Kapasitas_GB INT NOT NULL,
  PRIMARY KEY (ID_Memory)
);

-- Table Produksi
CREATE TABLE IF NOT EXISTS Produksi (
  ID_Produksi VARCHAR(2) NOT NULL,
  Tahun_Produksi YEAR(4) NOT NULL,
  PRIMARY KEY (ID_Produksi)
);

-- Table Produk
CREATE TABLE IF NOT EXISTS Produk (
  ID_Produk VARCHAR(7) NOT NULL,
  Produk VARCHAR(45) NOT NULL,
  Deskripsi_Produk VARCHAR(1000) NOT NULL,
  Stok_Awal INT NOT NULL,
  Harga INT NOT NULL,
  ID_Warna VARCHAR(2) NOT NULL,
  ID_Memory VARCHAR(2) NOT NULL,
  ID_Produksi VARCHAR(2) NOT NULL,
  PRIMARY KEY (ID_Produk),
  CONSTRAINT fk_Produk_Warna
    FOREIGN KEY (ID_Warna)
    REFERENCES Warna (ID_Warna)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_Produk_Produksi1
    FOREIGN KEY (ID_Produksi)
    REFERENCES Produksi (ID_Produksi)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_Produk_Memory1
    FOREIGN KEY (ID_Memory)
    REFERENCES Memory (ID_Memory)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Table Transaksi
CREATE TABLE IF NOT EXISTS Transaksi (
  ID_Transaksi VARCHAR(6) NOT NULL,
  Tanggal_Transaksi DATE NOT NULL,
  PRIMARY KEY (ID_Transaksi)
);

-- Table DetailTransaksi
CREATE TABLE IF NOT EXISTS DetailTransaksi (
  ID_DetailTransaksi INT NOT NULL AUTO_INCREMENT,
  ID_Transaksi VARCHAR(6) NOT NULL,
  ID_Produk VARCHAR(7) NOT NULL,
  ID_Pembeli VARCHAR(6) NOT NULL,
  Metode_Pembayaran VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_DetailTransaksi),
  CONSTRAINT fk_DetailTransaksi_Transaksi1
    FOREIGN KEY (ID_Transaksi)
    REFERENCES Transaksi (ID_Transaksi)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_DetailTransaksi_Pelanggan1
    FOREIGN KEY (ID_Pembeli)
    REFERENCES Pembeli (ID_Pembeli)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_DetailTransaksi_Produk1
    FOREIGN KEY (ID_Produk)
    REFERENCES Produk (ID_Produk)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)auto_increment = 202301;
ALTER TABLE DetailTransaksi AUTO_INCREMENT = 2023001;

-- Table Supplier
CREATE TABLE IF NOT EXISTS Supplier (
  ID_Supplier VARCHAR(5) NOT NULL,
  Nama_Supplier VARCHAR(45) NOT NULL,
  Nomor_Telepon VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_Supplier)
);

-- Table Pemasokan
CREATE TABLE IF NOT EXISTS Pemasokan (
  ID_Pemasokan VARCHAR(6) NOT NULL,
  Tanggal_Pemasokan DATE NOT NULL,
  PRIMARY KEY (ID_Pemasokan)
);

-- Table DetailPemasokan
CREATE TABLE IF NOT EXISTS DetailPemasokan (
  ID_Pemasokan VARCHAR(6) NOT NULL,
  ID_Supplier VARCHAR(5) NOT NULL,
  Produk_ID_Produk VARCHAR(7) NOT NULL,
  Jumlah_Diterima INT NOT NULL,
  INDEX fk_DetailPemasokan_Supplier1_idx (ID_Supplier ASC) VISIBLE,
  INDEX fk_DetailPemasokan_Produk1_idx (Produk_ID_Produk ASC) VISIBLE,
  CONSTRAINT fk_DetailPemasokan_Pemasokan1
    FOREIGN KEY (ID_Pemasokan)
    REFERENCES Pemasokan (ID_Pemasokan)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_DetailPemasokan_Supplier1
    FOREIGN KEY (ID_Supplier)
    REFERENCES Supplier (ID_Supplier)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_DetailPemasokan_Produk1
    FOREIGN KEY (Produk_ID_Produk)
    REFERENCES Produk (ID_Produk)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);


INSERT INTO kelompok1project.Warna (ID_Warna, Warna) VALUES 
('W1', 'Hitam'),
('W2', 'Silver');

-- Insert into Memory
INSERT INTO kelompok1project.Memory (ID_Memory, Kapasitas_GB) VALUES 
('S1', 64),
('S2', 128),
('S3', 256);

-- Insert into Produksi
INSERT INTO kelompok1project.Produksi (ID_Produksi, Tahun_Produksi) VALUES 
('P1', 2020),
('P2', 2021),
('P3', 2022),
('P4', 2023);

-- Insert into Pelanggan
INSERT INTO kelompok1project.Pembeli (ID_Pembeli, Nama_Pembeli, Nomor_Telepon) VALUES 
('P-C001', 'John Doe', '6281234567890'),
('P-C002', 'Jane Smith', '6289876543210'),
('P-C003', 'Alice Johnson', '6285551234567'),
('P-C004', 'Bob Miller', '6289998887777'),
('P-C005', 'Mary Brown', '6287778889999'),
('P-C006', 'Chris Evans', '6286665554444'),
('P-C007', 'Linda Williams', '6288887776666'),
('P-C008', 'David Lee', '6283334445555'),
('P-C009', 'Sarah Davis', '6284445556666'),
('P-C010', 'Michael Wang', '6285556667777'),
('P-C011', 'Emily Chen', '6286667778888'),
('P-C012', 'Daniel Smith', '6287778889999'),
('P-C013', 'Olivia Brown', '6288889990000'),
('P-C014', 'Ethan Taylor', '6289990001111'),
('P-C015', 'Ava Garcia', '6281112223333'),
('P-C016', 'Benjamin Wong', '6282223334444'),
('P-C017', 'Emma Chen', '6283334445555'),
('P-C018', 'Noah Rodriguez', '6284445556666'),
('P-C019', 'Mia Johnson', '6282223334444'),
('P-C020', 'James Wang', '6286667778888'),
('P-C021', 'Sophia Lee', '6284445556666'),
('P-C022', 'Logan Chen', '6288889990000'),
('P-C023', 'Isabella Davis', '6286667778888'),
('P-C024', 'Aiden Smith', '6281112223333'),
('P-C025', 'Chloe Brown', '6288889990000'),
('P-C026', 'Lucas Garcia', '6283334445555'),
('P-C027', 'Harper Wang', '6281112223333'),
('P-C028', 'Elijah Chen', '6285556667777'),
('P-C029', 'Grace Johnson', '6283334445555'),
('P-C030', 'Liam Wong', '6287778889999'),
('P-C031', 'Zoe Lee', '6285556667777'),
('P-C032', 'Jackson Davis', '6289990001111'),
('P-C033', 'Lily Smith', '6287778889999'),
('P-C034', 'Owen Brown', '6282223334444');


INSERT INTO kelompok1project.produk (ID_Produk, produk, deskripsi_produk, stok_awal, harga, id_warna, id_memory, id_produksi)
VALUES
('C-P1001', 'iPhone 11', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A13 Bionic', 7, 6499000, 'W1', 'S1', 'P1'),
('C-P1002', 'iPhone 11', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A13 Bionic', 7, 7499000, 'W1', 'S2', 'P1'),
('C-P1003', 'iPhone 11', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A13 Bionic', 7, 6499000, 'W2', 'S1', 'P1'),
('C-P1004', 'iPhone 11', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A13 Bionic', 7, 7499000, 'W2', 'S2', 'P1'),
('C-P1005', 'iPhone 11 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A13 Bionic', 7, 8595000, 'W1', 'S1', 'P1'),
('C-P1006', 'iPhone 11 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A13 Bionic', 7, 9595000, 'W1', 'S2', 'P1'),
('C-P1007', 'iPhone 11 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A13 Bionic', 7, 8595000, 'W2', 'S1', 'P1'),
('C-P1008', 'iPhone 11 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A13 Bionic', 7, 9595000, 'W2', 'S2', 'P1'),
('C-P1009', 'iPhone 12', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A14 Bionic', 7, 9999000, 'W1', 'S1', 'P1'),
('C-P1010', 'iPhone 12', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A14 Bionic', 7, 10999000, 'W1', 'S2', 'P1'),
('C-P1011', 'iPhone 12', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A14 Bionic', 7, 9999000, 'W2', 'S1', 'P1'),
('C-P1012', 'iPhone 12', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A14 Bionic', 7, 10999000, 'W2', 'S2', 'P1'),
('C-P1013', 'iPhone 12 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A14 Bionic', 7, 12699000, 'W1', 'S1', 'P1'),
('C-P1014', 'iPhone 12 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A14 Bionic', 7, 13699000, 'W1', 'S2', 'P1'),
('C-P1015', 'iPhone 12 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A14 Bionic', 7, 12699000, 'W2', 'S1', 'P1'),
('C-P1016', 'iPhone 12 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A14 Bionic', 7, 13699000, 'W2', 'S2', 'P1'),
('C-P1017', 'iPhone 13', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A15 Bionic', 7, 11999000, 'W1', 'S1', 'P2'),
('C-P1018', 'iPhone 13', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A15 Bionic', 7, 12999000, 'W1', 'S2', 'P2'),
('C-P1019', 'iPhone 13', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A15 Bionic', 7, 11999000, 'W2', 'S1', 'P2'),
('C-P1020', 'iPhone 13', 'Kamera Ultra Wide dan Wide 12 MP dan Chip A15 Bionic', 7, 12999000, 'W2', 'S2', 'P2'),
('C-P1021', 'iPhone 13 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A15 Bionic', 7, 14099000, 'W1', 'S1', 'P2'),
('C-P1022', 'iPhone 13 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A15 Bionic', 7, 15099000, 'W1', 'S2', 'P2'),
('C-P1023', 'iPhone 13 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A15 Bionic', 7, 14099000, 'W2', 'S1', 'P2'),
('C-P1024', 'iPhone 13 Pro', 'Kamera Ultra Wide dan Wide 24 MP dan Chip A15 Bionic', 7, 15099000, 'W2', 'S2', 'P2'),
('C-P1025', 'iPhone 14', 'Kamera Ultra Wide dan Wide 16 MP dan Chip A16 Bionic', 7, 13599000, 'W1', 'S1', 'P3'),
('C-P1026', 'iPhone 14', 'Kamera Ultra Wide dan Wide 16 MP dan Chip A16 Bionic', 7, 14599000, 'W1', 'S2', 'P3'),
('C-P1027', 'iPhone 14', 'Kamera Ultra Wide dan Wide 16 MP dan Chip A16 Bionic', 7, 13599000, 'W2', 'S1', 'P3'),
('C-P1028', 'iPhone 14', 'Kamera Ultra Wide dan Wide 16 MP dan Chip A16 Bionic', 7, 14599000, 'W2', 'S2', 'P3'),
('C-P1029', 'iPhone 14 Pro', 'Kamera Ultra Wide dan Wide 32 MP dan Chip A16 Bionic', 7, 19899000, 'W1', 'S1', 'P3'),
('C-P1030', 'iPhone 14 Pro', 'Kamera Ultra Wide dan Wide 32 MP dan Chip A16 Bionic', 7, 20899000, 'W1', 'S2', 'P3'),
('C-P1031', 'iPhone 14 Pro', 'Kamera Ultra Wide dan Wide 32 MP dan Chip A16 Bionic', 7, 19899000, 'W2', 'S1', 'P3'),
('C-P1032', 'iPhone 14 Pro', 'Kamera Ultra Wide dan Wide 32 MP dan Chip A16 Bionic', 7, 20899000, 'W2', 'S2', 'P3'),
('C-P1033', 'iPhone 15', 'Kamera Ultra Wide dan Wide 16 MP dan Chip A17 Bionic', 7, 21299000, 'W1', 'S1', 'P4'),
('C-P1034', 'iPhone 15', 'Kamera Ultra Wide dan Wide 16 MP dan Chip A17 Bionic', 7, 22299000, 'W1', 'S2', 'P4'),
('C-P1035', 'iPhone 15', 'Kamera Ultra Wide dan Wide 16 MP dan Chip A17 Bionic', 7, 21299000, 'W2', 'S1', 'P4'),
('C-P1036', 'iPhone 15', 'Kamera Ultra Wide dan Wide 16 MP dan Chip A17 Bionic', 7, 22299000, 'W2', 'S2', 'P4'),
('C-P1037', 'iPhone 15 Pro', 'Kamera Ultra Wide dan Wide 32 MP dan Chip A17 Bionic', 7, 24999000, 'W1', 'S1', 'P4'),
('C-P1038', 'iPhone 15 Pro', 'Kamera Ultra Wide dan Wide 32 MP dan Chip A17 Bionic', 7, 25999000, 'W1', 'S2', 'P4'),
('C-P1039', 'iPhone 15 Pro', 'Kamera Ultra Wide dan Wide 32 MP dan Chip A17 Bionic', 7, 24999000, 'W2', 'S1', 'P4'),
('C-P1040', 'iPhone 15 Pro', 'Kamera Ultra Wide dan Wide 32 MP dan Chip A17 Bionic', 7, 25999000, 'W2', 'S2', 'P4'),
('C-P1041', 'iPad Air Generasi 5', 'Layar Liquid Retina XDR 12,9 inci dengan Chip Apple M1 dan iPadOS', 7, 9499000, 'W1', 'S1', 'P2'),
('C-P1042', 'iPad Air Generasi 5', 'Layar Liquid Retina XDR 12,9 inci dengan Chip Apple M1 dan iPadOS', 7, 10499000, 'W1', 'S2', 'P2'),
('C-P1043', 'iPad Air Generasi 5', 'Layar Liquid Retina XDR 12,9 inci dengan Chip Apple M1 dan iPadOS', 7, 9499000, 'W2', 'S1', 'P2'),
('C-P1044', 'iPad Air Generasi 5', 'Layar Liquid Retina XDR 12,9 inci dengan Chip Apple M1 dan iPadOS', 7, 10499000, 'W2', 'S2', 'P2'),
('C-P1045', 'iPad Pro Generasi 6', 'Layar Liquid Retina 12,9 inci dengan Chip M2 dan iPadOS 16', 7, 15699000, 'W1', 'S1', 'P3'),
('C-P1046', 'iPad Pro Generasi 6', 'Layar Liquid Retina 12,9 inci dengan Chip M2 dan iPadOS 16', 7, 16699000, 'W1', 'S2', 'P3'),
('C-P1047', 'iPad Pro Generasi 6', 'Layar Liquid Retina 12,9 inci dengan Chip M2 dan iPadOS 16', 7, 15699000, 'W2', 'S1', 'P3'),
('C-P1048', 'iPad Pro Generasi 6', 'Layar Liquid Retina 12,9 inci dengan Chip M2 dan iPadOS 16', 7, 16699000, 'W2', 'S2', 'P3'),
('C-P1049', 'iPad Generasi 9', 'Layar Retina 10,2 inci dengan Chip A13 Bionic dan iPadOS 15', 7, 5000000, 'W1', 'S1', 'P4'),
('C-P1050', 'iPad Generasi 9', 'Layar Retina 10,2 inci dengan Chip A13 Bionic dan iPadOS 15', 7, 6000000, 'W1', 'S2', 'P4'),
('C-P1051', 'iPad Generasi 9', 'Layar Retina 10,2 inci dengan Chip A13 Bionic dan iPadOS 15', 7, 5000000, 'W2', 'S1', 'P4'),
('C-P1052', 'iPad Generasi 9', 'Layar Retina 10,2 inci dengan Chip A13 Bionic dan iPadOS 15', 7, 6000000, 'W2', 'S2', 'P4'),
('C-P1053', 'iPad Generasi 10', 'Layar Liquid Retina 10,9 inci dengan Chip A14 Bionic dan iPadOS 16', 7, 7599000, 'W1', 'S1', 'P4'),
('C-P1054', 'iPad Generasi 10', 'Layar Liquid Retina 10,9 inci dengan Chip A14 Bionic dan iPadOS 16', 7, 8599000, 'W1', 'S2', 'P4'),
('C-P1055', 'iPad Generasi 10', 'Layar Liquid Retina 10,9 inci dengan Chip A14 Bionic dan iPadOS 16', 7, 7599000, 'W2', 'S1', 'P4'),
('C-P1056', 'iPad Generasi 10', 'Layar Liquid Retina 10,9 inci dengan Chip A14 Bionic dan iPadOS 16', 7, 8599000, 'W2', 'S2', 'P4'),
('C-P1057', 'Apple Watch Ultra', 'Baterai lithium-ion bawaan yang dapat diisi ulang Hingga 36 jam', 7, 13999999, 'W2', 'S1', 'P2'),
('C-P1058', 'Apple Watch Series 7', 'Baterai lithium-ion bawaan yang dapat diisi ulang hingga 10 jam', 7, 5599000, 'W2', 'S1', 'P3'),
('C-P1059', 'Apple Watch Series 8', 'Baterai lithium-ion bawaan yang dapat diisi ulang hingga 18 jam', 7, 7199000, 'W2', 'S1', 'P4'),
('C-P1060', 'MacBook Pro M1', '8-Core,7-Core', 7, 16499000, 'W2', 'S2', 'P1'),
('C-P1061', 'MacBook Pro M1', '8-Core,7-Core', 7, 17499000, 'W2', 'S3', 'P1'),
('C-P1062', 'MacBook Pro M2', '8-Core,10-Core', 7, 21499000, 'W2', 'S2', 'P2'),
('C-P1063', 'MacBook Pro M2', '8-Core,10-Core', 7, 22499000, 'W2', 'S3', 'P2'),
('C-P1064', 'MacBook Air M1 Max', '10-Core,16-Core', 7, 28999000, 'W2', 'S2', 'P3'),
('C-P1065', 'MacBook Air M1 Max', '10-Core,16-Core', 7, 29999000, 'W2', 'S3', 'P3'),
('C-P1066', 'MacBook Air M2 Max', '12-Core,19-Core', 7, 43999000, 'W2', 'S2', 'P4'),
('C-P1067', 'MacBook Air M2 Max', '12-Core,19-Core', 7, 44999000, 'W2', 'S3', 'P4'),
('C-P1068', 'iMac 24', '8-Core,8-Core', 7, 25699000, 'W2', 'S3', 'P2');

INSERT INTO supplier (ID_Supplier, Nama_Supplier, Nomor_Telepon) VALUES
('C-SP1', 'PESGadget Suppliers', '6288133334444'),
('C-SP2', 'FIFAGadget Suppliers', '6285717172626'),
('C-SP3', 'WEGadget Suppliers', '6287800998877');

INSERT INTO pemasokan (ID_Pemasokan, Tanggal_Pemasokan) VALUES
('R-S101', '2023-05-01'),
('R-S102', '2023-05-01'),
('R-S103', '2023-05-01'),
('R-S104', '2023-09-01'),
('R-S105', '2023-09-01'),
('R-S106', '2023-09-01'),
('R-S107', '2023-09-01'),
('R-S108', '2024-01-01'),
('R-S109', '2024-01-01'),
('R-S110', '2024-01-01'),
('R-S111', '2024-01-01');

INSERT INTO transaksi (ID_Transaksi, Tanggal_Transaksi) VALUES
('T-C001', '2023-01-01'),
('T-C002', '2023-01-01'),
('T-C003', '2023-01-01'),
('T-C004', '2023-01-01'),
('T-C005', '2023-01-01'),
('T-C006', '2023-01-01'),
('T-C007', '2023-05-01'),
('T-C008', '2023-05-01'),
('T-C009', '2023-05-01'),
('T-C010', '2023-10-02'),
('T-C011', '2023-10-02'),
('T-C012', '2023-10-02'),
('T-C013', '2023-10-02'),
('T-C014', '2023-10-02'),
('T-C015', '2023-10-02'),
('T-C016', '2023-03-15'),
('T-C017', '2023-03-15'),
('T-C018', '2023-03-15'),
('T-C019', '2023-03-15'),
('T-C020', '2023-03-15'),
('T-C021', '2023-03-15'),
('T-C022', '2023-03-15'),
('T-C023', '2023-03-15'),
('T-C024', '2023-04-20'),
('T-C025', '2023-04-20'),
('T-C026', '2023-04-20'),
('T-C027', '2023-04-20'),
('T-C028', '2023-04-20'),
('T-C029', '2023-04-20'),
('T-C030', '2023-04-20'),
('T-C031', '2023-04-20'),
('T-C032', '2023-04-20'),
('T-C033', '2023-04-20'),
('T-C034', '2023-04-20'),
('T-C035', '2023-04-20'),
('T-C036', '2023-05-25'),
('T-C037', '2023-05-25'),
('T-C038', '2023-05-25'),
('T-C039', '2023-05-25'),
('T-C040', '2023-05-25'),
('T-C041', '2023-05-25'),
('T-C042', '2023-05-25'),
('T-C043', '2023-06-30'),
('T-C044', '2023-06-30'),
('T-C045', '2023-06-30'),
('T-C046', '2023-06-30'),
('T-C047', '2023-06-30'),
('T-C048', '2023-06-30'),
('T-C049', '2023-06-30'),
('T-C050', '2023-06-30'),
('T-C051', '2023-05-07'),
('T-C052', '2023-05-07'),
('T-C053', '2023-05-07'),
('T-C054', '2023-05-07'),
('T-C055', '2023-05-07'),
('T-C056', '2023-05-07'),
('T-C057', '2023-05-07'),
('T-C058', '2023-05-07'),
('T-C059', '2023-05-07'),
('T-C060', '2023-05-07'),
('T-C061', '2023-10-08'),
('T-C062', '2023-10-08'),
('T-C063', '2023-10-08'),
('T-C064', '2023-10-08'),
('T-C065', '2023-10-08'),
('T-C066', '2023-10-08'),
('T-C067', '2023-10-08'),
('T-C068', '2023-10-08'),
('T-C069', '2023-10-08'),
('T-C070', '2023-09-15'),
('T-C071', '2023-09-15'),
('T-C072', '2023-09-15'),
('T-C073', '2023-09-15'),
('T-C074', '2023-09-15'),
('T-C075', '2023-09-15'),
('T-C076', '2023-09-15'),
('T-C077', '2023-09-15'),
('T-C078', '2023-09-15'),
('T-C079', '2023-10-20'),
('T-C080', '2023-10-20'),
('T-C081', '2023-10-20'),
('T-C082', '2023-10-20'),
('T-C083', '2023-10-20'),
('T-C084', '2023-10-20'),
('T-C085', '2023-10-20'),
('T-C086', '2023-10-20'),
('T-C087', '2023-11-25'),
('T-C088', '2023-11-25'),
('T-C089', '2023-11-25'),
('T-C090', '2023-11-25'),
('T-C091', '2023-11-25'),
('T-C092', '2023-11-25'),
('T-C093', '2023-11-25'),
('T-C094', '2023-11-25'),
('T-C095', '2023-12-30'),
('T-C096', '2023-12-30'),
('T-C097', '2023-12-30'),
('T-C098', '2023-12-30'),
('T-C099', '2023-12-30'),
('T-C100', '2023-12-30'),
('T-C101', '2023-12-30'),
('T-C102', '2023-12-30'),
('T-C103', '2023-12-30');

#Triger untuk pengurangan stok
DELIMITER //
CREATE TRIGGER tr_after_insert_detail_transaksi
AFTER INSERT ON DetailTransaksi
FOR EACH ROW
BEGIN
    DECLARE stok_terjual INT;
    UPDATE Produk
    SET Stok_Awal = Stok_Awal - 1
    WHERE ID_Produk = NEW.ID_Produk;
END//
DELIMITER ;


INSERT INTO DetailTransaksi (id_transaksi, id_pembeli, id_produk, Metode_Pembayaran) VALUES
('T-C001', 'P-C001', 'C-P1031', 'DEBIT'),
('T-C002', 'P-C002', 'C-P1019', 'CASH'),
('T-C002', 'P-C002', 'C-P1056', 'CASH'),
('T-C002', 'P-C002', 'C-P1005', 'CASH'),
('T-C003', 'P-C003', 'C-P1010', 'DEBIT'),
('T-C003', 'P-C003', 'C-P1001', 'DEBIT'),
('T-C004', 'P-C001', 'C-P1016', 'CASH'),
('T-C005', 'P-C004', 'C-P1048', 'DEBIT'),
('T-C006', 'P-C002', 'C-P1044', 'DEBIT'),
('T-C006', 'P-C002', 'C-P1035', 'DEBIT'),
('T-C007', 'P-C001', 'C-P1016', 'CASH'),
('T-C007', 'P-C001', 'C-P1018', 'CASH'),
('T-C007', 'P-C001', 'C-P1009', 'CASH'),
('T-C008', 'P-C004', 'C-P1014', 'DEBIT'),
('T-C008', 'P-C004', 'C-P1060', 'DEBIT'),
('T-C009', 'P-C002', 'C-P1024', 'CASH'),
('T-C009', 'P-C002', 'C-P1061', 'CASH'),
('T-C009', 'P-C002', 'C-P1062', 'CASH'),
('T-C010', 'P-C005', 'C-P1037', 'CASH'),
('T-C011', 'P-C003', 'C-P1035', 'CASH'),
('T-C012', 'P-C006', 'C-P1001', 'DEBIT'),
('T-C012', 'P-C006', 'C-P1009', 'DEBIT'),
('T-C012', 'P-C006', 'C-P1029', 'DEBIT'),
('T-C013', 'P-C004', 'C-P1054', 'DEBIT'),
('T-C013', 'P-C004', 'C-P1039', 'DEBIT'),
('T-C014', 'P-C007', 'C-P1039', 'DEBIT'),
('T-C014', 'P-C007', 'C-P1030', 'DEBIT'),
('T-C015', 'P-C008', 'C-P1022', 'CASH'),
('T-C015', 'P-C008', 'C-P1034', 'CASH'),
('T-C016', 'P-C009', 'C-P1012', 'DEBIT'),
('T-C017', 'P-C010', 'C-P1039', 'DEBIT'),
('T-C018', 'P-C011', 'C-P1054', 'CASH'),
('T-C018', 'P-C011', 'C-P1010', 'CASH'),
('T-C019', 'P-C012', 'C-P1047', 'CASH'),
('T-C020', 'P-C013', 'C-P1061', 'CASH'),
('T-C021', 'P-C014', 'C-P1067', 'DEBIT'),
('T-C022', 'P-C015', 'C-P1038', 'CASH'),
('T-C023', 'P-C016', 'C-P1056', 'CASH'),
('T-C024', 'P-C017', 'C-P1005', 'CASH'),
('T-C025', 'P-C018', 'C-P1003', 'DEBIT'),
('T-C026', 'P-C019', 'C-P1029', 'CASH'),
('T-C027', 'P-C020', 'C-P1031', 'DEBIT'),
('T-C028', 'P-C021', 'C-P1010', 'DEBIT'),
('T-C029', 'P-C022', 'C-P1021', 'CASH'),
('T-C030', 'P-C023', 'C-P1010', 'DEBIT'),
('T-C031', 'P-C024', 'C-P1054', 'CASH'),
('T-C032', 'P-C025', 'C-P1033', 'DEBIT'),
('T-C033', 'P-C026', 'C-P1031', 'CASH'),
('T-C034', 'P-C027', 'C-P1066', 'DEBIT'),
('T-C035', 'P-C028', 'C-P1029', 'DEBIT'),
('T-C036', 'P-C029', 'C-P1052', 'CASH'),
('T-C036', 'P-C029', 'C-P1034', 'CASH'),
('T-C036', 'P-C029', 'C-P1029', 'CASH'),
('T-C036', 'P-C029', 'C-P1060', 'CASH'),
('T-C037', 'P-C030', 'C-P1020', 'CASH'),
('T-C038', 'P-C031', 'C-P1024', 'DEBIT'),
('T-C039', 'P-C032', 'C-P1065', 'DEBIT'),
('T-C040', 'P-C033', 'C-P1038', 'DEBIT'),
('T-C041', 'P-C034', 'C-P1029', 'CASH'),
('T-C042', 'P-C015', 'C-P1053', 'CASH'),
('T-C043', 'P-C016', 'C-P1047', 'DEBIT'),
('T-C044', 'P-C017', 'C-P1016', 'DEBIT'),
('T-C045', 'P-C018', 'C-P1004', 'DEBIT'),
('T-C046', 'P-C019', 'C-P1023', 'CASH'),
('T-C047', 'P-C020', 'C-P1043', 'CASH'),
('T-C048', 'P-C021', 'C-P1017', 'CASH'),
('T-C049', 'P-C022', 'C-P1024', 'CASH'),
('T-C050', 'P-C023', 'C-P1032', 'CASH'),
('T-C051', 'P-C024', 'C-P1062', 'CASH'),
('T-C052', 'P-C025', 'C-P1030', 'CASH'),
('T-C053', 'P-C026', 'C-P1038', 'DEBIT'),
('T-C054', 'P-C027', 'C-P1013', 'DEBIT'),
('T-C054', 'P-C027', 'C-P1062', 'DEBIT'),
('T-C055', 'P-C028', 'C-P1038', 'DEBIT'),
('T-C056', 'P-C029', 'C-P1017', 'CASH'),
('T-C057', 'P-C030', 'C-P1053', 'DEBIT'),
('T-C058', 'P-C031', 'C-P1044', 'DEBIT'),
('T-C059', 'P-C032', 'C-P1017', 'CASH'),
('T-C060', 'P-C033', 'C-P1045', 'DEBIT'),
('T-C060', 'P-C033', 'C-P1018', 'DEBIT'),
('T-C061', 'P-C034', 'C-P1041', 'CASH'),
('T-C062', 'P-C015', 'C-P1025', 'CASH'),
('T-C063', 'P-C016', 'C-P1044', 'DEBIT'),
('T-C064', 'P-C017', 'C-P1014', 'CASH'),
('T-C065', 'P-C018', 'C-P1018', 'DEBIT'),
('T-C066', 'P-C019', 'C-P1029', 'CASH'),
('T-C067', 'P-C020', 'C-P1013', 'CASH'),
('T-C068', 'P-C021', 'C-P1053', 'DEBIT'),
('T-C069', 'P-C022', 'C-P1036', 'DEBIT'),
('T-C070', 'P-C023', 'C-P1051', 'CASH'),
('T-C071', 'P-C024', 'C-P1063', 'DEBIT'),
('T-C072', 'P-C025', 'C-P1036', 'CASH'),
('T-C073', 'P-C026', 'C-P1050', 'DEBIT'),
('T-C074', 'P-C027', 'C-P1062', 'DEBIT'),
('T-C075', 'P-C028', 'C-P1061', 'CASH'),
('T-C076', 'P-C029', 'C-P1028', 'DEBIT'),
('T-C077', 'P-C030', 'C-P1062', 'DEBIT'),
('T-C078', 'P-C031', 'C-P1010', 'DEBIT'),
('T-C079', 'P-C032', 'C-P1061', 'DEBIT'),
('T-C080', 'P-C033', 'C-P1027', 'CASH'),
('T-C081', 'P-C034', 'C-P1057', 'DEBIT'),
('T-C082', 'P-C015', 'C-P1010', 'DEBIT'),
('T-C083', 'P-C016', 'C-P1040', 'CASH'),
('T-C083', 'P-C016', 'C-P1004', 'CASH'),
('T-C084', 'P-C017', 'C-P1016', 'DEBIT'),
('T-C085', 'P-C018', 'C-P1057', 'CASH'),
('T-C086', 'P-C019', 'C-P1010', 'CASH'),
('T-C087', 'P-C020', 'C-P1011', 'CASH'),
('T-C088', 'P-C021', 'C-P1066', 'DEBIT'),
('T-C089', 'P-C022', 'C-P1001', 'DEBIT'),
('T-C090', 'P-C023', 'C-P1035', 'DEBIT'),
('T-C091', 'P-C024', 'C-P1029', 'DEBIT'),
('T-C092', 'P-C025', 'C-P1005', 'DEBIT'),
('T-C093', 'P-C026', 'C-P1021', 'DEBIT'),
('T-C094', 'P-C027', 'C-P1034', 'DEBIT'),
('T-C095', 'P-C028', 'C-P1046', 'DEBIT'),
('T-C096', 'P-C029', 'C-P1011', 'DEBIT'),
('T-C097', 'P-C030', 'C-P1022', 'DEBIT'),
('T-C098', 'P-C031', 'C-P1066', 'DEBIT'),
('T-C099', 'P-C032', 'C-P1033', 'DEBIT'),
('T-C100', 'P-C033', 'C-P1022', 'CASH'),
('T-C101', 'P-C034', 'C-P1067', 'DEBIT'),
('T-C102', 'P-C015', 'C-P1048', 'DEBIT'),
('T-C103', 'P-C016', 'C-P1033', 'CASH'),
('T-C103', 'P-C016', 'C-P1041', 'CASH');

#Trigger untuk penambahan stok
DELIMITER //
CREATE TRIGGER UpdatePemasokan
AFTER INSERT ON DetailPemasokan
FOR EACH ROW
BEGIN
	UPDATE produk
	SET Stok_awal = Stok_awal + NEW.Jumlah_Diterima
	WHERE ID_Produk = NEW.Produk_ID_Produk;
END//
DELIMITER ;

INSERT INTO DetailPemasokan (ID_Pemasokan, ID_Supplier, Produk_ID_Produk, Jumlah_Diterima)
VALUES
    ('R-S101', 'C-SP1', 'C-P1037', 2),
    ('R-S102', 'C-SP1', 'C-P1039', 3),
    ('R-S103', 'C-SP3', 'C-P1033', 4),
    ('R-S104', 'C-SP2', 'C-P1049', 2),
    ('R-S105', 'C-SP2', 'C-P1052', 4),
    ('R-S106', 'C-SP3', 'C-P1053', 5),
    ('R-S107', 'C-SP3', 'C-P1056', 3),
    ('R-S108', 'C-SP1', 'C-P1054', 2),
    ('R-S109', 'C-SP1', 'C-P1059', 3),
    ('R-S110', 'C-SP2', 'C-P1066', 4),
    ('R-S111', 'C-SP2', 'C-P1067', 2);

#produk paling banyak terjual selama setahun
SELECT
    DetailTransaksi.ID_Produk,
    produk.Produk,
    COUNT(*) AS Total_Penjualan,
    produk.Stok_Awal as `Sisa Stok`
FROM kelompok1project.DetailTransaksi
JOIN kelompok1project.Produk ON DetailTransaksi.ID_Produk = Produk.ID_Produk
GROUP BY DetailTransaksi.ID_Produk, Produk.Produk
ORDER BY Total_Penjualan DESC
LIMIT 5;

#pembeli yang paling banyak membeli di toko selama setahun
SELECT 
    Pembeli.ID_Pembeli,
    Pembeli.Nama_Pembeli,
    COUNT(DetailTransaksi.ID_DetailTransaksi) AS Total_Pembelian
FROM Pembeli
JOIN DetailTransaksi ON Pembeli.ID_Pembeli = DetailTransaksi.ID_Pembeli
GROUP BY Pembeli.ID_Pembeli, Pembeli.Nama_Pembeli
ORDER BY Total_Pembelian DESC
LIMIT 5;

#bukti update stok
SELECT
    produk.ID_Produk,
    produk.Produk,
    detailpemasokan.Jumlah_Diterima,
    (produk.Stok_Awal + detailpemasokan.Jumlah_Diterima) AS Stok_Update
FROM
    produk
JOIN detailpemasokan ON produk.ID_Produk = detailpemasokan.Produk_ID_Produk
JOIN pemasokan ON detailpemasokan.ID_Pemasokan = pemasokan.ID_Pemasokan
WHERE
    pemasokan.Tanggal_Pemasokan = '2023-05-01';
    

#produk dengan jumlah penjualan terbanyak dengan detail produk lengkap
select DetailTransaksi.Id_produk, 
		produk.produk,
		produk.deskripsi_produk,
        concat('Rp ',produk.harga) as harga,
		warna.warna,
        concat(memory.kapasitas_gb,' GB') as memory ,
        produksi.tahun_produksi,
		count(*) as jumlah_terjual
from detailtransaksi
join produk on produk.Id_produk = detailtransaksi.id_produk
join warna on produk.id_warna = warna.id_warna
join memory on produk.id_memory = memory.id_memory
join produksi on produk.id_produksi = produksi.id_produksi
group by produk.produk, detailtransaksi.id_produk 
order by jumlah_terjual desc;


#tanggal dengan penjualan terbanyak dalam hari itu
select tanggal_transaksi,count(id_detailtransaksi) as total_penjualan 
from transaksi 
join detailtransaksi on transaksi.id_transaksi = detailtransaksi.id_transaksi
group by tanggal_transaksi
order by total_penjualan desc;

#jumlah pembeli paling banyak mengunjungi toko
select detailtransaksi.id_pembeli,count(distinct detailtransaksi.id_transaksi) as jumlah_mengunjungi
from detailtransaksi
group by id_pembeli
order by jumlah_mengunjungi desc;
 
#customer paling banyak mengeluarkan uang
select pembeli.id_pembeli,pembeli.nama_pembeli,
		pembeli.nomor_telepon, sum(produk.harga) as total_pengeluaran
from pembeli
join detailtransaksi on pembeli.id_pembeli = detailtransaksi.id_pembeli
join produk on detailtransaksi.id_produk = produk.id_produk
group by id_pembeli
order by total_pengeluaran desc;

#produk yang banyak dibeli pada tahun produksi berapanya
select produksi.id_produksi,produksi.tahun_produksi,count(detailtransaksi.id_produk) as banyak_dibeli 
from produksi 
join produk on produksi.id_produksi = produk.id_produksi
join detailtransaksi on produk.id_produk = detailtransaksi.id_produk
group by id_produksi
order by banyak_dibeli desc;

#supplier yang paling banyak pemasokan/restock
select supplier.id_supplier, supplier.nama_supplier,count(*) as jumlah_restock
from detailpemasokan 
join supplier on detailpemasokan.id_supplier = supplier.id_supplier
group by id_supplier
order by jumlah_restock desc;




#syntax struk
DELIMITER //
CREATE PROCEDURE `struk_pembelian`(
    IN IDTransaksi VARCHAR(6)
)
BEGIN
	declare totalHarga INT;
    CREATE TEMPORARY TABLE IF NOT EXISTS TempStrukPembelian (
        Id_Transaksi VARCHAR(6),
        Tanggal_Transaksi DATE,
        Id_Pembeli VARCHAR(6),
        Nama_Pembeli VARCHAR(45),
        Nomor_Telepon VARCHAR(45),
        ID_Produk VARCHAR(7),
        Produk VARCHAR(45),
        Deskripsi_Produk VARCHAR(1000),
        Tahun_Produksi YEAR,
        Warna VARCHAR(45),
        Kapasitas_GB INT,
        Harga INT,
        Metode_Pembayaran VARCHAR(45),
        Total_Harga INT  -- Column to store total harga
    );
    -- Insert data into temporary table
    INSERT INTO TempStrukPembelian
    SELECT
        dt.Id_Transaksi,
        t.Tanggal_Transaksi,
        dt.Id_Pembeli,
        pb.Nama_Pembeli,
        pb.Nomor_Telepon,
        pr.ID_Produk,
        pr.Produk,
        pr.Deskripsi_produk,
        pd.Tahun_Produksi,
        w.Warna,
        m.Kapasitas_GB,
        pr.Harga,
        dt.Metode_Pembayaran,
        0  
    FROM
        detailtransaksi dt
    JOIN transaksi t ON t.id_transaksi = dt.id_transaksi
    JOIN produk pr ON pr.id_produk = dt.id_produk
    JOIN pembeli pb ON pb.id_pembeli = dt.id_pembeli
    JOIN produksi pd ON pd.id_produksi = pr.id_produksi
    JOIN warna w ON w.id_warna = pr.id_warna
    JOIN memory m ON m.id_memory = pr.id_memory
    WHERE
        dt.id_transaksi = IDTransaksi;

    SELECT SUM(Harga) INTO totalHarga
    FROM TempStrukPembelian
    WHERE Id_Transaksi = IDTransaksi;

    UPDATE TempStrukPembelian
    SET Total_Harga = totalHarga;

    SELECT * FROM TempStrukPembelian;

    DROP TEMPORARY TABLE IF EXISTS TempStrukPembelian;
END //
DELIMITER ;

call struk_pembelian("T-C002");
#drop procedure struk_pembelian;
