# Rekap Penilaian Lomba Web Development MIT-WEEK 2026

Dokumen ini digunakan untuk mencatat hasil penilaian setiap tim peserta, disesuaikan langsung dengan format isian pada portal penilaian juri.
Setiap draf masukan dirancang proporsional: memuat apresiasi konsep, koreksi bug kritis, serta saran peningkatan metode teknis (maksimal 2.000 karakter).

## Klasemen Sementara Hasil Penilaian (20 Tim)

| Peringkat | Tim / Proyek | Folder Sumber | Fungsionalitas (35%) | Kesesuaian (25%) | UI/UX (20%) | Kualitas Kode (10%) | Dokumentasi (10%) | Nilai Akhir |
| :---: | :--- | :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | Ridz010 - Ward-Ly | `wardly-app` | 98 | 98 | 97 | 98 | 97 | **97.70** |
| 2 | Ahmad Syifa'ul F. - JagaRuang | `JagaRuang` | 97 | 97 | 96 | 94 | 94 | **96.30** |
| 3 | Yanuar Faturrahman - Guardian Digital | `guardian-digital` | 96 | 98 | 97 | 92 | 93 | **96.20** |
| 4 | Linus Wannabe - Clarity | `clarity` | 97 | 96 | 96 | 94 | 94 | **96.05** |
| 5 | Legansdeveloper - Cynthia | `MIT-WEBDEVELOPMENT-IFORB` | 96 | 95 | 97 | 96 | 95 | **95.85** |
| 6 | hissyam90 - Saring | `saring-app` | 96 | 97 | 95 | 93 | 94 | **95.60** |
| 7 | Tim Pecut Claude - AMBA | `MIT-week` | 95 | 97 | 95 | 94 | 95 | **95.40** |
| 8 | Zaid Al Hibbur Rasul - ITIHIX | `ITIHIX` | 95 | 97 | 95 | 93 | 92 | **95.15** |
| 9 | ProgrammerAkhirZaman - CEKIN | `Cekin` | 96 | 98 | 96 | 86 | 92 | **95.10** |
| 10 | M. Ridho Alfarod - TUNTUN | `TUNTUN_KARHUTLA` | 93 | 95 | 96 | 94 | 90 | **93.90** |
| 11 | 404Forbidden (MIT-002) - PANDU | `pandu` | 90 | 98 | 93 | 82 | 92 | **92.00** |
| 12 | Nathan Chandra - CekDulu | `web-development` | 86 | 97 | 98 | 96 | 82 | **91.75** |
| 13 | Tim Tiga Trio (MIT-010) - TRASP | `TRASP` | 92 | 90 | 90 | 88 | 89 | **90.50** |
| 14 | Lodraalbar - Spot the Scam | `Spot-the-Scam-Cek-Pesan-Penipuan` | 90 | 90 | 86 | 82 | 87 | **88.25** |
| 15 | ArmBagus dkk. - VeriFy | `VeriFy-` | 82 | 95 | 96 | 80 | 84 | **88.05** |
| 16 | MaharajaGeral / ITK - Cekkan | `Cekkan` | 88 | 90 | 89 | 85 | 75 | **87.10** |
| 17 | BASIS-64 (MIT-009) - DaveMod | `davemoderator` | 86 | 88 | 90 | 88 | 65 | **85.40** |
| 18 | Nosutora - Guardian | `Guardian` | 82 | 80 | 88 | 88 | 85 | **83.60** |
| 19 | Leonardo Elian - FRAUD-ANT | `FRAUDD-ANT/FRAUD-ANT` | 78 | 82 | 88 | 85 | 80 | **81.90** |
| 20 | anugrahdwantara - JeBe | `JeBe-Jebakan_Betmen` | 72 | 78 | 76 | 76 | 82 | **75.20** |

---

## 1. Tim: 404Forbidden (MIT-002) - PANDU
- **Folder Sumber**: `pandu`
- **Ketua Tim**: Rio Ardian Pratama | Telkom University
- **Tautan Deployment**: https://pandu.web.id

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 90 | 31.50 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 93 | 18.60 |
| Kualitas Kode & Pemeliharaan | 10% | 82 | 8.20 |
| Dokumentasi | 10% | 92 | 9.20 |
| **Total Nilai Akhir** | **100%** | - | **92.00** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.488 karakter (aman di bawah batas 2.000 karakter).*

```text
Konsep platform PANDU sangat relevan dan tepat sasaran menjawab modus kejahatan siber di Indonesia (kurir APK, tilang ETLE, hingga phising bank). Fitur sandbox simulasi interaktif dan pembedahan manifest APK sangat baik.

Perbaikan Bug & Keamanan Kritis:
1. handlers.go:168: Penulisan string(rune(matchedEntry.ReportCount+'0')) memicu karakter rusak jika laporan >= 10. Ganti dengan strconv.Itoa().
2. admin.go: Hapus fallback hardcoded credential dan HMAC secret key. Terapkan prinsip fail-fast (server langsung berhenti jika file .env kosong).
3. Path Absolut VPS: Pindahkan path server seperti /www/wwwroot/... dan /root/.hermes/.env ke environment variable agar tidak error di OS lain dan tidak membocorkan arsitektur server.
4. next.config.ts: Tambahkan API rewrites ke port 8082 agar pengetesan lokal tanpa Nginx tidak 404.

Saran Peningkatan & Metode yang Lebih Baik:
1. Proteksi SSRF & DNS Rebinding: Pada url_scanner.go, validasi IP sebaiknya dipindah ke dalam callback Dialer.Control saat soket TCP dibuka, bukan sebelum HTTP request dikirim.
2. Analisis APK yang Lebih Dalam: Saat ini inspeksi APK masih membaca manifest mentah. Ke depan, kalian bisa mengintegrasikan engine berbasis YARA rules atau Dex header parser agar deteksi trojan sniffer SMS lebih akurat tanpa harus menjalankan file.
3. Integrasi Bot / Ekstensi: Pertimbangkan integrasi WhatsApp Bot atau ekstensi browser agar pengguna tidak perlu repot copy-paste manual ke website saat menerima pesan mencurigakan.

Eksekusi yang sangat berani dan potensial!
```

---

## 2. Tim: Linus Wannabe - Clarity
- **Folder Sumber**: `clarity`
- **Ketua Tim**: Mohammad Ariffansyah (Anggota: Nailah Salsabila Ramadhani Kusnadi)
- **Tautan Deployment**: https://clarity.arpthef.my.id/
- **Video Demo**: https://youtu.be/2LXWugoGrGk

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 95 | 33.25 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 94 | 9.40 |
| Dokumentasi | 10% | 97 | 9.70 |
| **Total Nilai Akhir** | **100%** | - | **96.05** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.458 karakter (aman di bawah batas 2.000 karakter).*

```text
Karya Clarity luar biasa matang dan humanis. Metafora meja 3D berkas kertas dan stabilo terasa sangat orisinal dan intuitif. Pendekatannya sangat terstruktur: Understand (Peta Tipuan), Recognize, Learn, Prevent, dan Act. Kasus yang diangkat sangat up-to-date (suara tiruan AI, salah transfer, hingga penipuan QRIS refund).

Poin Keunggulan Teknis:
1. Standar Privasi Tinggi: Penerapan dual-layer redaction (di browser dan diulang di server sebelum ke Groq) adalah implementasi trust boundary yang sangat patut dicontoh.
2. Robust AI Handling: Pembersihan kutipan halusinasi AI dan stripping URL bot penipu menjaga keamanan dan tampilan teks tetap rapi.
3. Aksesibilitas: Fallback saat WebGL tidak aktif, tombol skip-to-content, dan dukungan prefers-reduced-motion diterapkan dengan sangat teliti.

Saran Peningkatan & Metode yang Lebih Baik:
1. Distributed Rate Limiter: In-memory Map di lib/groq.ts bersifat ephemeral di Vercel serverless. Pertimbangkan memakai Upstash Redis / Vercel KV agar pembatasan kuota IP tersinkronisasi antar-instance.
2. Deteksi Gambar / Screenshot (Client-Side OCR): Saat ini Clarity hanya menerima teks dan URL. Kalian bisa menambahkan Web Worker berbasis Tesseract.js di browser untuk membaca tangkapan layar chat tanpa melanggar prinsip privasi zero-server.
3. Token Window pada Negasi: Cek negasi 16 karakter ke belakang di analyze.ts bisa ditingkatkan menggunakan analisis klausa/token kata agar kalimat majemuk bertingkat yang panjang tertangani lebih fleksibel.

Karya yang sangat bersih, elegan, dan inspiratif!
```

---

## 3. Tim: Pecut Claude - AMBA
- **Folder Sumber**: `MIT-week`
- **Ketua Tim / Anggota**: Mursyid Dwi Wahidiyantoro, Bagus Joshua Parabang, Jericho Mikael Tuapardi L, M. Ridho Ansyori
- **Tautan Deployment**: https://amba.madewadigital.com/
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 96 | 33.60 |
| Kesesuaian dengan Studi Kasus | 25% | 94 | 23.50 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 98 | 9.80 |
| Dokumentasi | 10% | 93 | 9.30 |
| **Total Nilai Akhir** | **100%** | - | **95.40** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.548 karakter (aman di bawah batas 2.000 karakter).*

```text
Kualitas rekayasa perangkat lunak AMBA berstandar industri. Pipeline deteksi 4 lapis (Jejak AI, ELA visual kompresi, Cek Fakta media kredibel, dan Keamanan Link) berjalan sangat mulus. Desain antarmuka bergaya Google Gemini tonal surfaces juga modern dan sangat aksesibel.

Poin Keunggulan Teknis:
1. Mitigasi SSRF Sempurna: Penggunaan Dialer.Control pada socket dial time adalah solusi terbaik dalam menepis celah DNS Rebinding (TOCTOU).
2. Mesin Skoring Deterministik: Logika skoring murni di scoring.go yang dikalibrasi batas empirisnya pada dataset riil sangat ilmiah dan objektif.
3. Aksesibilitas & PWA: Sangat patuh standar WCAG, fokus heading otomatis pada pembaca layar, dan dukungan Web Share Target API di perangkat mobile.

Saran Peningkatan & Metode yang Lebih Baik:
1. Optimasi Bandwidth Video: Saat ini yt-dlp mengunduh seluruh file video hingga 60 MB. Untuk mempercepat analisis dan menghemat bandwidth server, gunakan flag ekstraksi audio-only (misal format -f ba) dan sampling thumbnail jarak jauh via HTTP range request sebelum mengunduh biner penuh.
2. Modul Simulasi Percakapan: Fokus AMBA saat ini dominan pada verifikasi konten media. Agar lebih kuat menjawab kasus rekayasa sosial langsung, pertimbangkan menambah arena simulasi chat interaktif (adversarial chat) untuk melatih kewaspadaan pengguna saat ditekan penipu.
3. Kelengkapan Berkas: Cantumkan tautan rekaman video demo 5 menit pada README.md agar juri dapat mengaksesnya langsung tanpa membuka form terpisah.

Kombinasi Go Chi dan Svelte 5 yang luar biasa solid!
```

---

## 4. Tim: hissyam90 - Saring
- **Folder Sumber**: `saring-app`
- **Ketua Tim / Repositori**: hissyam90 (GitHub)
- **Tautan Deployment**: https://saring.app
- **Video Demo**: Naskah tersedia di docs (link video tidak dicantumkan di README)

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 95 | 33.25 |
| Kesesuaian dengan Studi Kasus | 25% | 97 | 24.25 |
| UI/UX | 20% | 95 | 19.00 |
| Kualitas Kode & Pemeliharaan | 10% | 97 | 9.70 |
| Dokumentasi | 10% | 94 | 9.40 |
| **Total Nilai Akhir** | **100%** | - | **95.60** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.512 karakter (aman di bawah batas 2.000 karakter).*

```text
Saring memiliki kedewasaan filosofi produk yang luar biasa: memposisikan diri sebagai jeda berpikir ("Saring Sebelum Sharing") tanpa vonis biner yang menyesatkan. Ekosistem fiturnya sangat lengkap: periksa pesan 3-in-1, 23 skenario latihan, panduan langkah darurat pascainsiden, serta komunitas publik berbasis Tiptap dengan sistem revisi dan moderasi admin.

Poin Keunggulan Teknis:
1. Mesin Heuristik Berkesadaran Konteks: engine.ts membedakan reported speech, narasi masa lalu, dan kalimat peringatan sehingga minim false-positive.
2. Keamanan Basis Data: Query terparameterisasi, cookie terenkripsi iron-session, session versioning saat reset password, dan rate limiter berbasis PostgreSQL sangat siap produksi.
3. Desain & Aksesibilitas: Tampilan neo-brutalist berkarakter kuat, lulus audit kontras WCAG 2.2 AA, dan drawer mobile dilengkapi focus trap.

Saran Peningkatan & Metode yang Lebih Baik:
1. Export Dossier Bukti (PDF): Pada modul /langkah, sediakan fitur cetak/unduh checklist bukti insiden dalam format PDF terstruktur agar korban bisa langsung membawanya ke kantor polisi atau bank.
2. Inspeksi Tangkapan Layar (Client-Side OCR): Tambahkan kemampuan membaca gambar chat secara lokal di browser via Tesseract.js Web Worker agar pengguna tidak perlu menyalin teks panjang secara manual.
3. Tautan Video Demo di README: Naskah video di docs sudah sangat rapi, namun link video jadi belum ada di README. Cantumkan link tersebut berdampingan dengan link produksi.

Karya Next.js dan PostgreSQL yang sangat matang dan terstruktur!
```

---

## 5. Tim: Lodraalbar - Spot the Scam
- **Folder Sumber**: `Spot-the-Scam-Cek-Pesan-Penipuan`
- **Ketua Tim**: Lodra Kalimasada A.A. (Anggota: Hadaina Silmi Damanik)
- **Tautan Deployment**: https://spot-the-scam-cek-pesan-penipuan.vercel.app
- **Mirror**: https://lodraalbar.github.io/Spot-the-Scam-Cek-Pesan-Penipuan/
- **Video Demo**: https://drive.google.com/drive/folders/1atma_uZMZzU-VxVqn3-PWwsz-sfBBmW7?usp=sharing/

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 87 | 30.45 |
| Kesesuaian dengan Studi Kasus | 25% | 90 | 22.50 |
| UI/UX | 20% | 88 | 17.60 |
| Kualitas Kode & Pemeliharaan | 10% | 82 | 8.20 |
| Dokumentasi | 10% | 95 | 9.50 |
| **Total Nilai Akhir** | **100%** | - | **88.25** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.586 karakter (aman di bawah batas 2.000 karakter).*

