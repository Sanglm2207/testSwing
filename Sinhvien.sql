CREATE DATABASE Test3
 USE [Test3]
 GO

 IF OBJECT_ID('SinhVien') IS NOT NULL
 DROP TABLE SinhVien
 GO
 CREATE TABLE SinhVien
 (
	MaSV nvarchar(50) NOT NULL,
    HoTen nvarchar(50) NULL,
    GioiTinh BIT NULL,
    Que nvarchar(50) NULL,
    MaLop nvarchar(50) NOT NULL
	CONSTRAINT PK_SinhVien PRIMARY KEY (MaSV),
	CONSTRAINT FK_SinhVien_Lop FOREIGN KEY (MaLop) REFERENCES Lop
)

IF OBJECT_ID('Lop') IS NOT NULL
 DROP TABLE Lop
 GO
 CREATE TABLE Lop
 (
	MaLop nvarchar(50) NOT NULL,
    TenLop nvarchar(50) NULL
	CONSTRAINT PK_Lop PRIMARY KEY (MaLop)
	
)


INSERT INTO Lop VALUES ('1','PT13301_UD')
INSERT INTO Lop VALUES ('2','PT13302_UD')
INSERT INTO Lop VALUES ('3','PT13303_UD')
INSERT INTO Lop VALUES ('4','PT13304_UD')
INSERT INTO Lop VALUES ('5','PT13305_UD')
INSERT INTO Lop VALUES ('6','PT13306_UD')

INSERT INTO SinhVien VALUES ('PH001',N'Nguyễn Văn Quý',1,N'Gia Lai','1')
INSERT INTO SinhVien VALUES ('PH002',N'Lại Minh Sáng',1,N'Hà Nội','2')
INSERT INTO SinhVien VALUES ('PH003',N'Nguyễn Ngọc Thiện',1,N'Nam Định','2')
INSERT INTO SinhVien VALUES ('PH004',N'Nguyễn  Trọng Vũ',1,N'Hà Nội','2')
INSERT INTO SinhVien VALUES ('PH005',N'Lê Mạnh Tuấn',1,N'Đồng Tháp','3')
INSERT INTO SinhVien VALUES ('PH006',N'Nguyễn Thị Ngọc Khánh',0,N'Thái Bình','4')
INSERT INTO SinhVien VALUES ('PH007',N'Nguyễn Thị Mỹ Duyên',1,N'Hòa Bình','5')
INSERT INTO SinhVien VALUES ('PH008',N'Nguyễn Đăng Hào',1,N'Cà Mau','5')
INSERT INTO SinhVien VALUES ('PH009',N'Trần Thị Thùy Trang',0,N'Hà Nội','6')
INSERT INTO SinhVien VALUES ('PH010',N'Tăng Bá Minh',1,N'Hải Dương','2')

SELECT MaLop FROM Lop
SELECT * FROM SinhVien
select * from Lop where TenLop='PT13302_UD'

SELECT * FROM SinhVien  WHERE MaLop='1'
SELECT MaSV, HoTen, GioiTinh, Que, MaLop FROM SinhVien WHERE MaLop='2'

DELETE FROM SINHVIEN WHERE MaSV='PH010'

UPDATE SINHVIEN SET HoTen=N'Lại Minh Sáng',GioiTinh=1,Que=N'Hà Tây' WHERE MaSV='PH002'
