--derste en son öğrendiklerim
create database school_library;
use school_library;
create table uyeler(
uyeNo int not null primary key identity(1,1),
uyeAdi nvarchar(50) not null,
uyeSoyadi nvarchar(50) not null,
Eposta nvarchar(50) not null,
cinsiyet char(2),
telefon int
);

use school_library;
create table adresler(
adresNo int not null Primary Key identity(1,1),
Sehir nvarchar(20) not null,
mahalle nvarchar(50) not null,
binaNo int not null,
cadde nvarchar(50) not null,
ulke nvarchar (100) not null,
postakodu int
);
 
 ALTER TABLE uyeler ADD adresNo int constraint FK_uyeler_adres Foreign key (adresNo) references ADRESLER (adresNo);
 
 create table kutuphane(
kutuphaneNo int not null identity (1,1) primary key,
kutuphaneIsmi nvarchar(50),
acýklama nvarchar(500),
adresNo int constraint fk_adresler_kutuphane foreign key (adresNo) references adresler (adresNo)
);

create table emanet(
emanetNo int not null identity (1,1) primary key,
emanetTarihi datetime,
teslimTarihi datetime,
uyeNo int constraint FK_uye_emanet FOREIGN KEY (uyeNo) references uyeler(uyeNo),
);

create table kitaplar(
ISBN nvarchar(50)  identity (1,1) primary key,
kitapAdi nvarchar(100) not null,
sayfaSayi int,
yayintarihi datetime,
);
