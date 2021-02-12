# importir_org_tes
test aplikasi stok dengan Laravel 8 - CRUD API - API ENDPOINT 

Framework : Laravel 8
Engine  : PHP 8
RDBMS : MYSQL
File : stok.sql
Api Endpoint :

#tabel Users_role 
ROLE: 0-admin,1-gudang,3-accounting,4-keuangan


#login , register , detail
POST - http://localhost:8000/api/login
POST - http://localhost:8000/api/register
POST - http://localhost:8000/api/details


#tabel category
#ROLE: admin,keuangan,accounting
GET - http://localhost:8000/api/category
POST - http://localhost:8000/api/category
GET - http://localhost:8000/api/category/{id}
PUT - http://localhost:8000/api/category/{id}
DELETE - http://localhost:8000/api/category/{id}

#tabel Barang
#ROLE: admin,keuangan,accounting
GET - http://localhost:8000/api/barang
POST - http://localhost:8000/api/barang
GET - http://localhost:8000/api/barang/{id}
PUT - http://localhost:8000/api/barang/{id}
DELETE - http://localhost:8000/api/barang/{id}

#tabel Barang Masuk
#ROLE: admin,gudang,keuangan,accounting
GET - http://localhost:8000/api/barangmasuk
POST - http://localhost:8000/api/barangmasuk
GET - http://localhost:8000/api/barangmasuk/{id}
PUT - http://localhost:8000/api/barangmasuk/{id}
DELETE - http://localhost:8000/api/barangmasuk/{id}


#tabel Barang Keluar
#ROLE: admin,gudang,keuangan,accounting
GET - http://localhost:8000/api/barangkeluar
POST - http://localhost:8000/api/barangkeluar
GET - http://localhost:8000/api/barangkeluar/{id}
PUT - http://localhost:8000/api/barangkeluar/{id}
DELETE - http://localhost:8000/api/barangkeluar/{id}


#LAPORAN STOK - harian - mingguan - bulanan - tahunan
#ROLE: admin,keuangan,accounting
GET - http://localhost:8000/api/lapstok
GET - http://localhost:8000/api/lapstok/{id}

#LAPORAN Barang Masuk - harian - mingguan - bulanan - tahunan
#ROLE: admin,gudang,keuangan,accounting
GET - http://localhost:8000/api/lap_barangmasuk
GET - http://localhost:8000/api/lap_barangmasuk/{id}

#LAPORAN Barang Keluar - harian - mingguan - bulanan - tahunan
#ROLE: admin,gudang,keuangan,accounting
GET - http://localhost:8000/api/lap_barangkeluar
GET - http://localhost:8000/api/lap_barangkeluar/{id}