```text
Konsep Spot the Scam ini solutif, terutama keberanian menaruh OCR Tesseract.js langsung di browser. Gambar chat pengguna tidak perlu dikirim ke server luar sehingga privasi tetap terjaga. Panduan darurat kilat dan kontak aduan resmi (OJK 157, Patroli Siber) juga sangat aplikatif membantu korban.

Catatan teknis dan celah keamanan:
1. Potensi Blacklist Palsu di Database: Di file setup.sql, trigger trg_sync_reported_number langsung menaikkan hitungan laporan tiap ada input baru di tabel reports. Tanpa rate limit atau moderasi, akun jahat bisa membanjiri laporan palsu dalam sekejap untuk membuat nomor target otomatis dicap bahaya.
2. False Positive Regex: Kata "selamat" membuat sapaan wajar seperti "Selamat pagi" langsung terdeteksi sebagai penipuan undian. Pola OTP juga belum membedakan SMS resmi dari bank dengan pesan pemerasan penipu.
3. Whitelist Domain Terlalu Sedikit: Daftar domain resmi hanya berisi 5 nama, sehingga situs resmi bank lain (Mandiri, BNI) atau web pemerintah (.go.id) langsung dianggap mencurigakan.

Saran pengembangan ke depan:
1. Buka Akses Tanpa Wajib Login: Korban penipuan biasanya panik dan butuh verifikasi cepat. Berikan opsi periksa pesan tanpa registrasi, lalu tawarkan login hanya jika ingin menyimpan riwayat.
2. Amankan Jalur Laporan: Pindahkan proses lapor nomor ke Supabase Edge Functions dengan proteksi captcha dan sistem persetujuan moderasi sebelum nomor dimunculkan ke publik.
3. Rapikan Kode: Pisahkan skrip 2.200 baris di home.html ke berkas mandiri, dan hindari memuat Tailwind CDN bersamaan dengan Bootstrap di history.html agar loading halaman lebih ringan.

Idenya sudah sangat bagus dan fungsional, tinggal matangkan lagi logika filternya. Sukses terus buat kalian!
```

---

## 6. Tim: Ridz010 - Ward-Ly
- **Folder Sumber**: `wardly-app`
- **Ketua Tim / Pengembang**: Farid Kusuma (`Ridz010`)
- **Tautan Deployment**: https://wardly-app.vercel.app/
- **Video Demo**: https://drive.google.com/file/d/14_3fUp-_Ewp4XSJo-lS0fyySxBGB-3VY/view
- **Repositori**: https://github.com/Ridz010/wardly-app

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 98 | 34.30 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 97 | 19.40 |
| Kualitas Kode & Pemeliharaan | 10% | 98 | 9.80 |
| Dokumentasi | 10% | 97 | 9.70 |
| **Total Nilai Akhir** | **100%** | - | **97.70** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.572 karakter (aman di bawah batas 2.000 karakter).*

```text
Eksekusi Ward-Ly ini salah satu yang paling matang di kompetisi ini. Kerangka kerjanya rapi dari Recognize, Learn, Act, sampai Komunitas. Pengguna bisa langsung coba tanpa harus bikin akun, dan optimasi lite-mode buat HP spek rendah membuktikan kalian beneran memikirkan kenyamanan pengguna di lapangan.

Poin keunggulan teknis dan keamanan:
1. Pengecekan Link Aman: Pendekatan inspeksi struktural domain (punycode, brand lookalike, TLD risiko) tanpa request keluar itu langkah tepat untuk menutup total celah SSRF dan DNS Rebinding.
2. Perlindungan Privasi: Sanitasi data pribadi (PII redaction) sebelum teks dikirim ke AI, validasi biner magic byte file upload, dan hashing IP tamu sudah menerapkan standar keamanan yang baik.
3. Kontrol Akses Admin: Pembagian role user, moderator, dan admin di Server Actions sudah ketat, plus ada proteksi agar admin tidak bisa mengunci akunnya sendiri.

Saran pengembangan ke depan:
1. Fallback OCR Lokal: Saat ini pembacaan screenshot masih bergantung penuh ke API OpenRouter. Coba tambahkan fallback OCR di sisi browser (misal pakai Tesseract.js worker) agar saat kuota API habis atau server down, fitur baca gambar tetap bisa jalan.
2. Ekspor Berkas Bukti (PDF): Di modul Lindungi, sediakan tombol unduh rangkuman checklist darurat dalam format PDF rapi agar korban bisa langsung membawanya ke bank atau kantor polisi.
3. Filter Komunitas: Tambahkan filter kategori modus (misal: Loker Palsu, Kurir APK, Giveaway) di halaman komunitas agar pengguna lebih cepat menemukan cerita yang relevan dengan kasus yang dialami.

Kombinasi Next.js 16 dan Supabase yang sangat solid dan inspiratif. Semangat terus buat pengembangannya!
```

---

## 7. Tim: MaharajaGeral / ITK - Cekkan
- **Folder Sumber**: `Cekkan`
- **Ketua Tim / Anggota**: Maharaja Geral, RajibIF, dkk. | Institut Teknologi Kalimantan (ITK)
- **Tautan Deployment**: https://cekkan-frontend.vercel.app
- **Backend API**: https://cekkan-backend.vercel.app
- **Video Demo**: https://drive.google.com/drive/folders/1f2CaQuWWRZCF41nOsW11-Yxoh5h7Ue7B?usp=sharing

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 88 | 30.80 |
| Kesesuaian dengan Studi Kasus | 25% | 90 | 22.50 |
| UI/UX | 20% | 89 | 17.80 |
| Kualitas Kode & Pemeliharaan | 10% | 85 | 8.50 |
| Dokumentasi | 10% | 75 | 7.50 |
| **Total Nilai Akhir** | **100%** | - | **87.10** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.706 karakter (aman di bawah batas 2.000 karakter).*

```text
Cekkan punya fokus masalah yang sangat tajam dan tepat sasaran buat anak muda, khususnya mahasiswa dan fresh graduate yang rentan terjebak lowongan kerja palsu. Pembagian fiturnya rapi dari periksa pesan, tautan, dokumen syarat kerja, sampai simulasi chat interaktif dengan skenario bercabang. Hasil analisis AI juga responsif dan penjelasannya mudah dipahami orang awam.

Catatan teknis dan arsitektur yang perlu diperhatikan:
1. State In-Memory di Serverless: Di server.js, pembatasan kuota harian (DAILY_LIMIT) dan rate limiter masih disimpan di variabel memori lokal. Karena backend di-deploy ke Vercel serverless yang sifatnya ephemeral, hitungan ini bakal otomatis ter-reset tiap ada instance baru.
2. Penanganan XSS Sangat Baik: Penggunaan textContent secara konsisten di app.js untuk merender teks hasil analisis patut diapresiasi karena menutup celah DOM XSS dengan sangat bersih.
3. Kerapian Dokumentasi: Di file README.md masih ada placeholder teks yang lupa diisi ("Pilih skenario: [ISI: ...]"), serta belum ada petunjuk instalasi lokal dan konfigurasi environment variable (.env).

Saran pengembangan ke depan:
1. Pasang Distributed Storage: Gunakan database ringan atau Redis (seperti Upstash Redis) untuk menyimpan kuota harian dan rate limit agar tersinkronisasi antar-instance serverless.
2. Tambah Skenario Simulasi: Saat ini simulasi baru punya satu skenario aktif. Menambahkan variasi kasus seperti penipuan loker luar negeri, admin part-time like-and-share, atau magang fiktif bakal bikin platform ini jauh lebih kaya edukasi.
3. Lengkapi Panduan Setup: Perbarui README dengan langkah instalasi npm install, port default, dan deskripsi tech stack agar pengembang lain mudah berkontribusi.

Konsep solutif dengan eksekusi yang fungsional dan bersih. Semangat terus buat tim Cekkan!
```

---

## 8. Tim: BASIS-64 (MIT-009) - DaveMod
- **Folder Sumber**: `davemoderator`
- **Ketua Tim / Anggota**: Gabriel Ado Ramos Tukan | BASIS-64
- **Tautan Deployment**: https://davemoderator.vercel.app *(Ditemukan pada metadata app/layout.tsx; tidak tercantum di README)*
- **Video Demo**: Tidak dicantumkan di README maupun repositori

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 86 | 30.10 |
| Kesesuaian dengan Studi Kasus | 25% | 88 | 22.00 |
| UI/UX | 20% | 90 | 18.00 |
| Kualitas Kode & Pemeliharaan | 10% | 88 | 8.80 |
| Dokumentasi | 10% | 65 | 6.50 |
| **Total Nilai Akhir** | **100%** | - | **85.40** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.730 karakter (aman di bawah batas 2.000 karakter).*

```text
Inovasi DaveMod sangat menarik dan berani karena melatih neural network sendiri dari nol lalu menjalankannya langsung di browser menggunakan ONNX Runtime Web. Pendekatan zero-server ini luar biasa dalam menjaga privasi data pengguna, sekaligus sangat hemat biaya karena tidak bergantung pada API LLM eksternal. Visualisasi probabilitas 10 kategorinya juga memberikan transparansi yang bagus.

Catatan teknis dan bug yang perlu diperbaiki:
1. Ketidaksinkronan Vocab Size: Di train.py ukuran vocabulary disetel 3.500, tetapi di MessageDetector.tsx variabel maxValidIndex malah di-hardcode ke angka 2.500. Akibatnya, ada 1.000 kata hasil pelatihan yang dipaksa menjadi OOV (Out of Vocabulary) saat inferensi di web, sehingga akurasi model di browser menurun.
2. Batas Panjang Kalimat (Max Len 40): Teks input dipotong maksimal 40 kata. Padahal banyak pesan penipuan memakai kalimat pembuka formal yang panjang, sehingga instruksi transfer atau link jebakan di bagian akhir pesan berisiko terpotong dan tidak terbaca oleh model.
3. Ketergantungan CDN WASM: Runtime ONNX memuat file biner WASM dari jsDelivr. Jika koneksi pengguna sedang offline atau CDN mengalami kendala, model gagal diinisialisasi.
4. Kelengkapan Berkas README: Tautan live demo dan video presentasi belum dicantumkan di README.md, padahal kedua tautan ini merupakan berkas wajib pada juknis lomba.

Saran pengembangan ke depan:
1. Simpan Aset WASM Lokal: Pindahkan file biner ONNX WASM ke folder public agar aplikasi bisa berjalan penuh secara offline (PWA) tanpa bergantung pada CDN pihak ketiga.
2. Tingkatkan Arsitektur Model: Pertimbangkan menaikkan max_len ke 80–120 kata dan tambahkan layer bidirectional LSTM sebelum pooling agar konteks urutan kata tertangkap lebih baik.
3. Tambah Fitur Interaktif: Lengkapi platform dengan simulasi interaktif atau panduan aduan resmi agar pengguna punya kanal aksi lanjutan setelah membaca hasil deteksi.

Eksplorasi machine learning di peramban yang sangat potensial dan solutif. Sukses terus buat tim BASIS-64!
```

---

