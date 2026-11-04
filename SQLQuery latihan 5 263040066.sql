-- 1. Buat tabel detail
CREATE TABLE PesananDetail (
    PesananDetailID INT IDENTITY(1,1) PRIMARY KEY,
    PesananID       INT NOT NULL,
    ProdukID        INT NOT NULL,
    Jumlah          INT NOT NULL,

    CONSTRAINT FK_Detail_Header
        FOREIGN KEY (PesananID) REFERENCES PesananHeader(PesananID),
    CONSTRAINT FK_Detail_Produk
        FOREIGN KEY (ProdukID) REFERENCES Produk(ProdukID)
);
GO

-- 2. Harus GAGAL
DROP TABLE Pelanggan;
GO

-- 3. Harus GAGAL
DROP TABLE PesananHeader;
GO

-- 4. Berhasil: hapus dari anak ke induk
DROP TABLE PesananDetail;
GO
DROP TABLE PesananHeader;
GO
DROP TABLE Pelanggan;
GO