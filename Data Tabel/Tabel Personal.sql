CREATE TABLE Personal (
  Kode varchar(10) NOT NULL,--tool yang dipakai txtKode
  Nama varchar(50) NULL,--tool yang dipakai txtNama
  Tempat varchar(30) NULL, --tool yang dipakai txtTempat
  Tgl_Lahir smalldatetime NULL, --dtpLahir
  JK varchar(1) NULL, --jika laki laki = 1 dan perempuan =2 tool yang dipakai combobox
  Unit varchar(10) NULL, --combobox --cmbUnit
  Tgl_Masuk smalldatetime NULL, --dateTimePicker----dtpMasuk
  Klasifikasi1 varchar(10) NULL,---combobox---cmbKlasifikasi1
  Klasifikasi2 varchar(10) NULL, ---combobox---cmbKlasifikasi2
  Status varchar(10) NULL,--berisi aktif dan non aktif --tool combobobox---cmbStatus
  Alamat varchar(100) NULL, --tool yang dipakai txtAlamat
  Identitas varchar(50) NULL, ----tool yang dipakai txtIdentitas
  NoTelp varchar (12) NULL ----------tool yang dipakai txtNoTelp
);