## 9. Tim: Tiga Trio (MIT-010) - TRASP
- **Folder Sumber**: `TRASP`
- **Ketua Tim / Anggota**: Raya Raihana Yasmin (Ketua), Andi Rivelani Aurellah, Yelena Amanda | SMK Negeri 6 Balikpapan
- **Tautan Deployment**: Tidak dicantumkan di README *(Domain tebakan https://trasp.vercel.app menghasilkan 404 Not Found)*
- **Video Demo**: https://youtu.be/4-OiCrQ8kHI

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 88 | 30.80 |
| Kesesuaian dengan Studi Kasus | 25% | 96 | 24.00 |
| UI/UX | 20% | 95 | 19.00 |
| Kualitas Kode & Pemeliharaan | 10% | 82 | 8.20 |
| Dokumentasi | 10% | 85 | 8.50 |
| **Total Nilai Akhir** | **100%** | - | **90.50** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.769 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform TRASP sangat impresif, terutama dibangun oleh tim tingkat SMK dengan Next.js 16 dan Tailwind v4 yang modern. Konsep forensik digitalnya matang, mulai dari redaksi privasi gambar berbasis canvas, normalisasi teks leetspeak, alur darurat 15 menit, hingga simulasi 10 level Cyber Quest dengan Telemetry X-Ray psikologi penipu.

Catatan teknis dan keamanan yang perlu diperhatikan:
1. Kebocoran Kredensial S3 Nyata: Di file .env.example tercantum kredensial aktif IDCloudHost S3 (Access Key dan Secret Key). Kredensial ini wajib segera di-revoke dan diganti via dashboard cloud agar bucket storage kalian tidak disalahgunakan pihak luar.
2. Tidak Ada Tautan Deployment Aktif: README belum memuat URL live demo (hanya ada localhost:3000), dan domain tebakan trasp.vercel.app menghasilkan status 404. Berdasarkan juknis, ketiadaan live deployment berdampak langsung pada nilai fungsionalitas.
3. Sanitasi File Upload: Pada endpoint media, penamaan file gambar sebaiknya di-hash memakai UUID acak sebelum diunggah ke storage untuk mencegah tabrakan nama file atau celah traversal.

Saran pengembangan ke depan:
1. Praktik Environment Variable: Selalu pakai dummy placeholder seperti your_key_here pada .env.example dan kelola secret nyata langsung di dashboard deployment.
2. Optimasi Kanvas Redaksi: Pemrosesan piksel pada gambar besar sebaiknya memanfaatkan OffscreenCanvas atau Web Worker agar thread UI di browser mobile tetap responsif tanpa lag.
3. Deploy ke Cloud Publik: Sambungkan repositori ke Vercel dan PostgreSQL cloud gratis (seperti Neon/Supabase) agar karya kalian bisa langsung diuji publik secara daring.

Karya yang sangat berani, komprehensif, dan membanggakan untuk level SMK. Pertahankan standar rekayasa ini dan sukses terus buat tim Tiga Trio!
```

---

## 10. Tim: JagaRuang (Ahmad Syifa'ul Falakhul Khayyi dkk.) - JagaRuang
- **Folder Sumber**: `JagaRuang`
- **Ketua Tim / Anggota**: Ahmad Syifa'ul Falakhul Khayyi, Mutiara Dewanda Prisvilla, Raffi Azzaky Ramadhani, Ahmad Syafi'al Anam
- **Tautan Deployment**: https://jaga-ruang-ten.vercel.app/
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 96 | 33.60 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 97 | 19.40 |
| Kualitas Kode & Pemeliharaan | 10% | 96 | 9.60 |
| Dokumentasi | 10% | 92 | 9.20 |
| **Total Nilai Akhir** | **100%** | - | **96.30** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.695 karakter (aman di bawah batas 2.000 karakter).*

```text
Eksekusi JagaRuang luar biasa matang dan disiplin. Mengadopsi kerangka kerja resmi Guardians (Recognize, Learn, Act) dengan arsitektur 100% on-device client-side tanpa backend server adalah keputusan rekayasa yang sangat tepat dalam menjaga privasi data pengguna. Fitur 8 simulator interaktif, dial-tone synthesizer Web Audio API, 12 modul edukasi, hingga Sandi Verifikasi Keluarga anti-AI Voice Cloning sangat inovatif.

Catatan teknis dan temuan yang perlu diperbaiki:
1. Data Notifikasi Awal: Pada notificationService.ts, daftar notifikasi bawaan masih menyisakan teks dummy berbahasa Inggris ("Your AI Just Got Smarter") yang kurang selaras dengan bahasa aplikasi.
2. Label Tombol Login Google: Opsi "Login with Google" langsung mengarahkan sesi ke akun demo lokal. Sebaiknya gunakan label transparan seperti "Masuk Instan (Akun Demo)" agar tidak disangka integrasi OAuth Google sungguhan.
3. Kelengkapan Berkas Video: Tautan rekaman video demo 5 menit belum dicantumkan di README.md, padahal tautan ini merupakan berkas wajib pada juknis lomba.

Saran pengembangan ke depan:
1. Modularisasi Belajar.tsx: File Belajar.tsx saat ini berukuran lebih dari 4.400 baris. Sebaiknya tab simulator kasus, kuis kilat refleks, dan kamus istilah dipecah ke file komponen terpisah dengan React.lazy agar pemisahan bundle kode (code splitting) lebih optimal.
2. Integrasi Web Speech API: Pada simulator panggilan suara, menambahkan sintesis suara lisan via window.speechSynthesis bahasa Indonesia akan membuat simulasi telepon terdengar nyata tanpa memerlukan rekaman audio manual.

Standar rekayasa monorepo, dokumen ADR, dan pengujian Vitest yang sangat profesional. Selamat untuk seluruh tim JagaRuang!
```

---

## 11. Tim: Anugrah Dwantara (anugrahdwantara-Sage) - JeBe (Jebakan Betmen)
- **Folder Sumber**: `JeBe-Jebakan_Betmen`
- **Ketua Tim / Akun**: Anugrah Dwantara (anugrahdwantara-Sage)
- **Tautan Deployment**: Belum dicantumkan *(Placeholder "ISI DENGAN URL NETLIFY" di README.md; domain tebakan jebe.netlify.app menghasilkan 404)*
- **Video Demo**: Belum dicantumkan *(Placeholder "ISI DENGAN URL VIDEO" di README.md)*

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 70 | 24.50 |
| Kesesuaian dengan Studi Kasus | 25% | 78 | 19.50 |
| UI/UX | 20% | 82 | 16.40 |
| Kualitas Kode & Pemeliharaan | 10% | 80 | 8.00 |
| Dokumentasi | 10% | 68 | 6.80 |
| **Total Nilai Akhir** | **100%** | - | **75.20** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.782 karakter (aman di bawah batas 2.000 karakter).*

```text
Pendekatan JeBe (Jebakan Betmen) menarik karena dibangun dengan arsitektur zero-dependency menggunakan Node.js dan vanilla JavaScript tanpa dependensi eksternal. Mesin aturan pada analyzer.js tersusun rapi dengan 12 kategori deteksi, pembobotan kumulatif, penanganan negasi kalimat, dan rekomendasi langkah aman (Act) yang kontekstual. Manipulasi DOM di script.js juga aman dari celah XSS karena menghindari innerHTML.

Catatan teknis dan temuan yang perlu diperhatikan:
1. Placeholder Submission Belum Diisi: Di README.md, tautan wajib masih berupa draf ("ISI DENGAN URL NETLIFY", "ISI DENGAN URL VIDEO"). Ketiadaan tautan live deployment aktif sangat memengaruhi penilaian juknis karena juri tidak dapat menguji aplikasi secara daring.
2. File Terbengkalai main.html: Terdapat file main.html yang belum selesai (tanpa tag body dan konten terpotong) serta tidak bisa diakses dari server. Bersihkan file uji coba yang tidak terpakai dari repositori.
3. Cakupan Fitur Masih Terbatas: Platform baru menangani analisis pesan teks satu arah. Belum tersedia modul edukasi atau simulasi interaktif (Learn), serta belum ada inspeksi berkas berbahaya (seperti sniffer APK kurir/undangan).

Saran pengembangan ke depan:
1. Lengkapi Deployment Netlify: Segera deploy aplikasi ke Netlify dan cantumkan tautan aktifnya di README agar platform bisa dicoba langsung oleh publik.
2. Tambah Skenario Latihan: Bangun simulasi percakapan interaktif untuk melatih refleks pengguna dalam mengambil keputusan saat menghadapi penipu.
3. Proteksi Rate Limit di Serverless: Pasang distributed rate limiter pada Netlify Functions agar pembatasan request per IP tetap berjalan di lingkungan cloud.

Fondasi kode vanilla yang sangat bersih dan rapi. Terus kembangkan fiturnya dan sukses selalu untuk tim JeBe!
```

---

## 12. Tim: Nathan Chandra (th4nch4) - CekDulu
- **Folder Sumber**: `web-development`
- **Ketua Tim / Akun**: Nathan Chandra (th4nch4 / nathanchandra141-star)
- **Tautan Deployment**: Belum dicantumkan di README *(Arsitektur 100% file statis offline; domain GitHub Pages belum diaktifkan)*
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 86 | 30.10 |
| Kesesuaian dengan Studi Kasus | 25% | 97 | 24.25 |
| UI/UX | 20% | 98 | 19.60 |
| Kualitas Kode & Pemeliharaan | 10% | 96 | 9.60 |
| Dokumentasi | 10% | 82 | 8.20 |
| **Total Nilai Akhir** | **100%** | - | **91.75** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.746 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform CekDulu adalah karya yang luar biasa segar, menyenangkan, dan inovatif. Memadukan mekanik gamifikasi ala Duolingo dengan maskot Coach Wall (9 ekspresi SVG), simulasi HP bergaya iPhone yang adaptif, serta materi Voice Phishing dengan Web Speech API on-device adalah pendekatan kreatif yang sangat efektif melatih kewaspadaan anak muda. Kehadiran skenario pesan asli juga sangat mendidik agar pengguna tidak paranoid.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Ketiadaan Tautan Live Deployment: README.md belum mencantumkan URL live deployment (seperti GitHub Pages atau Vercel). Berdasarkan juknis, kemudahan akses daring langsung bagi penguji menjadi faktor krusial penilaian fungsionalitas.
2. Kelengkapan Berkas Video: Tautan rekaman video demo 5 menit belum dicantumkan di README.
3. Kerapian Layar Sempit: Pada perangkat dengan lebar di bawah 360px, beberapa dialog opsi jawaban bertumpuk cukup padat dengan bingkai HP simulasi.

Saran pengembangan ke depan:
1. Aktifkan GitHub Pages: Karena web ini berbasis file statis murni tanpa build rumit, kalian cukup mengaktifkan fitur GitHub Pages di repositori lalu menyematkan tautannya pada README.
2. Tambah Mode Cek Bebas: Saat ini CekDulu berfokus pada latihan terpandu. Menambahkan modul pemeriksa pesan bebas (sandbox) akan membuat platform ini menjadi pertolongan pertama saat pengguna menerima pesan mencurigakan di dunia nyata.
3. Fallback Sintesis Suara: Untuk peramban yang belum memiliki paket bahasa Indonesia di window.speechSynthesis, tambahkan nada panggil oscillator Web Audio agar efek simulasi telepon tetap berbunyi.

Disiplin pengujian 93 unit test dan Playwright E2E yang sangat profesional. Karya yang luar biasa keren dan inspiratif buat tim CekDulu!
```

---

## 13. Tim: ZaidAlHibb - ITIHIX
- **Folder Sumber**: `ITIHIX`
- **Ketua Tim**: Zaid Al Hibbur Rasul (zaidarschool@gmail.com)
- **Tautan Deployment**: https://itihix.my.id *(Aktif, SSL valid, Cookie HttpOnly/SameSite=Lax, CSP terkonfigurasi)*
- **Video Demo**: Belum dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 98 | 34.30 |
| Kesesuaian dengan Studi Kasus | 25% | 97 | 24.25 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 84 | 8.40 |
| Dokumentasi | 10% | 90 | 9.00 |
| **Total Nilai Akhir** | **100%** | - | **95.15** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.745 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform ITIHIX adalah ekosistem media sosial keamanan siber yang luar biasa matang dan masif. Alur multi-role (User, Terpercaya, Moderator, Admin) bekerja sangat rapi, mulai dari antrean moderasi laporan dengan chip alasan cepat, lencana verifikasi, SafeSnaps edukasi, hingga ItihScan AI multi-gambar berfitur editor sensor privasi (blur/mosaik) di peramban.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Kebocoran Kredensial di Git History: Pada komit e193e52, file itihix.env sempat ter-commit memuat sandi MySQL, API key AI, dan App Password Gmail SMTP. Meski file sudah dihapus di komit berikutnya, rahasia ini tersimpan permanen di riwayat git dan wajib segera di-rotate di server.
2. Beban Payload Multi-Gambar AI: Di api/detect.php, batas teks 4.000 karakter sudah baik, tetapi jika pengguna mengunggah 6 foto resolusi tinggi sekaligus, konversi base64 berisiko memicu timeout pada gateway AI.
3. Kelengkapan Berkas README: Bagian tim di akhir README masih terpotong dan tautan rekaman video demo 5 menit belum dicantumkan.

Saran pengembangan ke depan:
1. Bersihkan Riwayat Git: Gunakan git-filter-repo atau BFG Cleaner untuk menghapus jejak file itihix.env dari git history, lalu rotasi seluruh sandi dan token aktif di server hosting.
2. Kompresi Sisi Klien: Kompresi GD di server sudah rapi, namun menambahkan resize kanvas di browser sebelum upload akan menghemat bandwidth dan mempercepat pengiriman laporan.
3. Background Worker Video: Pemrosesan ffmpeg pada video SafeSnaps sebaiknya dialihkan ke antrean cron worker agar thread web server tidak tertahan saat video diproses.

Arsitektur PHP dan skema relasional yang sangat solid, serta sanitasi PDO dan CSRF yang patut diacungi jempol. Sukses terus untuk tim ITIHIX!
```

---

## 14. Tim: Yanuar Faturrahman - Guardian Digital
- **Folder Sumber**: `guardian-digital`
- **Ketua Tim**: Yanuar Faturrahman
- **Tautan Deployment**: https://guardian-digital.gamer.gd *(Aktif di InfinityFree, proteksi bot aes.js, SSL aktif)*
- **Video Demo**: https://youtu.be/E-vGpW0R8og?si=COJkxim3vC_Yz6i- *(Durasi 5 menit)*

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 96 | 33.60 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 94 | 18.80 |
| Kualitas Kode & Pemeliharaan | 10% | 95 | 9.50 |
| Dokumentasi | 10% | 98 | 9.80 |
| **Total Nilai Akhir** | **100%** | - | **96.20** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.787 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Guardian Digital menghadirkan solusi edukasi keamanan siber yang sangat matang, komprehensif, dan menyentuh ekosistem nyata (siswa, guru, orang tua, sekolah, dan superadmin). Simulasi cerita bercabang, kepatuhan privasi berbasis UU PDP (persetujuan wali untuk siswa minor, hak ekspor dan hapus data), serta fitur keberlangsungan sistem seperti health check, backup mandiri, dan lazy scheduler adalah rekayasa perangkat lunak yang sangat mengesankan.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Penempatan Modal Onboarding di Blade: Pada layouts/app.blade.php, include modal onboarding diletakkan sebelum tag pembuka body. Menurut standar W3C, elemen tampilan visual wajib berada di dalam body agar hierarki DOM valid.
2. Kebersihan Berkas Produksi: Skrip cek-hosting.php masih tertinggal di folder public. Meski berstatus 403, file pemeriksa konfigurasi sebaiknya dihapus dari server publik. Selain itu, file docx tutorial masih berada di dalam folder tests/Feature.
3. Keterbatasan Hosting Gratis: Hosting InfinityFree menerapkan proteksi anti-bot JavaScript (aes.js) yang dapat menghambat pemantauan uptime otomatis dari layanan luar jika endpoint status diakses tanpa peramban nyata.

Saran pengembangan ke depan:
1. Generator QR Code 2FA: Penggunaan TOTP RFC 6238 mandiri sudah sangat rapi. Menambahkan generator QR code SVG sederhana di sisi server akan mempermudah pemindaian via Google Authenticator atau Authy.
2. Migrasi ke Platform Modern: Konfigurasi Dockerfile dan Caddyfile yang kalian siapkan sudah bagus. Memindahkan aplikasi ke VPS atau platform cloud (Railway/Vercel) akan menghilangkan batasan cron dan proteksi bot shared hosting.

Disiplin pengujian unit test dan kepatuhan privasi yang luar biasa solid. Sukses terus untuk tim Guardian Digital!
```

---

## 15. Tim: ProgrammerAkhirZaman - CEKIN
- **Folder Sumber**: `Cekin`
- **Ketua Tim / Anggota**: Ahmad Irfan Maruf M / Damar Syahada / Nelsen Reynardo
- **Tautan Deployment**: https://ayocekin.vercel.app *(Aktif, SSL Vercel valid, respon API cepat)*
- **Video Demo**: https://www.youtube.com/watch?v=e4QNCRjAx44 *(Aktif)*

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 96 | 33.60 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 86 | 8.60 |
| Dokumentasi | 10% | 92 | 9.20 |
| **Total Nilai Akhir** | **100%** | - | **95.10** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.758 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform CEKIN adalah solusi keamanan siber yang luar biasa kaya fitur, inovatif, dan sangat relevan dengan studi kasus The Trust Trap. Enam simulasi interaktifnya (khususnya pembongkaran jebakan psikologis Mind Traps dan bahaya judi online) dieksekusi dengan dedikasi tinggi, dipadukan mesin deteksi multi-vektor (teks, URL, telepon, email breach, investasi bodong, gambar) serta forum komunitas berfitur moderasi admin yang mulus.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Celah Keamanan SSRF pada Pemindai URL: Di api/analyze/url/route.ts, fungsi fetchPageMetadata langsung memanggil fetch ke URL target tanpa validasi alamat IP lokal/privat (seperti 127.0.0.1 atau 169.254.169.254). Ini membuka celah Server-Side Request Forgery untuk memindai layanan internal server.
2. Penanganan Format Nomor Telepon: Di api/analyze/phone/route.ts, pemanggilan parsePhoneNumberFromString tanpa parameter kode negara default ('ID') menyebabkan nomor lokal 08 ditolak dengan pesan format tidak valid, kecuali pengguna mengetik +62.
3. Kerapian Dokumentasi README: Terdapat pengulangan teks penjelasan fitur yang terduplikasi secara verbatim pada bab tengah README.

Saran pengembangan ke depan:
1. Mitigasi SSRF Berbasis DNS: Validasi IP sebelum request fetch dikirim dan tolak resolusi ke blok IP privat (RFC 1918) serta metadata cloud provider.
2. Default Country Code: Tambahkan parameter 'ID' pada libphonenumber-js agar nomor ponsel berawalan 08 langsung terdeteksi valid secara otomatis.
3. Perluas Unit Test: Menambahkan pengujian otomatis pada endpoint analisis dan skema Drizzle akan menjaga stabilitas integrasi saat produksi.

Kombinasi simulasi edukasi dan deteksi ancaman yang sangat matang dan berdampak nyata. Sukses terus untuk tim CEKIN!
```

---

## 16. Tim: Muhammad Ridho Alfarod - TUNTUN: Digital Guardian
- **Folder Sumber**: `TUNTUN_KARHUTLA`
- **Ketua Tim**: Muhammad Ridho Alfarod (muhridhoalfarod@gmail.com)
- **Tautan Deployment**: https://tuntun-karhutla.vercel.app *(Aktif di Vercel, client-side SPA, SSL valid)*
- **Video Demo**: Belum dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 93 | 32.55 |
| Kesesuaian dengan Studi Kasus | 25% | 95 | 23.75 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 94 | 9.40 |
| Dokumentasi | 10% | 90 | 9.00 |
| **Total Nilai Akhir** | **100%** | - | **93.90** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.756 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform TUNTUN Digital Guardian adalah karya rekayasa perangkat lunak yang sangat matang, rapi, dan memiliki ketajaman forensik yang impresif. Tiga pilar utamanya (Recognize, Learn, Act) dieksekusi dengan standar tinggi: pemindai magic-bytes biner berkas di peramban, de-obfuskasi teks leetspeak, simulator percakapan bercabang dengan guardrail deterministik, detektif bukti, serta generator laporan resmi bank dan audio TTS ramah lansia.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Penamaan Repositori yang Membingungkan: Nama repositori TUNTUN_KARHUTLA menimbulkan kesan aplikasi kebakaran hutan, padahal kontennya 100% adalah literasi keamanan siber dan penipuan digital.
2. Status Routing Serverless di Vercel: Pada deployment live, endpoint /api/health mengembalikan dokumen HTML frontend karena root directory diarahkan ke folder frontend. Seluruh pemrosesan berjalan di sisi klien (SPA), sehingga modul di folder Backend menjadi dead code pada server Vercel.
3. Kelengkapan Berkas Video: README.md belum mencantumkan tautan rekaman video demo 5 menit sesuai panduan teknis lomba.

Saran pengembangan ke depan:
1. Penataan Ulang Repositori: Ubah nama repositori GitHub menjadi lebih representatif (misalnya tuntun-guardian) agar tidak memicu kebingungan bagi penilai maupun publik.
2. Unifikasi Deployment: Gabungkan skrip build agar Vercel mengeksekusi serverless functions di folder api, atau rapikan folder Backend jika memang fokus pada arsitektur 100% client-side.
3. Otentikasi dan Riwayat Sesi: Pertimbangkan akun pengguna opsional agar capaian lencana dan skor kesiapsiagaan dapat disimpan lintas perangkat.

Disiplin pengujian unit test dan dokumentasi system design yang luar biasa komprehensif. Sukses terus untuk tim TUNTUN!
```

---

## 17. Tim: Nosutora - Guardian
- **Folder Sumber**: `Guardian`
- **Ketua Tim**: Nosutora (altaccdamqsstar@gmail.com)
- **Tautan Deployment**: https://guardian-protect.up.railway.app *(Aktif di Railway, HTTPS valid, Laravel 12)*
- **Video Demo**: Belum dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 82 | 28.70 |
| Kesesuaian dengan Studi Kasus | 25% | 80 | 20.00 |
| UI/UX | 20% | 88 | 17.60 |
| Kualitas Kode & Pemeliharaan | 10% | 88 | 8.80 |
| Dokumentasi | 10% | 85 | 8.50 |
| **Total Nilai Akhir** | **100%** | - | **83.60** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.704 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Guardian menghadirkan utilitas keamanan digital yang ringkas, bersih, dan berfokus langsung pada fungsi deteksi praktis. Integrasi server-side API VirusTotal untuk pemindaian tautan dan berkas serta chatbot Gemini untuk konsultasi keamanan siber berjalan mulus di server Railway, dipercantik dengan maskot robot interaktif, efek Web Audio, dan radial menu yang futuristik.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Ruang Lingkup Fitur dan Studi Kasus: Aplikasi saat ini murni berfokus sebagai pemindai utilitas (wrapper API eksternal). Belum ada fitur interaktif studi kasus The Trust Trap, modul simulasi percakapan penipuan, maupun sistem basis data untuk menyimpan riwayat analisis pengguna.
2. Ketergantungan Eksternal Tanpa Fallback: Pemindaian dan chatbot sepenuhnya bergantung pada ketersediaan kuota VirusTotal dan Gemini. Jika kuota API habis atau server pihak ketiga lambat, aplikasi tidak memiliki mesin aturan heuristik lokal sebagai jaring pengaman.
3. Optimasi Aset Tailwind: Pada template Blade, CSS masih memuat script cdn.tailwindcss.com secara runtime di peramban, yang kurang efisien untuk performa aplikasi produksi.
4. Kelengkapan Berkas Video: README belum mencantumkan tautan rekaman video demo 5 menit sesuai panduan juknis lomba.

Saran pengembangan ke depan:
1. Bangun Mesin Deteksi Heuristik Lokal: Tambahkan parser ekspresi reguler dan deteksi pola rekayasa sosial di sisi server agar tautan atau teks umum tetap dapat dianalisis secara instan tanpa membebani kuota API luar.
2. Tambahkan Modul Simulasi Edukatif: Sertakan skenario latihan interaktif (seperti simulasi modus kurir APK atau phishing perbankan) agar selaras dengan misi edukasi generasi muda.

Eksekusi antarmuka yang unik dan integrasi API yang sangat rapi. Sukses terus untuk tim Guardian!
```

---

## 18. Tim: ArmBagus dkk. (pitipiwpiw) - VeriFy
- **Folder Sumber**: `VeriFy-`
- **Ketua Tim / Anggota**: Bagus Aufa Ariq Armeidi (`ArmBagus`), Irfan (`AIZOFan`), Affan Abdul Majid Syahrul, Dea Gusriyanti | Universitas Multi Data Palembang (MDP)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri (Vercel Serverless)
- **Video Demo**: Tidak dicantumkan di README
- **Akun Demo**:
  - User: `irfan@gmail.com` / `12345678` (seeder: `user@verify.id` / `user123`)
  - Admin: `admin@gmail.com` / `admin123` (seeder: `admin@verify.id` / `admin123`)

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 65 | 22.75 |
| Kesesuaian dengan Studi Kasus | 25% | 92 | 23.00 |
| UI/UX | 20% | 90 | 18.00 |
| Kualitas Kode & Pemeliharaan | 10% | 70 | 7.00 |
| Dokumentasi | 10% | 70 | 7.00 |
| **Total Nilai Akhir** | **100%** | - | **77.75** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.760 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform VeriFy menghadirkan rancangan arsitektur penanganan The Trust Trap yang sangat matang, komprehensif, dan terkonsep baik. Gagasan mesin deteksi berbasis heuristik URL lokal yang dipadukan dengan Google Safe Browsing serta Scam Simulator berbasis Story Graph JSON dengan validasi graf DFS (StoryValidator) membuktikan kedalaman rekayasa tim.

Namun, pengujian pada tautan live deployment Vercel menemukan kendala kritis yang berdampak langsung pada skor fungsionalitas sesuai Juknis poin G.7.b:
1. Fitur Simulator Tidak Dapat Diakses di Production: Konfigurasi routing pada vercel.json menelan prefix /api, sehingga seluruh request seperti GET /api/simulator/scenarios dan POST /api/simulator/attempts jatuh ke api/index.php dan rute Laravel tidak ditemukan (404). Akibatnya, fitur unggulan simulasi interaktif mati total di peramban live.
2. Penanganan Exception Debug Merusak Alur Validasi: Pada api/index.php, penangkapan seluruh Throwable untuk output HTML menampilkan stack trace internal /var/task/... dan mengubah validasi form biasa menjadi HTTP 500. Biarkan Laravel menangani ValidationException dan NotFoundHttpException secara bawaan, serta bungkus renderer debug dengan kondisi app.debug.
3. Kebocoran Kredensial Sensitif di README: Host database TiDB Cloud, username root, dan Google Safe Browsing API Key tertulis terbuka pada dokumentasi publik. Segera rotasi kunci tersebut di Google Cloud Console, amankan database, dan sediakan berkas .env.example bersih tanpa nilai rahasia.
4. Penyempurnaan Tampilan UI: Tampilkan judul topik pada kartu simulator, bersihkan elemen badge duplikat, dan selaraskan teks antarmuka agar konsisten berbahasa Indonesia.

Potensi konsep dan arsitektur simulasi sangat tinggi. Sukses selalu untuk tim VeriFy!
```

---

## 19. Tim: Leonardo Elian (casan laptop) - FRAUD-ANT
- **Folder Sumber**: `FRAUDD-ANT/FRAUD-ANT`
- **Ketua Tim**: Leonardo Elian (leonardo.elian2008@gmail.com)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri (Firebase Hosting)
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 52 | 18.20 |
| Kesesuaian dengan Studi Kasus | 25% | 78 | 19.50 |
| UI/UX | 20% | 75 | 15.00 |
| Kualitas Kode & Pemeliharaan | 10% | 74 | 7.40 |
| Dokumentasi | 10% | 70 | 7.00 |
| **Total Nilai Akhir** | **100%** | - | **67.10** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.682 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform FRAUD-ANT mengusung konsep visual dan ide perlindungan siber yang menarik melalui integrasi TrapScan berbasis OCR dan pemeriksa tautan TrapLink. Pengolahan analisis di sisi server mandiri merupakan pendekatan yang baik dalam menjaga privasi data pengguna.

Namun, pengujian pada tautan live deployment menemukan kendala fungsionalitas dan arsitektur kritis yang wajib dibenahi:
1. Backend Belum Di-deploy di Lingkungan Live: Fitur utama 0 dari 2 dapat berjalan di production. Frontend Firebase memanggil endpoint relatif /api/scan dan /api/url-check tanpa ketersediaan backend aktif, menghasilkan respons 404 HTML dan error mentah ke pengguna. Host API di cloud provider (seperti Cloud Run, Render, atau Railway), lalu sambungkan via rewrite atau variabel environment VITE_API_BASE_URL.
2. Navigasi Menu & Aksesibilitas Mobile: Menu CardNav mengarahkan ke #about, #education, dan #faq yang tidak memiliki elemen target di DOM. Pada tampilan mobile, ganti overflow-hidden dengan overflow-y-auto agar menu tidak terpotong pada layar kecil.
3. Diferensiasi Tingkat Risiko: Seluruh hasil pemeriksaan saat ini di-hardcode dengan warna teks merah dan ikon segitiga bahaya, bahkan untuk risiko rendah. Bedakan warna visual indikator serta tampilkan skor dan rincian sumber temuan.
4. Perapian Kode & Selaras Branding: Satukan identitas antara ChatTrap dan FRAUD-ANT pada judul, favicon, dan metadata. Hapus script Tailwind CDN dari index.html produksi, terapkan worker pool singleton pada OCR Tesseract, dan pecah App.tsx menjadi komponen modular.

Jika backend live dan navigasi disempurnakan, platform ini memiliki potensi yang sangat baik. Sukses selalu untuk tim casan laptop!
```

---

## 20. Tim: Legansdeveloper - Cynthia
- **Folder Sumber**: `MIT-WEBDEVELOPMENT-IFORB`
- **Ketua Tim / Akun**: @Legansdeveloper (aleasyafa00@gmail.com)
- **Tautan Deployment**: https://cynthia.oscspace.online/ *(Aktif, SSL valid, Django + React + IndoBERT + Groq + ElevenLabs + Live2D)*
- **Video Demo**: Belum dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 96 | 33.60 |
| Kesesuaian dengan Studi Kasus | 25% | 95 | 23.75 |
| UI/UX | 20% | 97 | 19.40 |
| Kualitas Kode & Pemeliharaan | 10% | 96 | 9.60 |
| Dokumentasi | 10% | 95 | 9.50 |
| **Total Nilai Akhir** | **100%** | - | **95.85** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.741 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Cynthia adalah karya yang luar biasa memukau, inovatif, dan berstandar rekayasa perangkat lunak tinggi. Penggabungan fine-tuned IndoBERT untuk klasifikasi pesan, Google Safe Browsing dan heuristik untuk validasi URL, model bahasa Groq untuk penjelasan edukatif santai, sintesis suara ElevenLabs yang jernih, serta karakter interaktif Live2D Haru yang responsif terhadap tingkat ancaman menciptakan pengalaman pengguna yang sangat berkelas di cynthia.oscspace.online.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Batasan Pembacaan Dokumen PDF: Fitur analisis dokumen saat ini memakai pypdf yang hanya membaca layer teks murni. Jika berkas PDF merupakan hasil pemindaian gambar (scanned document), teks tidak terbaca dan sistem akan menolak dokumen karena belum dilengkapi mesin OCR lokal.
2. Belum Tersedia Modul Simulasi Percakapan: Cynthia sangat unggul sebagai asisten intelijen dan deteksi pesan. Namun, platform belum menyediakan skenario latihan percakapan bercabang (decision sandbox) untuk menguji respons pengguna secara langsung dalam studi kasus The Trust Trap.
3. Kelengkapan Berkas Video: README.md sudah sangat detail dan transparan dalam atribusi lisensi, namun belum menyertakan tautan rekaman video demo 5 menit sesuai panduan juknis lomba.

Saran pengembangan ke depan:
1. Integrasi OCR Fallback pada PDF: Tambahkan fallback OCR untuk mengekstraksi teks dari PDF berbasis gambar agar berkas pindaian surat tilang atau tagihan tetap dapat dianalisis.
2. Tambahkan Mode Latihan Skenario: Bangun modul simulasi interaktif di mana karakter Cynthia dapat memandu pengguna membedah berbagai modus jebakan siber secara bertahap.

Inovasi teknologi yang sangat matang dan berani. Sukses terus untuk tim Cynthia!
```

---

## 21. Tim: SlushyMint - TrustTrail
- **Folder Sumber**: `trusttrail`
- **Ketua Tim**: Muhammad Shumin (SlushyMint)
- **Tautan Deployment**: Tidak Ada (README menyatakan: "No public demo URL has been verified")
- **Video Demo**: Tidak Dicantumkan di README (Tersedia rencana di `docs/mit-week-demo-video-plan.md`)

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 88 | 30.80 |
| Kesesuaian dengan Studi Kasus | 25% | 99 | 24.75 |
| UI/UX | 20% | 98 | 19.60 |
| Kualitas Kode & Pemeliharaan | 10% | 99 | 9.90 |
| Dokumentasi | 10% | 88 | 8.80 |
| **Total Nilai Akhir** | **100%** | - | **93.85** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.769 karakter (aman di bawah batas 2.000 karakter).*

```text
TrustTrail menghadirkan pengalaman investigasi siber interaktif yang sangat matang dan selaras dengan tema The Trust Trap. Konsep gameplay yang menempatkan pengguna dalam dilema rekrutmen daring Ari, dipadukan arsitektur dual-shell Lacak OS untuk desktop dan Saku untuk perangkat bergerak, membuktikan dedikasi rekayasa antarmuka yang sangat serius. Mekanisme verifikasi bukti independen, recovery mission berbasis eksposur data, serta sintesis efek audio prosedural Web Audio API merupakan pencapaian teknis yang impresif.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Ketiadaan Tautan Live Deployment Publik: Berkas README.md secara transparan menyatakan belum ada URL demo publik yang terverifikasi dan hanya menyertakan panduan instalasi lokal. Berdasarkan juknis kompetisi, ketiadaan tautan deployment aktif mempengaruhi aspek penilaian fungsionalitas dan aksesibilitas pengujian instan.
2. Kelengkapan Tautan Video Demo: Rencana video sudah tersusun rapi di repositori, namun tautan rekaman video demo 5 menit belum disematkan pada README.md utama.
3. Ketergantungan State pada Local Storage: Seluruh riwayat dan progres investigasi tersimpan di local storage peramban. Jika pengguna membersihkan cache atau berganti gawai, progres penyelidikan akan terulang dari awal.

Saran pengembangan ke depan:
1. Publikasi Live Demo: Luncurkan aplikasi ke platform hosting statis seperti Vercel, Cloudflare Pages, atau Netlify agar karya dapat langsung diakses publik secara instan.
2. Opsi Ekspor Sesi: Sediakan fitur ekspor berkas kasus dalam format JSON terenkripsi agar pengguna dapat memindahkan progres investigasi ke perangkat lain.

Karya yang sangat brilian dengan arsitektur dan kualitas kode yang luar biasa tinggi. Sukses selalu untuk tim TrustTrail!
```

---

## 22. Tim: Dery Wahyu Perdana dkk. - Guardian Lab
- **Folder Sumber**: `mit-week-guardian-lab`
- **Ketua Tim**: Dery Wahyu Perdana | Universitas Teknologi Yogyakarta
- **Tautan Deployment**: Tidak Ada (README hanya menyertakan panduan eksekusi lokal Docker dan Bun host)
- **Video Demo**: Tidak Dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 89 | 31.15 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 96 | 9.60 |
| Dokumentasi | 10% | 88 | 8.80 |
| **Total Nilai Akhir** | **100%** | - | **93.25** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.760 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Guardian Lab adalah karya rekayasa keamanan siber yang sangat matang dan selaras dengan tema The Trust Trap. Integrasi pemeriksaan tautan dan QR berbasis Logistic Regression V6, bedah statis APK menggunakan dekompilasi JADX dengan DeepSeek AI dan fallback heuristik luring, serta penyediaan Ruang Uji terisolasi berbasis KasmVNC Chromium mencerminkan standar rekayasa yang sangat tinggi. Fitur pembagian Guardian Share Card, modul Academy, dan Community Drill juga berhasil menjembatani edukasi teknis ke masyarakat awam.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Ketiadaan Tautan Live Deployment Publik: Berkas README.md hanya menyediakan petunjuk instalasi lokal (Docker dan Bun host). Berdasarkan juknis lomba, ketiadaan URL deployment publik yang aktif membatasi pengujian instan dan mempengaruhi penilaian fungsionalitas.
2. Kelengkapan Berkas Video Demo: Dokumen panduan demo sudah tertata rapi dan menyertakan sampel APK uji coba, namun tautan rekaman video demo 5 menit belum disematkan pada README.md utama.
3. Kompleksitas Dependensi Lintas Bahasa: Menjalankan ekosistem di luar Docker menuntut banyak dependensi (Bun, MySQL, Python Uvicorn, Java JADX, dan broker Docker), yang rentan memicu friksi lingkungan saat deployment mandiri.

Saran pengembangan ke depan:
1. Penyebaran Live Demo ke Cloud: Sediakan deployment demo daring di VPS atau cloud hosting agar juri dan publik dapat langsung mencoba platform tanpa perlu menjalankan stack Docker lokal.
2. Sandbox Dinamis Android: Kembangkan modul analisis dinamis Android berbasis emulator cloud terisolasi untuk melengkapi fitur bedah APK statis yang sudah sangat solid.

Karya yang sangat brilian, komprehensif, dan berstandar tinggi. Sukses selalu untuk tim Guardian Lab!
```

---

## 23. Tim: Muhammad Ali Reza dkk. - Aswaja CyberShield
- **Folder Sumber**: `aswaja_cybershield`
- **Ketua Tim**: Muhammad Ali Reza | Universitas Nahdlatul Ulama Kalimantan Timur (UNUKALTAM)
- **Tautan Deployment**: https://aswajacybershield.vercel.app (Portal Login: https://aswajacybershield.vercel.app/login)
- **Video Demo**: Tidak Dicantumkan di README (Tersedia naskah pitch di `PENJELASAN_WEB.md`)

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 98 | 34.30 |
| Kesesuaian dengan Studi Kasus | 25% | 97 | 24.25 |
| UI/UX | 20% | 95 | 19.00 |
| Kualitas Kode & Pemeliharaan | 10% | 96 | 9.60 |
| Dokumentasi | 10% | 92 | 9.20 |
| **Total Nilai Akhir** | **100%** | - | **96.35** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.785 karakter (aman di bawah batas 2.000 karakter).*

```text
Aswaja CyberShield merupakan platform ketahanan digital yang sangat inovatif dan memiliki kedalaman analisis keamanan siber yang tinggi. Perpaduan tradisi Tabayyun (Kaidah 4T) dengan instrumen teknis seperti UrlThreatAnalyzer, sensor Suricata NIDS, dan Google Gemini AI menghasilkan solusi verifikasi tautan yang sangat kontekstual dalam membedah modus The Trust Trap, khususnya penipuan investasi bodong berkedok judol pada domain pemerintah (.go.id) dan akademik (.ac.id). Kesiapan live deployment di Vercel dengan integrasi Supabase PostgreSQL dan panel admin multi-role berjalan sangat mulus.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Kelengkapan Tautan Video Demo: Berkas README.md dan dokumen pendukung sudah sangat lengkap memuat naskah presentasi, namun tautan rekaman video demo 5 menit belum disematkan pada README.md utama sesuai ketentuan juknis lomba.
2. Penanganan Ketergantungan API Eksternal: Mesin orkestrasi bekerja baik, namun ketersediaan kuota dan latensi pemanggilan API Gemini cloud perlu diproteksi dengan fallback cache lokal deterministik yang lebih agresif saat trafik pemindaian melonjak.
3. Ketergantungan Log Sensor Suricata: Integrasi telemetri Suricata pada lingkungan serverless saat ini masih membaca berkas log telemetri terkurasi.

Saran pengembangan ke depan:
1. Integrasi Daemon NIDS Aktif: Kembangkan daemon pemantauan paket jaringan real-time pada infrastruktur VPS mandiri agar telemetri Suricata dapat menganalisis trafik live secara dinamis.
2. Ekstensi Peramban Mandiri: Bangun ekstensi browser (Chrome/Firefox) berbasis modul Tabayyun agar verifikasi tautan dapat dilakukan otomatis sebelum pengguna membuka tautan berisiko.

Karya yang sangat brilian, matang, dan berbobot tinggi. Sukses selalu untuk tim Aswaja CyberShield!
```

---

## 24. Tim: rizkydavid & Rayendra dkk. - Jeda
- **Folder Sumber**: `Jeda` / `Jeda team 24`
- **Ketua Tim**: Rizky David / Rayendra
- **Tautan Deployment**: https://jeda.up.railway.app
- **Video Demo**: Tidak Dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 98 | 34.30 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 97 | 19.40 |
| Kualitas Kode & Pemeliharaan | 10% | 97 | 9.70 |
| Dokumentasi | 10% | 92 | 9.20 |
| **Total Nilai Akhir** | **100%** | - | **97.10** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.778 karakter (aman di bawah batas 2.000 karakter).*

```text
Aplikasi Jeda adalah karya rekayasa keamanan digital yang sangat elegan, matang, dan memiliki filosofi privasi yang mendalam. Konsep 'Ragu? Jeda dulu' menyasar akar psikologis The Trust Trap secara tepat dengan mengedukasi warga agar tidak terburu-buru. Pendekatan pemeriksaan bertingkat pada Bedah Pesan, Cek Tautan dengan proteksi SSRF NetworkGuard, serta inspeksi biner file lokal di peramban sebelum dikirim ke server mencerminkan etika keamanan yang tinggi. Fitur Jam Emas pascainsiden, proteksi Keluarga, PWA Android Share Target, hingga kuis Latihan dengan kode pemulihan berjalan sangat responsif di jeda.up.railway.app.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Kelengkapan Berkas Video Demo: Repositori dan dokumen teknis (ARSITEKTUR.md, API.md, DATABASE.md) sudah tersusun rapi, namun tautan rekaman video demo 5 menit belum disematkan pada README.md utama sesuai ketentuan juknis lomba.
2. Penanganan Dokumen Terproteksi: Pemeriksaan file lokal sangat solid mendeteksi makro dan tanda bahaya awal, namun berkas terenkripsi atau arsip berpassword belum dapat diinspeksi mendalam tanpa kata sandi.
3. Ketergantungan Sesi Tanpa Akun: Sistem kode pemulihan sangat praktis, namun pengguna awam berisiko kehilangan progres jika membersihkan cache peramban sebelum mencatat kode pemulihan.

Saran pengembangan ke depan:
1. Pengingat Kode Pemulihan: Tampilkan dialog pengingat pencatatan kode pemulihan saat pengguna mencapai level tertentu agar progres kuis tidak hilang saat sesi peramban berakhir.
2. Ekstensi Peramban Jeda: Kembangkan add-on peramban ringan berbasis modul Bedah Pesan agar peringatan risiko dapat langsung muncul pada WhatsApp Web secara otomatis.

Karya yang sangat brilian, beretika tinggi, dan inspiratif. Sukses selalu untuk tim Jeda!
```

---

## 25. Tim: Muhamad Fauzaan & Raditt10 - Cekara
- **Folder Sumber**: `Cekara`
- **Ketua Tim**: Muhamad Fauzaan
- **Tautan Deployment**: Tidak Ada (README hanya menyertakan panduan instalasi lokal dan konfigurasi Docker / Laravel Cloud)
- **Video Demo**: Tidak Dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 89 | 31.15 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 98 | 9.80 |
| Dokumentasi | 10% | 88 | 8.80 |
| **Total Nilai Akhir** | **100%** | - | **93.45** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.783 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Cekara adalah karya rekayasa keamanan siber yang sangat komprehensif, matang, dan relevan membentengi anak muda dari The Trust Trap. Pendekatan arsitektur tiga pilar (Recognize, Learn, Act) dieksekusi dengan standar teknis yang sangat tinggi. Integrasi deteksi multi-modal teks, pemindai URL phishing, dan analisis tangkapan layar gambar via Gemini Vision, dipadukan failover otomatis ke Heuristic Guardian Engine, membuktikan ketahanan sistem yang handal. Modul simulasi percakapan interaktif, pusat tanggap darurat pascainsiden, WhatsApp Alert Generator, serta Radar Komunitas memperkuat ekosistem perlindungan digital secara nyata.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Ketiadaan Tautan Live Deployment Publik: Berkas README.md hanya menyertakan panduan instalasi lokal dan opsi Docker. Berdasarkan juknis lomba, ketiadaan URL demo daring aktif membatasi pengujian instan dan mempengaruhi penilaian fungsionalitas.
2. Kelengkapan Berkas Video Demo: Repositori dan dokumen pendukung sudah sangat kaya (ATURAN-DESAIN.md, BRAND_GUIDELINE.md, TEST_READY.md), namun tautan rekaman video demo 5 menit belum disematkan pada README.md utama.
3. Ketergantungan Layanan Real-time Reverb: Fitur ruang diskusi radar komunitas yang memanfaatkan Laravel Reverb membutuhkan daemon websocket yang harus terus berjalan di latar belakang saat deployment.

Saran pengembangan ke depan:
1. Penyebaran Live Demo Publik: Rilis aplikasi ke cloud hosting aktif agar juri dan masyarakat luas dapat langsung menguji fitur tanpa kendala instalasi lokal.
2. Ekstensi Peramban Cekara: Kembangkan ekstensi browser untuk memindai pesan chat masuk secara real-time pada aplikasi perpesanan web.

Karya yang sangat brilian, komprehensif, dan inspiratif. Sukses selalu untuk tim Cekara!
```

---

## 26. Tim: Joan Orlanda Purba - JAGA
- **Folder Sumber**: `jaga`
- **Ketua Tim**: Joan Orlanda Purba
- **Tautan Deployment**: Tidak Ada (README hanya menyertakan panduan instalasi lokal dan opsi tunnel)
- **Video Demo**: Tidak Dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 87 | 30.45 |
| Kesesuaian dengan Studi Kasus | 25% | 96 | 24.00 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 95 | 9.50 |
| Dokumentasi | 10% | 88 | 8.80 |
| **Total Nilai Akhir** | **100%** | - | **91.95** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.786 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform JAGA adalah karya rekayasa keamanan digital yang sangat inspiratif dan berbobot dengan penerapan prinsip Privacy by Design yang kuat. Filosofi 'Kenali sebelum terjebak' diterjemahkan dengan baik melalui kerangka Recognize, Learn, dan Act. Simulasi percakapan WhatsApp kurir APK dieksekusi dengan detail antarmuka yang sangat realistis dan edukatif. Pemrosesan murni di sisi klien (client-side) pada Cek Pesan, validasi CRC-16 pada Cek QRIS, serta panduan mitigasi berbasis urgensi waktu pada modul 'Sudah Terlanjur?' membuktikan kepedulian tinggi terhadap privasi data.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Ketiadaan Tautan Live Deployment Publik: Berkas README.md hanya menyertakan panduan instalasi lokal dan opsi tunnel. Berdasarkan juknis lomba, ketiadaan URL demo daring aktif membatasi pengujian instan dan mempengaruhi penilaian fungsionalitas.
2. Kelengkapan Berkas Video Demo: Repositori dan dokumen pendukung sudah tersusun rapi dengan gambar antarmuka, namun tautan rekaman video demo 5 menit belum disematkan pada README.md utama.
3. Ketergantungan Model AI Vision Lokal: Fitur Cek Lowongan Kerja mengandalkan inferensi lokal Ollama (Qwen3-VL) tanpa fallback otomatis. Jika perangkat penguji belum memasang model lokal, fitur belum dapat digunakan secara langsung.

Saran pengembangan ke depan:
1. Sediakan Fallback Heuristik pada Cek Lowongan: Tambahkan mesin analisis aturan berbasis kata kunci lokal atau opsi cloud API ringan agar Cek Lowongan tetap dapat diuji tanpa keharusan mengunduh model lokal.
2. Penyebaran Live Demo Publik: Rilis aplikasi ke cloud hosting (Vercel atau Netlify) agar juri dan masyarakat luas dapat langsung mencoba platform.

Karya yang sangat solutif, beretika tinggi, dan rapi. Sukses selalu untuk pengembang JAGA!
```

---

## 27. Tim: Kalzz76 (Rafli) dkk. - Scamora AI
- **Folder Sumber**: `Scamora`
- **Ketua Tim**: Rafli (Kalzz76) / Alif Yusuf Anwar (lemonade199) dkk.
- **Tautan Deployment**: https://scamora-teal.vercel.app
- **Video Demo**: Tidak Dicantumkan di README (Dokumentasi arsitektur mandiri pada README.md)

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 93 | 32.55 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 94 | 9.40 |
| Dokumentasi | 10% | 97 | 9.70 |
| **Total Nilai Akhir** | **100%** | - | **95.35** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.697 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Scamora AI menunjukkan arsitektur keamanan siber yang sangat terkonsep, matang, dan relevan dengan studi kasus The Trust Trap. Filosofi 'indikasi risiko bukan vonis mutlak' diterapkan disiplin dengan 3 kategori resmi. Integrasi Google Safe Browsing, heuristik URL, masking PII otomatis, serta pembedahan rekayasa sosial berbasis Gemini AI berjalan nyata dan akurat di deployment live. Antarmuka web tampil bersih, responsif, dan dilengkapi navigasi bawah mobile yang ergonomis.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Serverless Cold-Start pada Sesi Kuis: Endpoint POST /challenges/sessions menghasilkan status 500 di serverless Vercel. Fungsi createSession bergantung pada map dynamicScenarios yang disinkronisasi lewat setTimeout background tanpa await. Pada fungsi serverless, proses background membeku pasca-request sehingga skenario belum termuat di memori saat sesi diinisiasi.
2. Aktivasi Akun Pengguna: Akun demo non-admin mensyaratkan verifikasi OTP email nyata untuk aktivasi database. Tanpa akses ke kotak masuk email terkait, proses login tertahan di tahap verifikasi. Namun, akun superadmin berjalan mulus dan membuka seluruh hak akses sistem.

Saran peningkatan teknis ke depan:
1. Eager Hydration pada Serverless: Ganti pola setTimeout dengan query database langsung atau cache fallback di dalam createSession agar fungsi serverless tidak bergantung pada memori persisten antar-invokasi.
2. In-Memory Seeder Otomatis: Pastikan in-memory store lokal terisi seeder default saat DATABASE_URL kosong agar seluruh unit test otomatis lulus sempurna di lingkungan offline.

Eksekusi arsitektur yang sangat solid, rapi, dan membanggakan. Terus tingkatkan karyanya!
```

---

## 28. Tim: MITWEEK-inponamatim (arzghy, xrafidx, Saublues) - ThreatLens
- **Folder Sumber**: `MITWEEK-inponamatim` (Repositori: `Dokumentasi`, `frontend`, `backend`, `infra`, `analysis-service`)
- **Ketua Tim**: arzghy / Rafid Wahyu A / Sausan Asma
- **Tautan Deployment**: Tidak Ada (Dirancang berbasis Docker Compose lokal dengan cloud backend Supabase/OpenAI)
- **Video Demo**: Tidak Dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 88 | 30.80 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 97 | 9.70 |
| Dokumentasi | 10% | 95 | 9.50 |
| **Total Nilai Akhir** | **100%** | - | **93.70** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.739 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform ThreatLens menghadirkan rekayasa arsitektur keamanan siber yang sangat matang dan berbobot dalam kompetisi ini. Pemisahan multi-layanan (Go API, Python analysis-service dengan LangGraph, dan Next.js 16) dirancang sangat disiplin. Prinsip 'aman butuh bukti nyata, bukan sekadar ketiadaan temuan' patut menjadi acuan industri. Modul simulasi percakapan WhatsApp, panduan darurat 15 menit, serta proteksi privasi warga (masking PII, alias HMAC Warga-a1b2c3, dan isolasi worker browser non-root) dieksekusi dengan standar keamanan tinggi.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Ketiadaan Live Deployment Publik: Repositori berfokus penuh pada panduan Docker lokal dan belum menyertakan URL deployment cloud aktif. Sesuai juknis, ketiadaan tautan daring yang dapat diuji langsung membatasi verifikasi instan bagi penguji dan berdampak pada skor fungsionalitas.
2. Format Multi-Repo vs Monorepo: Memecah proyek ke dalam 5 repositori terpisah tanpa git submodule atau root monorepo menambah beban setup lokal karena juri harus meng-clone dan mengonfigurasi file .env lima kali.
3. Ketergantungan Kredensial Pihak Ketiga: Sistem membutuhkan banyak konfigurasi eksternal (Supabase, Cloudinary, OpenAI, Turnstile) agar seluruh fitur dapat berjalan penuh tanpa berstatus unavailable.

Saran peningkatan teknis ke depan:
1. Penyediaan Demo Staging Publik: Sediakan deployment demo daring di platform cloud dengan akun tamu agar penguji dapat langsung mencoba kecanggihan sistem.
2. Monorepo Terpadu: Satukan seluruh repositori dalam satu proyek monorepo dengan Docker Compose di root repositori agar alur review lebih mulus.

Karya rekayasa yang sangat impresif, mendalam, dan membanggakan. Terus berkarya dan sukses selalu!
```

---

## 29. Tim: ajrth21 dkk. - TRASCO (Trap & Scope)
- **Folder Sumber**: `Trasco---MIT-WEEK-2026`
- **Ketua Tim**: ajrth21 (Anggota: Muhammad Dwi Reza, Rx)
- **Tautan Deployment**: https://trasco.oscspace.online/ (Tercantum pada berkas LINK TRASCO YANG DI WEBSITE SALAH KUMPUL)
- **Video Demo**: Tidak Dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 94 | 32.90 |
| Kesesuaian dengan Studi Kasus | 25% | 97 | 24.25 |
| UI/UX | 20% | 95 | 19.00 |
| Kualitas Kode & Pemeliharaan | 10% | 95 | 9.50 |
| Dokumentasi | 10% | 96 | 9.60 |
| **Total Nilai Akhir** | **100%** | - | **95.25** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.678 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform TRASCO (Trap & Scope) menghadirkan solusi keamanan siber yang sangat solid, matang, dan relevan dengan studi kasus The Trust Trap. Deteksi mesin ganda yang memadukan heuristik deterministik lokal dengan Google Gemini AI berjalan responsif di deployment live. Validasi citra 14 tahap dengan proteksi anti-decompression bomb dan prinsip fail-closed (status UNKNOWN saat AI offline) mencerminkan standar integritas tinggi. Dasbor web tampil berkarakter dengan skor higienitas, visualisasi radar ancaman, serta simulator interaktif yang dilengkapi sintesis suara (TTS) avatar berbahasa Indonesia.

Catatan teknis dan evaluasi yang perlu diperhatikan:
1. Status Ekstensi Peramban: Kejujuran tim mencatat bahwa ekstensi peramban masih dalam mode pengembangan (unpacked) sangat diapresiasi. Ketiadaan publikasi di Chrome Web Store sedikit membatasi adopsi instan, namun dasbor publik di trasco.oscspace.online membuktikan seluruh mesin deteksi dan API berjalan nyata.
2. Identitas Berbasis Cookie: Pelacakan analitik mengandalkan signed cookie visitor_id per peramban tanpa sistem multi-user. Pola ini menjaga privasi tanpa registrasi paksa, namun riwayat hilang jika cookie terhapus atau pengguna berganti perangkat.

Saran peningkatan teknis ke depan:
1. Distribusi Ekstensi Mandiri: Sediakan berkas terpaket (.crx) atau arsip unduhan langsung di dasbor sembari menunggu proses verifikasi di Chrome Web Store.
2. Sinkronisasi Akun Opsional: Aktifkan modul autentikasi FastAPI yang sudah tersedia sebagai opsi sekunder bagi pengguna yang membutuhkan sinkronisasi riwayat lintas perangkat.

Karya yang sangat solutif, rapi, dan beretika tinggi. Sukses selalu untuk tim TRASCO!
```

---

## 30. Tim: Muhammad Shafly Putra Darmawan dkk. - Anti Trap Order (ATO)
- **Folder Sumber**: `anti-trap-order`
- **Ketua Tim**: Muhammad Shafly Putra Darmawan (Anggota: Al-Ghani Desta Setyawan, Syafaruddin, Widhi Nur Maulida | Dosen Pendamping: Naufal Azmi Verdikha, S.Kom., M.Eng. — Teknik Informatika UMKT)
- **Tautan Deployment**: https://ato.kousozo.tech
- **Video Demo**: Tidak Dicantumkan di README (Pipeline rendering video mandiri berbasis fframes/Rust tersedia di direktori demo/video)

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 98 | 34.30 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 97 | 9.70 |
| Dokumentasi | 10% | 98 | 9.80 |
| **Total Nilai Akhir** | **100%** | - | **97.50** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.760 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Anti Trap Order (ATO) menghadirkan terobosan pendekatan yang sangat cerdas, etis, dan dewasa dalam menjawab studi kasus The Trust Trap. Alih-alih memberikan vonis persentase bahaya pasif, ATO melatih pengguna berpikir dari kacamata pelaku kejahatan digital. Modul A20 Lite yang dipadukan dengan A20 Soul Guardian Arc serta Action Card berisi pesan siap salin (santai dan tegas) memberikan amunisi praktis yang nyata untuk melindungi orang terkasih dari manipulasi digital.

Kualitas rekayasa sistem dan komitmen privasi tim ini sangat luar biasa:
1. Privasi dan Integritas Data Mutlak: Teks pengguna disamarkan di peramban sebelum dikirim ke endpoint analisis Go, langsung dibuang tanpa pencatatan basis data, serta bebas dari telemetri pihak ketiga. Karakter dan nama panggilan pada modul Soul diproses murni di sisi peramban.
2. Sinkronisasi Mesin Ganda: Mode terbatas berbasis Naive Bayes TypeScript di peramban terbukti identik seratus persen dengan mesin Go melalui 51 skenario uji fixture bersama. Ini pencapaian arsitektur yang sangat presisi dan elegan.
3. Manajemen Status dan UX Rapi: Alur navigasi terintegrasi apik dengan riwayat peramban (pushState), dilengkapi penanganan galat menyeluruh seperti sheet jaringan luring, fallback mesin lokal, hingga pembatas laju HTTP 429 dengan hitung mundur waktu.

Saran peningkatan teknis ke depan:
1. Dukungan Progressive Web App: Tambahkan Service Worker agar mode terbatas dapat dibuka langsung saat perangkat luring tanpa bergantung sesi pembuka aktif.
2. Pengayaan Korpus Slang: Pembaruan berkala pada kamus slang dan singkatan percakapan penipuan daring akan semakin menajamkan ekstraksi token deterministik.

Karya yang sangat matang, beretika tinggi, dan solutif. Sukses selalu untuk tim ATO!
```

---

## 31. Tim: arya-vrxx dkk. (Basicgenis) - Incident Response & Recovery Kit
- **Folder Sumber**: `Basicgenis-MIT-UNMUL`
- **Ketua Tim**: arya-vrxx (Anggota: Daniel / 24nielsmktinet, Rahma Aisira | SMK TI Airlangga Samarinda)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 96 | 33.60 |
| Kesesuaian dengan Studi Kasus | 25% | 95 | 23.75 |
| UI/UX | 20% | 95 | 19.00 |
| Kualitas Kode & Pemeliharaan | 10% | 94 | 9.40 |
| Dokumentasi | 10% | 92 | 9.20 |
| **Total Nilai Akhir** | **100%** | - | **94.95** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.737 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Incident Response & Recovery Kit karya perwakilan SMK TI Airlangga Samarinda menghadirkan pertolongan pertama pasca-insiden siber yang sangat praktis, taktis, dan aplikatif. Fokus pada pemulihan fase darurat setelah pengguna terkena insiden (phishing, APK berbahaya, akun dibajak, atau terlanjur transfer) menjawab celah krusial yang kerap terlewatkan pada platform edukasi keamanan siber pada umumnya.

Kualitas rekayasa dan nilai positif dari proyek ini:
1. Arsitektur Mandiri & PWA Luring: Dibangun dengan Vanilla JavaScript modular tanpa ketergantungan framework berat. Implementasi Service Worker berjalan sangat prima sehingga panduan darurat, kontak perbankan, dan alat analisis tetap dapat beroperasi penuh tanpa koneksi internet.
2. Analisis Rule-Based Teruji: Mesin pemeriksa tautan (12 aturan) dan pesan mencurigakan (8 indikator) dilengkapi 19 unit test mandiri. Sanitasi input melalui escapeHtml diterapkan dengan disiplin sebelum manipulasi DOM untuk mencegah celah XSS.
3. UI/UX dan Kerapian Detail: Tampilan bersih dengan tema sage konsisten, tema gelap/terang persisten di localStorage, dukungan prefers-reduced-motion, serta maskot robot SVG interaktif yang memberi sentuhan humanis.

Saran peningkatan teknis ke depan:
1. Resolusi Pemendek Tautan: Kembangkan penanganan pemendek URL dengan mekanisme ekspansi alamat tujuan agar analisis tautan yang dipersingkat dapat mendeteksi domain akhir secara presisi.
2. Tipografi Luring Penuh: Unduh aset font DM Sans dan Manrope secara lokal ke direktori proyek agar konsistensi tipografi tetap terjaga utuh saat pertama kali dibuka dalam kondisi jaringan terputus.

Karya yang sangat matang, rapi, dan berfaedah nyata bagi ekosistem digital. Sukses selalu untuk tim!
```

---

## 32. Tim: ambakes (Jhonatan Farles) - CEKAT
- **Folder Sumber**: `cekat-website`
- **Ketua Tim**: ambakes (Jhonatan Farles | jhonatanfarles@gmail.com)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 96 | 33.60 |
| Kesesuaian dengan Studi Kasus | 25% | 96 | 24.00 |
| UI/UX | 20% | 97 | 19.40 |
| Kualitas Kode & Pemeliharaan | 10% | 96 | 9.60 |
| Dokumentasi | 10% | 94 | 9.40 |
| **Total Nilai Akhir** | **100%** | - | **96.00** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.745 karakter (aman di bawah batas 2.000 karakter).*

```text
Aplikasi CEKAT menghadirkan platform edukasi dan verifikasi penipuan digital yang sangat segar, matang, dan berkarakter kuat. Pendekatan visual bernuansa alam piksel dengan tema mint dan tipografi Silkscreen memberikan identitas visual khas tanpa mengorbankan keterbacaan maupun performa aplikasi web.

Kualitas rekayasa dan keunggulan teknis yang menonjol:
1. Analisis Lengkap Termasuk QRIS: Dekoder gambar QR di peramban yang mampu membedah struktur data TLV QRIS, memvalidasi checksum CRC-16, serta membedakan format Wi-Fi dan URL merupakan nilai tambah inovatif yang sangat relevan dengan modus penipuan merchant saat ini.
2. Deteksi Cerdas Tautan & Pesan: Pemindaian memadukan heuristik cerdas (normalisasi leetspeak dan jarak edit Levenshtein terhadap basis data merek) dengan reputasi Google Safe Browsing dan IsThisSpam.
3. Standar Aksesibilitas Luar Biasa: Panel aksesibilitas mandiri dengan pengaturan kontras tinggi, penyesuaian ukuran teks, penghentian animasi, dan garis bawah tautan mencerminkan kepedulian inklusif yang nyata bagi pengguna.
4. Kode Bersih & Teruji: Struktur React 19 dan TypeScript tersusun sangat rapi tanpa peringatan linter (oxlint 0 warning) serta didukung 15 unit test logika yang lulus sempurna.

Saran peningkatan teknis ke depan:
1. Fallback Heuristik Mandiri: Sediakan indikator status transparan di antarmuka jika kuota API eksternal habis, agar pengguna tahu analisis tetap berjalan memakai mesin heuristik lokal.
2. Validasi Batas Nominal QRIS: Kembangkan deteksi batas nominal pembayaran pada tag data QRIS dinamis untuk mengidentifikasi anomali tagihan sebelum pengguna memindai lewat dompet digital.

Karya yang sangat artistik, solutif, dan berstandar teknis tinggi. Sukses selalu untuk tim CEKAT!
```

---

## 33. Tim: Robertus567 - TrustGuard
- **Folder Sumber**: `TrustGuard-App`
- **Ketua Tim**: Robertus567 (robertus567@gmail.com)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 98 | 34.30 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 98 | 19.60 |
| Kualitas Kode & Pemeliharaan | 10% | 98 | 9.80 |
| Dokumentasi | 10% | 98 | 9.80 |
| **Total Nilai Akhir** | **100%** | - | **98.00** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.755 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform TrustGuard menghadirkan ekosistem pertahanan digital yang sangat matang, orisinal, dan menyeluruh dalam menjawab studi kasus The Trust Trap. Integrasi tiga pilar utama—Recognize (Scanner pesan, link, dan dokumen), Learn (40 chapter latihan dalam 8 jalur dengan 4 tier penjaga), serta Act (panduan darurat dan 7 kanal pelaporan resmi)—dieksekusi dengan standar rekayasa tingkat industri.

Kualitas rekayasa dan keunggulan teknis yang menonjol:
1. Scanner Berkas Luring Mandiri: Kemampuan membedah PDF, DOCX, dan OCR gambar langsung di peramban via WebAssembly tanpa mengirim berkas ke server merupakan pencapaian privasi yang patut diapresiasi tinggi.
2. Guardian AI Berbasis RAG & Sensor Berlapis: Integrasi AI dibekali 21 basis pengetahuan resmi (OJK, Komdigi, BI, Polri, NIST), penyensoran data sensitif dua lapis, serta fallback lokal yang tetap informatif saat AI luring.
3. Kreativitas Visual & Interaktivitas: Karakter Mecha Guardian interaktif berbasis SVG dengan 16 ekspresi mood, efek audio WebAudio murni, dukungan bilingual (ID/EN), dan responsivitas seluler yang mulus.
4. Keamanan Arsitektur yang Rapi: Berjalan tanpa dependensi npm pihak ketiga, autentikasi scrypt, token sesi HMAC-SHA256, driver Neon PostgreSQL via HTTP SQL, serta 41 unit test otomatis yang lulus sempurna.

Saran peningkatan teknis ke depan:
1. Persistensi Model OCR: Manfaatkan Cache Storage browser untuk model Tesseract bahasa Indonesia agar proses pemindaian gambar luring berikutnya berjalan lebih instan.
2. Ekspor Kartu Edukasi: Sediakan opsi unduh ringkasan hasil pemindaian dalam format gambar agar pengguna mudah membagikan peringatan bahaya ke grup keluarga.

Karya yang sangat visioner, solid, dan beretika tinggi. Sukses selalu untuk tim TrustGuard!
```

---

## 34. Tim: SAJADDIPURO - SiagaDigital
- **Folder Sumber**: `siagadigital`
- **Ketua Tim**: SAJADDIPURO (NASI1985)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 97 | 33.95 |
| Kesesuaian dengan Studi Kasus | 25% | 97 | 24.25 |
| UI/UX | 20% | 96 | 19.20 |
| Kualitas Kode & Pemeliharaan | 10% | 97 | 9.70 |
| Dokumentasi | 10% | 96 | 9.60 |
| **Total Nilai Akhir** | **100%** | - | **96.70** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.740 karakter (aman di bawah batas 2.000 karakter).*

```text
SiagaDigital menghadirkan platform mitigasi penipuan digital yang sangat matang, berakar kuat pada kebutuhan nyata masyarakat, dan dieksekusi dengan pendekatan arsitektur luring yang mengagumkan. Keputusan tim menjalankan seluruh logika secara mandiri di sisi klien tanpa server maupun telemetri menjamin privasi data pengguna secara mutlak.

Kualitas rekayasa dan keunggulan teknis yang menonjol:
1. Mesin Analisis Berbasis Linguistik: Normalisasi teks menangani leetspeak, homoglif Kiril, unspacing kata, serta peluluhan afiks imbuhan bahasa Indonesia (mentransfer menjadi transfer) pada modul affix bekerja sangat cerdas mencegah manipulasi kata.
2. Pengenalan Konteks Edukasi: Penanganan kalimat peringatan seperti "jangan bagikan kode OTP" yang tidak memicu alarm palsu membuktikan kepekaan tim terhadap akurasi deteksi di lapangan.
3. Chatbot Luring & Simulasi Interaktif: SiagaBot deterministik multi-turn mengenali bahasa gaul dan salah ketik tanpa ketergantungan API eksternal, dipadukan 6 skenario latihan bertahap yang mendidik.
4. Kualitas Kode & Pengujian Masif: Pemisahan concern sangat rapi, bebas dependensi berlebih, serta didukung 93 unit test otomatis yang lulus sempurna di seluruh modul inti.

Saran peningkatan teknis ke depan:
1. Pengelompokan Kategori Lebih Fleksibel: Pertimbangkan struktur trie atau regex terkompilasi terindeks untuk basis data kata kunci agar pencarian ratusan pola lebih efisien saat kamus terus bertambah.
2. Ekspor Rencana Tindakan Darurat: Tambahkan fitur unduh berkas teks ringkas untuk rangkuman langkah darurat korban agar mudah dibawa saat melapor ke pihak bank atau kepolisian.

Karya yang sangat solutif, cerdas secara teknis, dan beretika tinggi. Sukses selalu untuk tim SiagaDigital!
```

---

## 35. Tim: vaskoyudha (Vasco Yudha Nodyatama Sera) - Lumina
- **Folder Sumber**: `Lumina`
- **Ketua Tim**: vaskoyudha (Vasco Yudha Nodyatama Sera | vascoyudha1@gmail.com)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 99 | 34.65 |
| Kesesuaian dengan Studi Kasus | 25% | 99 | 24.75 |
| UI/UX | 20% | 98 | 19.60 |
| Kualitas Kode & Pemeliharaan | 10% | 98 | 9.80 |
| Dokumentasi | 10% | 96 | 9.60 |
| **Total Nilai Akhir** | **100%** | - | **98.40** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.759 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Lumina menghadirkan solusi pertahanan digital yang sangat komprehensif, matang, dan berstandar industri tinggi dalam menjawab studi kasus The Trust Trap. Integrasi empat pilar utama—Companion (analisis pesan luring), Belajar (12 modul kurikulum adaptif dengan spaced repetition), Simulasi (percakapan interaktif bertingkat dengan timer server), dan Komunitas (forum diskusi bermoderasi)—dieksekusi dengan presisi arsitektur luar biasa.

Kualitas rekayasa dan keunggulan teknis yang menonjol:
1. Prinsip Deterministik & Privasi: Skor risiko 0–100 dihitung langsung di peramban via 10 agen spesialis dengan kutipan bukti nyata dari teks, sementara model bahasa hanya menjadi penjelas konteks tanpa menentukan skor.
2. Audit Lowongan Ganda: Pemindaian loker dengan konsensus dua mesin (Sentinel dan Lumina) yang menerapkan prinsip kehati-hatian menang merupakan terobosan praktis yang sangat kontekstual.
3. Kualitas Kode & Pengujian Masif: Basis kode Next.js 16 dan TypeScript bersih tanpa kesalahan tipe (0 type errors), didukung 207 berkas pengujian dengan 1.200+ kasus uji dan benchmark korpus 120 skenario nyata.
4. Dokumentasi Tingkat Enterprise: Penyusunan spesifikasi arsitektur, laporan audit berkala, dan atribusi lisensi tersaji sangat transparan dan mendalam.

Saran peningkatan teknis ke depan:
1. Isolasi Akses Berkas Dinamis: Batasi pemanggilan readdir dinamis pada modul studio ke subfolder statis tertentu guna mencegah tracing seluruh repositori saat kompilasi Turbopack.
2. Tautan Video Demo di README: Pertimbangkan menyematkan tautan video demo pada berkas README agar memudahkan juri mengakses demonstrasi visual secara langsung.

Karya yang sangat visioner, solid, dan berstandar teknis luar biasa. Sukses selalu untuk tim Lumina!
```

---

## 36. Tim: Nanti Ajah (MIT-041) - The Trust Trap Guardian
- **Folder Sumber**: `TrustTrapGuardian`
- **Ketua Tim**: Micho Christianta (Anggota: Znt / deryhafizh, Radit220 | Universitas Gunadarma)
- **Tautan Deployment**: https://trusttrapguardian.vercel.app/
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 97 | 33.95 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 97 | 19.40 |
| Kualitas Kode & Pemeliharaan | 10% | 96 | 9.60 |
| Dokumentasi | 10% | 95 | 9.50 |
| **Total Nilai Akhir** | **100%** | - | **96.95** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.759 karakter (aman di bawah batas 2.000 karakter).*

```text
The Trust Trap Guardian menghadirkan platform mitigasi rekayasa sosial yang cerdas, terstruktur, dan berlandaskan Human-Computer Interaction (HCI) yang kuat. Pendekatan tiga pilar Recognize, Act, dan Learn yang dipadukan prinsip Local-First Privacy membuktikan kematangan konsep tim dalam melindungi pengguna dari manipulasi psikologis penipuan digital tanpa mengorbankan privasi data.

Kualitas rekayasa dan keunggulan teknis yang menonjol:
1. Mesin Heuristik Transparan & Privasi Lokal: Pemindaian 11 modul ancaman (upfront fee, APK/OTP, phishing link dengan rasio Shannon Entropy, hingga romance scam) berjalan 100% di peramban. Modul privacyScrubber menyensor NIK, nomor rekening, dan OTP secara instan sebelum analisis teks dimulai.
2. Penerapan Ergonomi Kognitif yang Matang: Fitur Panic Triage menerapkan Hick's Law dan tindakan darurat time-boxed (detik 0–30 untuk mode pesawat dan menit 1–60 untuk isolasi perbankan), diperkuat banner Psychological First Aid (anti-shame loop) dan checklist darurat berefek endowed progress.
3. Kualitas Kode & Pengujian Masif: Dilengkapi 53 automated unit test pada verifyEngine.mjs yang lulus 100% tanpa celah, mencakup verifikasi kasus bahaya, penanganan leetspeak, dan uji ketahanan terhadap false positive pada pesan resmi.

Saran peningkatan teknis ke depan:
1. Penyempurnaan Sintaks Regex: Bersihkan karakter escape berlebih pada privacyScrubber.js dan heuristicRules.js agar seluruh peringatan linter oxlint menjadi nol peringatan secara mutlak.
2. Tautan Video Demo di README: Pertimbangkan menyematkan tautan rekaman video demo di README agar juri dapat mengakses demonstrasi visual secara langsung.

Karya yang sangat solutif, beretika tinggi, dan sarat inovasi psikologi kognitif. Sukses selalu untuk tim!
```

---

## 37. Tim: secondaryfarand (Second Farand) - Guardiola
- **Folder Sumber**: `guardiola`
- **Ketua Tim**: secondaryfarand (Second Farand)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 84 | 29.40 |
| Kesesuaian dengan Studi Kasus | 25% | 93 | 23.25 |
| UI/UX | 20% | 89 | 17.80 |
| Kualitas Kode & Pemeliharaan | 10% | 80 | 8.00 |
| Dokumentasi | 10% | 88 | 8.80 |
| **Total Nilai Akhir** | **100%** | - | **87.25** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.571 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Guardiola menghadirkan inovasi ekosistem pertahanan siber yang menarik dengan konsep Reverse Lab, di mana pengguna berlatih dari sudut pandang pelaku guna memahami taktik manipulasi psikologis. Fitur pelengkap seperti URL Inspector dengan OCR peramban, Community Reporting, Pusat Edukasi, dan ekstensi Manifest V3 memperkaya cakupan platform.

Catatan kritis dan bug implementasi yang ditemukan:
1. Bug Paradoks Peran pada Reverse Lab: Ditemukan kesalahan logika pada skenario live simulasi AI (Ibu Siti). Pesan pembuka awal (initialMessage) pada database diisi dengan teks rayuan penipuan undian 100 juta. Karena sistem merender pesan awal di bubble kiri (sisi target), Ibu Siti malah menyapa dan menipu dirinya sendiri di pesan pertama, sehingga alur percakapan menjadi terbalik dan membingungkan peran pengguna.
2. Evaluasi Skor Statis: Penilaian kelulusan simulasi chat hanya bertumpu pada batas kuantitas interaksi (nextAttempt >= 3) dengan skor statis 100/50, tanpa evaluasi semantik terhadap efektivitas persuasi pengguna.
3. Keamanan Kredensial & Autentikasi: Pada authController.js, password disimpan dan diverifikasi dalam bentuk plaintext murni tanpa hashing (bcrypt/argon2). Endpoint backend juga belum diproteksi middleware otorisasi JWT.
4. Konfigurasi Lingkungan: Ekstensi peramban masih meng-hardcode localhost:5000 sehingga gagal memanggil API cloud produksi secara otomatis.

Saran peningkatan: Benahi data seed peran pada basis data skenario, terapkan hashing password, serta evaluasi respons AI secara kontekstual. Sukses untuk tim Guardiola!
```

---

## 38. Tim: papipapipum (Jonathan Salim dkk.) - Jeli
- **Folder Sumber**: `MIT_WEEK2026`
- **Ketua Tim**: Jonathan Salim (Anggota: Gregorius Petrus Leslie, Ilham Rafiqin)
- **Tautan Deployment**: https://jeli-mit.vercel.app/#home
- **Video Demo**: https://drive.google.com/drive/folders/11HcbpnGFz4UnpxVIa-04SdCE7CDHotaT

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 98 | 34.30 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 98 | 19.60 |
| Kualitas Kode & Pemeliharaan | 10% | 97 | 9.70 |
| Dokumentasi | 10% | 98 | 9.80 |
| **Total Nilai Akhir** | **100%** | - | **97.90** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.754 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Jeli menghadirkan solusi keamanan digital yang sangat matang, berkarakter kuat, dan terarah dalam melindungi pencari kerja muda dari penipuan lowongan kerja. Pemaduan tiga fitur utama—Jeli Cek (inspeksi pesan, gambar, link), Jeli Lakon (simulator rekrutmen berapor PDF), serta Sahabat Jeli (avatar pendamping berbasis suara)—dieksekusi dengan standar rekayasa tingkat industri.

Kualitas rekayasa dan keunggulan teknis yang menonjol:
1. Validasi Multi-Modal & Regulasi: Jeli Cek menganalisis teks, gambar, dan URL yang dipadukan basis hukum ketenagakerjaan (Permenaker No. 18 Tahun 2024) serta tautan verifikasi instan ke portal AHU Kemenkumham.
2. Arsitektur Stateless & Privasi: Sesi latihan Jeli Lakon beroperasi tanpa penyimpanan transkrip di database, melainkan memakai token sesi bertanda tangan kriptografis HMAC-SHA256 terkompresi zlib di sisi klien. Pendekatan zero-retention ini menjamin privasi pengguna secara maksimal.
3. Kerapian UI/UX & Aksesibilitas Suara: Antarmuka toska gelap tersusun elegan, responsif di berbagai layar, mendukung dwibahasa (ID/EN), serta menyediakan interaksi suara dua arah (speech-to-text Web Speech API dan sintesis ElevenLabs).
4. Dokumentasi & Kode Berkualitas: Struktur React 19 TypeScript dan FastAPI Pydantic v2 tersusun rapi, build frontend lulus sempurna, dan dilengkapi panduan teknis yang lengkap.

Saran peningkatan teknis ke depan:
1. Fallback Heuristik Luring: Pertimbangkan modul pencocokan kata kunci lokal di sisi klien sebagai jaring pengaman saat kuota API eksternal habis.
2. Filter Data Pribadi Otomatis: Sediakan deteksi otomatis nomor KTP atau rekening sebelum data dikirim untuk analisis.

Karya yang sangat visioner, solid, dan beretika tinggi. Sukses selalu untuk tim papipapipum!
```

---

## 39. Tim: Nadhif56 (Nadhif) - Cyber Fortress (The Trust Trap)
- **Folder Sumber**: `The-Trust-Trap`
- **Ketua Tim**: Nadhif
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 91 | 31.85 |
| Kesesuaian dengan Studi Kasus | 25% | 93 | 23.25 |
| UI/UX | 20% | 93 | 18.60 |
| Kualitas Kode & Pemeliharaan | 10% | 90 | 9.00 |
| Dokumentasi | 10% | 82 | 8.20 |
| **Total Nilai Akhir** | **100%** | - | **90.90** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.746 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Cyber Fortress (BentengSiber) menghadirkan sarana edukasi dan deteksi penipuan digital yang praktis, rapi, dan solutif. Pilihan arsitektur deteksi murni di sisi klien (client-side) patut diapresiasi karena menjamin privasi pengguna secara mutlak tanpa data dikirim ke server luar. Fitur seperti detektor 12 kategori ancaman, preset modus nyata, penyorot kata kunci, visual gauge risiko, checklist keamanan, hingga integrasi kanal pelaporan resmi (Kominfo, IASC OJK, Patroli Siber) sangat relevan dengan kebutuhan literasi siber publik saat ini.

Beberapa evaluasi teknis yang dapat ditingkatkan:
1. Penyorotan Kata Kunci Bersarang: Logika buatHighlightHtml melakukan replace regex berulang langsung pada string HTML yang sudah disisipi tag <mark>. Saat kata kunci majemuk dan tunggal sama-sama cocok (seperti 'segera transfer' dan 'segera'), tag <mark> kedua terselip ke dalam tag sebelumnya dan merusak struktur tag. Disarankan beralih ke tokenizing atau pelacakan indeks karakter (offset range) sebelum injeksi markup.
2. Konsistensi Navigasi Antarhalaman: Tautan 'Beranda' pada cek-pesan.html mengarah ke index.html (halaman pembuka), sedangkan di bagianutama.html mengarah ke dirinya sendiri. Sebaiknya seragamkan struktur navigasi agar alur jelajah pengguna lebih mulus.
3. Batasan Kata Kunci (Word Boundary): Pencocokan kata masih menggunakan includes() sederhana. Memakai regex batas kata (\b) akan membantu mencegah salah deteksi pada kata yang beririsan.

Untuk pengembangan selanjutnya, platform ini sangat potensial dipasangi Service Worker agar menjadi Progressive Web App (PWA) yang dapat diinstal di ponsel dan beroperasi luring tanpa kuota.

Karya yang sangat bersih, terarah, dan bermanfaat nyata. Sukses selalu untuk tim!
```

---

## 40. Tim: ALPHARIET (Alfarian Adisaputra dkk.) - Cek Penipuan
- **Folder Sumber**: `web-dev-MIT-week`
- **Ketua Tim**: Alfarian Adisaputra (ALPHARIET)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 99 | 34.65 |
| Kesesuaian dengan Studi Kasus | 25% | 99 | 24.75 |
| UI/UX | 20% | 98 | 19.60 |
| Kualitas Kode & Pemeliharaan | 10% | 98 | 9.80 |
| Dokumentasi | 10% | 92 | 9.20 |
| **Total Nilai Akhir** | **100%** | - | **98.00** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.785 karakter (aman di bawah batas 2.000 karakter).*

```text
Aplikasi Cek Penipuan menampilkan kematangan rekayasa perangkat lunak dan kepekaan produk yang luar biasa tinggi. Arsitektur sistem memadukan tiga jalur pemeriksaan utama—Cek Chat, Cek Link, dan Cek Video/Suara (Deepfake)—dengan standar industri yang sangat solid. Pendekatan etikanya patut diacungi jempol: sistem tidak memaksakan vonis mutlak melainkan menyajikan tingkat kewaspadaan objektif, menyensor data sensitif (PII) secara lokal sebelum dikirim ke API, serta mengutamakan keselamatan pengguna lewat modul tindakan darurat dan integrasi kanal resmi (Kominfo, IASC OJK, Patroli Siber Polri).

Keunggulan teknis yang menonjol:
1. Ketahanan Sistem & Fallback: Mekanisme cadangan aturan lokal deterministik memastikan aplikasi tetap berfungsi penuh tanpa error saat kuota API luar habis.
2. Validasi Multi-Lapis: Pemeriksaan link menggabungkan analisis leksikal URL, deteksi typosquatting merek lokal, protokol RDAP, Safe Browsing, dan VirusTotal secara paralel. Di sisi media, sistem memvalidasi magic bytes biner serta mengompresi gambar dan mengekstrak frame video langsung di peramban.
3. Kualitas Pengujian Tinggi: Didukung 74 file pengujian otomatis, termasuk property-based testing (PBT) dengan fast-check untuk memverifikasi invariansi keamanan.
4. Edge Rate Limiting: Proteksi API route dengan sliding-window rate limiter dan fail-open berjalan sangat rapi.

Saran penyempurnaan ke depan:
1. Kompatibilitas Node: Sesuaikan dependensi jsdom agar kompatibel penuh dengan Node 20 LTS di seluruh lingkungan test runner.
2. Caching Reputasi Domain: Sediakan cache lokal singkat untuk query domain berulang guna menghemat kuota dan mempercepat respons.

Karya yang sangat brilian, matang, dan berdampak nyata bagi keamanan digital masyarakat. Sukses selalu untuk tim ALPHARIET!
```

---

## 41. Tim: Apa Aja Lah (Ario Zulkaisi Nubli & Aisyah Azka Salsabila) - SADAR (Sistem Analisis Data & Antisipasi Risiko)
- **Folder Sumber**: `Sistem-Analisis-Data-Antisipasi-Risiko`
- **Ketua Tim**: Ario Zulkaisi Nubli | Universitas Indonesia
- **Tautan Deployment**: https://ristek.link/sadar
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 98 | 34.30 |
| Kesesuaian dengan Studi Kasus | 25% | 98 | 24.50 |
| UI/UX | 20% | 98 | 19.60 |
| Kualitas Kode & Pemeliharaan | 10% | 95 | 9.50 |
| Dokumentasi | 10% | 94 | 9.40 |
| **Total Nilai Akhir** | **100%** | - | **97.30** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.763 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform SADAR (Sistem Analisis Data & Antisipasi Risiko) menghadirkan karya rekayasa keamanan siber yang sangat komprehensif, matang, dan kaya fitur. Pendekatan tanpa login dan tanpa retensi data permanen mencerminkan komitmen tinggi terhadap privasi. Pemaduan modul analitik—mulai dari Analisis Chat & Screenshot Vision AI, Pemindai Tautan multi-mesin (Safe Browsing, Cloudflare DNS, URLhaus, dan AI), Cek E-Wallet/Rekening, Decision Lab, hingga minigame edukatif SADAR Run—dieksekusi secara profesional.

Keunggulan teknis yang menonjol:
1. Resiliensi Sistem & Mode Offline: Fallback heuristik lokal di setiap fitur memastikan platform tetap beroperasi optimal dan memberikan rekomendasi keselamatan tanpa hambatan, bahkan saat kuota API habis atau perangkat luring.
2. Desain Antarmuka & UX Responsif: Visual bertema siber dengan kartu tilt 3D dan animasi Framer Motion tersusun rapi. Ketersediaan tombol uji cepat (quick buttons) pada seluruh formulir memudahkan pengguna menguji skenario nyata seketika.
3. Edukasi Simulasi: Decision Lab dengan empat studi kasus (Kurir APK, Call Center, QRIS Quishing, Typosquatting) menyajikan panduan penanganan darurat (incident response) yang aplikatif.
4. Dokumentasi Rapi: Dokumen README dilengkapi diagram Mermaid alur sistem dan panduan konfigurasi yang jelas.

Saran penyempurnaan ke depan:
1. Pembaruan Patch Next.js: Perbarui rilis minor Next.js ke versi patch stabil terbaru guna mengatasi anjuran keamanan CLI bawaan.
2. Pengujian Otomatis (Automated Testing): Tambahkan suite unit test (seperti Vitest/Jest) untuk memverifikasi logika pemindai tautan dan normalisasi entitas secara mandiri.

Karya yang sangat visioner, solid, dan solutif bagi ekosistem digital Indonesia. Sukses selalu untuk tim Apa Aja Lah!
```

---

## 42. Tim: naylancy (Nayla Audyna) - KNOW YOUR SCAM: ANTI-GRAVITY CYBER DEFENSE
- **Folder Sumber**: `know-your-scam`
- **Ketua Tim**: Nayla Audyna
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 94 | 32.90 |
| Kesesuaian dengan Studi Kasus | 25% | 96 | 24.00 |
| UI/UX | 20% | 95 | 19.00 |
| Kualitas Kode & Pemeliharaan | 10% | 78 | 7.80 |
| Dokumentasi | 10% | 88 | 8.80 |
| **Total Nilai Akhir** | **100%** | - | **92.50** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.634 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Know Your Scam menyajikan konsep gamifikasi pertahanan siber yang sangat atraktif, hidup, dan berkarakter kuat. Pendekatan antarmuka Sci-Fi HUD lengkap dengan efek audio synthesizer interaktif, briefing taktis di tiap permainan, modul edukasi komprehensif, serta empat variasi game edukatif (Kasus Multi-POV, Finding Diff, Criminal Case, dan AI Analyzer) berhasil mengubah materi keamanan siber menjadi pengalaman yang sangat memikat. Guardrail kurasi visual pada Legit Checker yang menolak tangkapan layar buram sebelum dianalisis juga menjadi sentuhan teknis yang cerdas.

Namun, terdapat temuan teknis dan celah keamanan kritis yang perlu dibenahi:
1. Kebocoran Kredensial API di Kode Sumber: Pada CheckerController dan ScannerController, ditemukan token API Google Gemini aktif yang di-hardcode ke dalam kode menggunakan base64_decode(). Mengaburkan kunci dengan base64 sangat mudah didekode dan berisiko tinggi disalahgunakan. Simpan seluruh API key secara eksklusif di berkas .env dan lindungi melalui .gitignore.
2. Sandi Pengguna Bawaan Masih Berupa Plaintext: Pada database.json, kredensial akun bawaan tersimpan dalam teks polos tanpa enkripsi. Pastikan seluruh kata sandi di-hash menggunakan algoritma aman seperti bcrypt demi integritas akun.
3. Transparansi Konsensus Multi-AI: Fitur debat 3-AI sebenarnya memanggil satu endpoint Gemini yang sama melalui persona prompting. Ke depan, hubungkan API multi-vendor secara riil atau sampaikan secara transparan bahwa ini merupakan simulasi multi-sudut pandang.

Karya yang sangat imajinatif, kaya fitur, dan bernilai edukatif tinggi. Sukses selalu untuk tim naylancy!
```

---

## 43. Tim: Kalibata Project (Rayhan Muhammad Adha, Juan Agraprana Putra, Gellael) - JEDA: ragu? jeda dulu, cek dulu (Team 50)
- **Folder Sumber**: `JEDA team 50`
- **Ketua Tim**: Rayhan Muhammad Adha (Mr22XX)
- **Tautan Deployment**: https://jeda-kalibata.vercel.app/
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 99 | 34.65 |
| Kesesuaian dengan Studi Kasus | 25% | 99 | 24.75 |
| UI/UX | 20% | 98 | 19.60 |
| Kualitas Kode & Pemeliharaan | 10% | 99 | 9.90 |
| Dokumentasi | 10% | 94 | 9.40 |
| **Total Nilai Akhir** | **100%** | - | **98.30** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.764 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform JEDA (Kalibata Project) adalah karya rekayasa pertahanan siber yang sangat matang, elegan, dan berintegritas tinggi. Filosofi 'Ragu? Jeda dulu, cek dulu' menyasar akar psikologis The Trust Trap secara presisi. Eksekusi mesin deteksi menggunakan Rust yang dikompilasi ke WebAssembly (WASM) di sisi klien merupakan keunggulan arsitektural teladan: performa instan tanpa latensi server, beroperasi penuh secara luring (offline-first), dan menjamin privasi pengguna mutlak tanpa risiko kebocoran data.

Keunggulan teknis yang menonjol:
1. Akurasi Deteksi & Normalisasi Teks: Modul norm.rs dan link.rs terbukti tangguh saat diuji pada dataset SMS riil (docs/DATA-TESTING.md), mampu mengenali leetspeak, manipulasi tanda petik judi online (GACO'R, J'P), pemendek tautan, hingga typosquatting perbankan dengan nol false positive pada SMS resmi.
2. Integritas Akademis: Dokumen DASAR-PENYUSUNAN.md menunjukkan kejujuran ilmiah yang patut diapresiasi, memisahkan secara tegas antara landasan teoritis (Stajano & Wilson, Cialdini) dan interpretasi aturan heuristik.
3. Ergonomi UI/UX: Antarmuka bersih berbasis tipografi Bricolage Grotesque, fitur dark mode, dwibahasa (ID/EN) penuh, demo interaktif GSAP yang hemat daya via IntersectionObserver, serta dock navigasi mobile ramah safe-area.

Saran penyempurnaan ke depan:
1. Tautan Video Demo di README: Pertimbangkan menyematkan tautan video demo produk di README repositori agar juri dapat mengakses demonstrasi visual secara langsung.
2. Ekstensi Peramban Ringan: Kemas mesin WASM JEDA menjadi add-on browser agar deteksi otomatis dapat berjalan langsung saat pengguna membuka chat web.

Karya yang sangat brilian, beretika tinggi, dan menjadi tolok ukur solusi digital. Sukses selalu untuk tim Kalibata Project!
```

---

## 44. Tim: Red John (Rendy & Dzaky Rahman) - Red John: Cyber Threat Intelligence & Discord Sentinel
- **Folder Sumber**: `Red-John`
- **Ketua Tim**: Rendy (r3nddy)
- **Tautan Deployment**: Tersedia di Portal Penilaian Juri
- **Video Demo**: Tidak dicantumkan di README

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | 96 | 33.60 |
| Kesesuaian dengan Studi Kasus | 25% | 97 | 24.25 |
| UI/UX | 20% | 95 | 19.00 |
| Kualitas Kode & Pemeliharaan | 10% | 88 | 8.80 |
| Dokumentasi | 10% | 90 | 9.00 |
| **Total Nilai Akhir** | **100%** | - | **94.65** |

### Masukan untuk Tim (Siap Salin ke Form)
*Catatan: 1.731 karakter (aman di bawah batas 2.000 karakter).*

```text
Platform Red John menghadirkan arsitektur pertahanan siber yang impresif, ambisius, dan menyeluruh. Integrasi tiga pilar layanan—backend FastAPI dengan mesin hibrida aturan dan ML, antarmuka Next.js 16 bertema terminal siber, serta bot Discord Agent-RJ berbasis Go—membuktikan kapasitas rekayasa sistem yang matang. Radar berita dengan scraper Playwright otomatis, investigasi ancaman, hingga Golden Hour Wizard memberikan proteksi nyata yang melampaui web konvensional.

Keunggulan teknis yang menonjol:
1. Arsitektur Single Source of Truth & Keamanan: Alur data sangat disiplin, di mana hanya backend yang mengakses Supabase via service_role, sedangkan frontend dan bot Discord terisolasi lewat REST API berotentikasi. Penerapan RLS pada tabel profiles mengunci eskalasi hak akses admin secara ketat.
2. Bot Discord Fungsional (Agent-RJ): Bot Discord Go menyediakan perintah pemindaian cepat, outbox alert ancaman terverifikasi, serta fitur defanging URL otomatis (hxxps://) guna mencegah pengguna mengeklik tautan berbahaya.
3. Desain Antarmuka Futuristik: Estetika siber dengan canvas ASCII emblem, Scam Terminal responsif, dan audio prosedural menghadirkan pengalaman pengguna yang imersif.

Catatan evaluasi teknis dan saran perbaikan:
1. Isolasi Build Halaman Berita: Prerendering halaman /berita memicu kegagalan build lokal jika backend belum aktif. Bungkus fetch dengan penanganan kegagalan statis yang tidak memblokir build luring.
2. Penyempurnaan Linter React 19: Rapikan peringatan ESLint seputar pemanggilan setState di dalam useEffect dan penanganan akses ref saat proses render pada komponen ResidentSlider.tsx.

Karya yang sangat luar biasa, visioner, dan berbobot teknis tinggi. Sukses selalu untuk tim Red John!
```

---

## Template Penilaian Tim Berikutnya

```markdown
## [Nomor Urut]. Tim: [Nama Tim] ([Kode Tim]) - [Nama Proyek]
- **Folder Sumber**: `[nama_folder]`
- **Ketua Tim**: [Nama Ketua] | [Asal Kampus / Sekolah]
- **Tautan Deployment**: [URL atau Tersedia di Portal Penilaian Juri]
- **Video Demo**: [URL Video jika ada di README / Tidak dicantumkan di README]

### Rincian Nilai Form

| Kriteria Penilaian | Bobot | Nilai Input (0 - 100) | Skor Terbobot |
| :--- | :---: | :---: | :---: |
| Fungsionalitas | 35% | [Nilai] | [Nilai * 0.35] |
| Kesesuaian dengan Studi Kasus | 25% | [Nilai] | [Nilai * 0.25] |
| UI/UX | 20% | [Nilai] | [Nilai * 0.20] |
| Kualitas Kode & Pemeliharaan | 10% | [Nilai] | [Nilai * 0.10] |
| Dokumentasi | 10% | [Nilai] | [Nilai * 0.10] |
| **Total Nilai Akhir** | **100%** | - | **[Total Skor]** |

### Masukan untuk Tim (Siap Salin ke Form)
*(Panjang 1.200 - 1.800 Karakter / di bawah batas 2.000 karakter portal)*

[Apresiasi konsep, perbaikan bug kritis, dan saran peningkatan metode/arsitektur teknis]
```
