# Skrip untuk meng-clone ulang seluruh repositori peserta lomba MIT-WEEK 2026 di Laptop/perangkat lain

$repos = @(
    @{ Folder = "anti-trap-order"; Url = "https://github.com/fk0u/anti-trap-order.git" },
    @{ Folder = "aswaja_cybershield"; Url = "https://github.com/makecoding2110-beep/aswaja_cybershield.git" },
    @{ Folder = "Basicgenis-MIT-UNMUL"; Url = "https://github.com/arya-vrxx/Basicgenis-MIT-UNMUL.git" },
    @{ Folder = "cekat-website"; Url = "https://github.com/ambakes/cekat-website.git" },
    @{ Folder = "Cekara"; Url = "https://github.com/Fauzaro01/Cekara.git" },
    @{ Folder = "Cekin"; Url = "https://github.com/ahmadirfanmarufm/Cekin.git" },
    @{ Folder = "Cekkan"; Url = "https://github.com/MaharajaGeral/Cekkan.git" },
    @{ Folder = "clarity"; Url = "https://github.com/Ariffansyah/clarity.git" },
    @{ Folder = "davemoderator"; Url = "https://github.com/mrgart64/davemoderator.git" },
    @{ Folder = "FRAUDD-ANT"; Url = "https://github.com/leonardoelian2008-web/FRAUDD-ANT.git" },
    @{ Folder = "Guardian"; Url = "https://github.com/NosutoraDa/Guardian.git" },
    @{ Folder = "guardian-digital"; Url = "https://github.com/YanuarFaturrahman/guardian-digital.git" },
    @{ Folder = "guardiola"; Url = "https://github.com/secondaryfarand/guardiola.git" },
    @{ Folder = "ITIHIX"; Url = "https://github.com/ZaidAlHibb/ITIHIX.git" },
    @{ Folder = "jaga"; Url = "https://github.com/joanpurbaa/jaga.git" },
    @{ Folder = "JagaRuang"; Url = "https://github.com/syifamojocanggih-hash/JagaRuang.git" },
    @{ Folder = "JeBe-Jebakan_Betmen"; Url = "https://github.com/anugrahdwantara-Sage/JeBe-Jebakan_Betmen.git" },
    @{ Folder = "Jeda team 24"; Url = "https://github.com/rizkydavid/Jeda.git" },
    @{ Folder = "JEDA team 50"; Url = "https://github.com/Mr22XX/JEDA.git" },
    @{ Folder = "know-your-scam"; Url = "https://github.com/naylancy/know-your-scam.git" },
    @{ Folder = "Lumina"; Url = "https://github.com/vaskoyudha/Lumina.git" },
    @{ Folder = "MIT-WEBDEVELOPMENT-IFORB"; Url = "https://github.com/Legansdeveloper/MIT-WEBDEVELOPMENT-IFORB.git" },
    @{ Folder = "MIT-week"; Url = "https://github.com/fujimaruC/MIT-week.git" },
    @{ Folder = "MIT_WEEK2026"; Url = "https://github.com/jona-2212/MIT_WEEK2026.git" },
    @{ Folder = "mit-week-guardian-lab"; Url = "https://github.com/DeryWahyu/mit-week-guardian-lab.git" },
    @{ Folder = "pandu"; Url = "https://github.com/riiardian/pandu.git" },
    @{ Folder = "Red-John"; Url = "https://github.com/r3nddy/Red-John.git" },
    @{ Folder = "saring-app"; Url = "https://github.com/hissyam90/saring-app.git" },
    @{ Folder = "siagadigital"; Url = "https://github.com/NASI1985/siagadigital.git" },
    @{ Folder = "Scamora"; Url = "https://github.com/Kalzz76/Scamora.git" },
    @{ Folder = "Sistem-Analisis-Data-Antisipasi-Risiko"; Url = "https://github.com/Rio3zN9G/Sistem-Analisis-Data-Antisipasi-Risiko.git" },
    @{ Folder = "Spot-the-Scam-Cek-Pesan-Penipuan"; Url = "https://github.com/Lodraalbar/Spot-the-Scam-Cek-Pesan-Penipuan.git" },
    @{ Folder = "The-Trust-Trap"; Url = "https://github.com/Nadhif56/The-Trust-Trap.git" },
    @{ Folder = "Trasco---MIT-WEEK-2026"; Url = "https://github.com/ajrth21/Trasco---MIT-WEEK-2026.git" },
    @{ Folder = "TRASP"; Url = "https://github.com/raya-raihana/TRASP.git" },
    @{ Folder = "TrustGuard-App"; Url = "https://github.com/Robertus567/TrustGuard-App.git" },
    @{ Folder = "TrustTrapGuardian"; Url = "https://github.com/Micho-Anta/TrustTrapGuardian.git" },
    @{ Folder = "trusttrail"; Url = "https://github.com/SlushyMint/trusttrail.git" },
    @{ Folder = "TUNTUN_KARHUTLA"; Url = "https://github.com/redoomp4/TUNTUN_KARHUTLA.git" },
    @{ Folder = "VeriFy-"; Url = "https://github.com/ArmBagus/VeriFy-.git" },
    @{ Folder = "wardly-app"; Url = "https://github.com/Ridz010/wardly-app.git" },
    @{ Folder = "web-dev-MIT-week"; Url = "https://github.com/ALPHARIET/web-dev-MIT-week.git" },
    @{ Folder = "web-development"; Url = "https://github.com/th4nch4/web-development.git" }
)

Write-Host "Memulai proses cloning repositori peserta..." -ForegroundColor Cyan

foreach ($item in $repos) {
    if (Test-Path $item.Folder) {
        Write-Host "[SKIP] Folder $($item.Folder) sudah ada." -ForegroundColor Yellow
    } else {
        Write-Host "[CLONE] Mengunduh $($item.Folder) dari $($item.Url)..." -ForegroundColor Green
        git clone $item.Url $item.Folder
    }
}

# Khusus ThreatLens (organisasi MITWEEK-inponamatim)
if (-not (Test-Path "MITWEEK-inponamatim")) {
    Write-Host "[CLONE] Mengunduh organisasi MITWEEK-inponamatim..." -ForegroundColor Green
    New-Item -ItemType Directory -Path "MITWEEK-inponamatim" | Out-Null
    git clone https://github.com/MITWEEK-inponamatim/frontend.git MITWEEK-inponamatim/frontend
    git clone https://github.com/MITWEEK-inponamatim/backend.git MITWEEK-inponamatim/backend
    git clone https://github.com/MITWEEK-inponamatim/infra.git MITWEEK-inponamatim/infra
    git clone https://github.com/MITWEEK-inponamatim/analysis-service.git MITWEEK-inponamatim/analysis-service
    git clone https://github.com/MITWEEK-inponamatim/Dokumentasi.git MITWEEK-inponamatim/Dokumentasi
}

Write-Host "Selesai! Seluruh repositori peserta siap digunakan." -ForegroundColor Cyan

