-- 1. Primary Key untuk Produk (kolom harus NOT NULL dulu)
ALTER TABLE Produk
ALTER COLUMN ProdukID INT NOT NULL;
GO
ALTER TABLE Produk
ADD CONSTRAINT PK_Produk PRIMARY KEY (ProdukID);
GO

-- 2. Kolom NoTelepon di Pelanggan
ALTER TABLE Pelanggan
ADD NoTelepon VARCHAR(20) NULL;
GO

-- 3. Harga wajib diisi
ALTER TABLE Produk
ALTER COLUMN Harga DECIMAL(10, 2) NOT NULL;
GO

EXEC sp_help 'Produk';
EXEC sp_help 'Pelanggan';