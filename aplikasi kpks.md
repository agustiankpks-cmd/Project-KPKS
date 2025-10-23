# 🧭 Bagan Arsitektur Database KPKS

## 📘 Ringkasan
KPKS memiliki dua sistem utama dengan arsitektur database yang berbeda:

- **MS Access** — digunakan oleh unit *Minimarket* dengan aplikasi **Post Server**.  
- **MySQL** — digunakan oleh unit *Simpan Pinjam* dengan aplikasi **D-Tech SP3 (Desktop)**, sekaligus menjadi basis data untuk **Website Anggota**.

---

## 💻 Bagan Alur Sistem KPKS

```mermaid
flowchart TB

  %% Bagian 1: Minimarket
  subgraph Minimarket [Unit Minimarket]
    direction LR
    Kasir["Kasir / Komputer Minimarket"] --> PostServer["Aplikasi: Post Server"]
    PostServer -->|Input & Transaksi| AccessDB[("Database: MS Access")]
  end

  %% Bagian 2: Simpan Pinjam
  subgraph SimpanPinjam [Unit Simpan Pinjam]
    direction TB
    UserSP["Petugas Simpan Pinjam"] --> DTech["Aplikasi: D-Tech SP3 (Desktop)"]
    DTech -->|Simpan / Ambil Data| MySQLDB[("Database: MySQL")]
    MySQLDB -->|Sinkronisasi / Replikasi| WebServer["Server Website"]
    WebServer --> Website["🌐 Website Anggota"]
    Website -->|Akses Online| Anggota["👥 Anggota Koperasi"]
  end

  %% Informasi di Website
  Website --> InfoPinjaman[("Informasi:
- Sisa Pinjaman SP2–SP6
- Tabungan Sukarela")]

  %% Style
  classDef db fill:#f9f,stroke:#333,stroke-width:1px;
  class AccessDB,MySQLDB db;
  classDef web fill:#b3e6ff,stroke:#333,stroke-width:1px;
  class WebServer,Website web;
