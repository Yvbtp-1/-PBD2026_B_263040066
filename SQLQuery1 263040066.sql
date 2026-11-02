CREATE TABLE Produk (
    ProdukID    INT,
    SKU         VARCHAR(15),
    NamaProduk  VARCHAR(100),
    Harga       DECIMAL(10, 2),
    Stok        INT,
);

-- Cek struktur tabel (opsional)
EXEC sp_help 'Produk';