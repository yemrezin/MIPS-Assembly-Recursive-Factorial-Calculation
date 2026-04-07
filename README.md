  MIPS Recursive Factorial & Array Ops
Bu proje, Fırat Üniversitesi Bilgisayar Mühendisliği bünyesindeki Bilgisayar Organizasyonu dersi için hazırlanmıştır.

  Ne Yapar?
Recursive Factorial: Stack (yığın) yönetimi kullanarak özyinelemeli faktöriyel hesaplar.

Array Access: Bellekteki 1000 ve 2000 adreslerinden başlayan dizilere lw (Load Word) ile erişir.

Stack Management: Fonksiyon çağrılarında $ra ve $s register'larını güvenli şekilde yedekler.

Dynamic I/O: Kullanıcıdan x adet sayı girişi alarak işlem yapar.

  Teknik Detaylar
Adresleme: li ve lw kombinasyonu ile pointer mantığında bellek erişimi.

Özyineleme: jal ve jr komutlarıyla fonksiyon döngüsü.

Bellek Dengesi: İşlem bitiminde stack temizliği (addi $sp, $sp, 8).

  Nasıl Çalıştırılır?
MARS veya QtSpim simülatörünü açın.

.asm dosyasını yükleyin.

F3 ile derleyin (Assemble) ve F5 ile çalıştırın.

  Geliştirici
Yunus Emre Özen  Fırat Üniversitesi - Bilgisayar Mühendisliği
