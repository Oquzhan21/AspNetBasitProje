Create table GUrunler
(
	ID int identity(1,1) primary key,
	UrunAdi nvarchar(max),
	MkareFiyat nvarchar(max),
	UrunId int,
	UrunResimYolu nvarchar(max)
)
Create table GirisPanel
(
	ID int identity(1,1),
	KullaniciAdi nvarchar(50),
	Sifre nvarchar(50)
)
Create table GReferans
(
	ID int identity(1,1) primary key,
	ReferansAdý nvarchar(max),
	ReferansFotosu nvarchar(max)
)
Create table GProje
(
	ID int identity(1,1) primary key,
	ProjeAdi nvarchar(max),
	ProjeFotosu nvarchar(max)
)

Create table GKategoriler
(
	kategoriId int identity(1,1) primary key,
	KategoriAdi nvarchar(max),
	KategoriResim nvarchar(max) 
)

Insert into GirisPanel(KullaniciAdi,Sifre) values('oguzhanercn7','1122334455')
Insert into GirisPanel(KullaniciAdi,Sifre) values('huseyingndy','1q2w3e4r')
Insert into GirisPanel(KullaniciAdi,Sifre) values('davutgndy6','9603dvt')
Insert into GUrunler(UrunAdi,MkareFiyat,UrunId,UrunResimYolu) values('Kasap Reyonu','1000TL',1)
Insert into GUrunler(UrunAdi,MkareFiyat,UrunId) values('Pasta Ve Börek Reyonu','1000TL',2)
Insert into GUrunler(UrunAdi,MkareFiyat,UrunId) values('Zeytin Reyonu','1000TL',3)
Insert into GUrunler(UrunAdi,MkareFiyat,UrunId) values('Buzhane Reyonu','1000TL',4)
Insert into GUrunler(UrunAdi,MkareFiyat,UrunId) values('Morg Reyonu','1000TL',5)
Insert into GUrunler(UrunAdi,MkareFiyat,UrunId) values('Sütlük Reyonu','1000TL',6)
select * from GUrunler
Insert into GKategoriler(KategoriAdi) values('Sütlük Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Market Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Büfe Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Kasap Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Pastane Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Ýmalat Dolaplarý')
Insert into GKategoriler(KategoriAdi) values('Soðuk Hava Dolaplarý')
Insert into GKategoriler(KategoriAdi) values('Soðutma Ekipmanlarý')
Insert into GKategoriler(KategoriAdi) values('Morg')
Insert into GKategoriler(KategoriAdi) values('Zeytinlik Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Reçellik Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Dondurma Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Þoklama Gruplarý')
Insert into GKategoriler(KategoriAdi) values('Buzlu Su Üniteleri')
Insert into GKategoriler(KategoriAdi) values('Havuz Reyonlarý')
Insert into GKategoriler(KategoriAdi) values('Waffle-Kumpir')
Select * from GKategoriler
Create table GGUrunler
(
	ID int identity(1,1) primary key,
	UrunAdi nvarchar(max),
	kategoriId int,
	UrunResimYolu nvarchar(max)
)
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Sütlük/Önü Açýk',1,'~/Images/OnuAcikSutlukDolabi.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Sütlük/Önü Açýk',1,'~/Images/onuacik.png')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Sütlük/Kapaklý',1,'~/Images/KapakliSutlukDolabi.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Sütlük/Kapaklý',1,'~/Images/kapakliDolab.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Sütlük/Sürgülü',1,'~/Images/Surgulu.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Sütlük/Sürgülü',1,'~/Images/Surgulu2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Market/Amörtisör',2,'~/Images/amortisorlu.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Market/Amörtisör',2,'~/Images/amortisorlu2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Market/Þarküteri',2,'~/Images/sarkuteri.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Kasap',4,'~/Images/kasapreyonu.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Kasap',4,'~/Images/kasapreyonu2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Kasap',4,'~/Images/kasapreyonu3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Kasap',4,'~/Images/kasapppp.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Büfe',3,'~/Images/bufe.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Büfe',3,'~/Images/bufe2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Büfe',3,'~/Images/bufe3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Büfe',3,'~/Images/bufe4.jpg')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Pastane',5,'~/Images/pastane.png')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Pastane',5,'~/Images/pastane2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Pastane',5,'~/Images/pastane3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Pastane',5,'~/Images/pastane4.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Pastane',5,'~/Images/pastane5.png')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Ýmalat Dolabý',6,'~/Images/2014410151537309-2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Ýmalat Dolabý',6,'~/Images/imalat.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Ýmalat Dolabý',6,'~/Images/imalat2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Ýmalat Dolabý',6,'~/Images/imalat3.png')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/eksikýrk.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/konteyner.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/sogukhavadeposu.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/soguk-hava-deposu.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/soguk-hava-deposu-1.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/sogukhavadeposu3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/soguk-hava-deposu-raflari3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/soguk-oda.png')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/sogutmahavadeposu5.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðuk Hava Deposu',7,'~/Images/soðukhavaa.jpg')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Evaporatör',8,'~/Images/evaporator.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Evaporatör',8,'~/Images/evaporator2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Evaporatör',8,'~/Images/evaporator3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Kondenser',8,'~/Images/kondenser.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Kondenser',8,'~/Images/kondenser2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Defreeze Cihaz',8,'~/Images/defreeze-cihazlar.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Dorin Kompressör',8,'~/Images/Dorinkompressör.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Emre Kompressör',8,'~/Images/emrekokompressor.jpeg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Copeland Kompresör',8,'~/Images/kopenhag.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Maneurop Kompressör',8,'~/Images/maneurop.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Maneurop Kompressör',8,'~/Images/maneurop2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðutma Ekipmaný',8,'~/Images/sogutmaEkipmani.JPG')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Soðutma Ekipmaný',8,'~/Images/sogutmaEkipmani2.JPG')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('V Tipi Kondenser',8,'~/Images/vtipikondenser.png')


Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Morg',9,'~/Images/morg1.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Morg',9,'~/Images/morg2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Morg',9,'~/Images/morg3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Morg',9,'~/Images/morg4.jpg')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Zeytinlik Reyonu',10,'~/Images/zeytinlik.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Zeytinlik Reyonu',10,'~/Images/zeytinlik2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Zeytinlik Reyonu',10,'~/Images/zeytinlik3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Zeytinlik Reyonu',10,'~/Images/zeytinlik4.jpg')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Reçellik Reyonu',11,'~/Images/recel.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Reçellik Reyonu',11,'~/Images/recellik.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Reçellik Reyonu',11,'~/Images/recellik2.JPG')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Dondurma Reyonu',12,'~/Images/dondurma.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Dondurma Reyonu',12,'~/Images/dondurma1.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Dondurma Reyonu',12,'~/Images/dondurma2.JPG')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Dondurma Reyonu',12,'~/Images/dondurma3.jpeg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Dondurma Reyonu',12,'~/Images/dondurma4.JPG')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Dondurma Reyonu',12,'~/Images/dondurma5.jpg')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Þoklama Gruplarý',13,'~/Images/Soklama.jpeg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Þoklama Gruplarý',13,'~/Images/soklama1.JPG')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Þoklama Gruplarý',13,'~/Images/soklama2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Þoklama Gruplarý',13,'~/Images/soklama3.jpg')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Buzlu Su',14,'~/Images/buzlusu.JPG')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Buzlu Su',14,'~/Images/buzlusu2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Buzlu Su',14,'~/Images/buzlusu3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Buzlu Su',14,'~/Images/buzlusu4.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Buzlu Su',14,'~/Images/buzlusu5.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Ýce Builder',14,'~/Images/icebuilder_cutaway.jpg')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Havuz Reyonu',15,'~/Images/havuzreyonu.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Havuz Reyonu',15,'~/Images/havuzreyonu2.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Havuz Reyonu',15,'~/Images/havuzreyonu3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Havuz Reyonu',15,'~/Images/havuzreyonu4.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Havuz Reyonu',15,'~/Images/havuzreyonu5.JPG')

Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Waffle/Kumpir',16,'~/Images/kumpirwaffle.jpeg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Waffle/Kumpir',16,'~/Images/kumpirwaffle2.jpeg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Waffle/Kumpir',16,'~/Images/wafflekumpir3.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Waffle/Kumpir',16,'~/Images/wafflekumpir4.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Waffle/Kumpir',16,'~/Images/wafflekumpir5.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Waffle/Kumpir',16,'~/Images/wafflekumpir6.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Waffle/Kumpir',16,'~/Images/wafflekumpir7.jpg')
Insert into GGUrunler(UrunAdi,kategoriId,UrunResimYolu) values('Waffle/Kumpir',16,'~/Images/wafflekumpir8.jpg')


Select * from GGUrunler where kategoriId=1
Select * from GKategoriler
