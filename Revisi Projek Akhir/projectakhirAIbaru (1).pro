DOMAINS
nama=symbol
kondisi = cond*
cond = string

FACTS
kelompok(kondisi)
false(cond)

PREDICATES

nondeterm mulai
nondeterm lihat(kondisi)

nondeterm daftartahapan

nondeterm persyaratan_awal
nondeterm persyaratan_awal2
nondeterm persyaratan_awal3
nondeterm persyaratan_awal4
nondeterm persyaratan_awal5
nondeterm persyaratan_awal6

nondeterm tes_psikotes
nondeterm tes_psikotes2
nondeterm tes_psikotes3
nondeterm tes_psikotes4
nondeterm tes_psikotes5

nondeterm tes_wawancara
nondeterm tes_wawancara2
nondeterm tes_wawancara3
nondeterm tes_wawancara4
nondeterm tes_wawancara5

nondeterm tidak_lanjut
nondeterm tidak_lanjut2

nondeterm selamat_selamat

nondeterm tombol(char)
nondeterm tombol1(char)
nondeterm tombol2(char)
nondeterm tombol3(char)
nondeterm tombol4(char)
nondeterm tombol5(char)
nondeterm tombol6(char)
nondeterm tombol7(char)
nondeterm tombol8(char)
nondeterm tombol9(char)
nondeterm tombol10(char)
nondeterm tombol11(char)
nondeterm tombol12(char)
nondeterm tombol13(char)
nondeterm tombol14(char)
nondeterm tombol15(char)
nondeterm tombol16(char)
nondeterm tombol17(char)
nondeterm tombol18(char)
nondeterm tombol_selamat(char)

nondeterm terimakasih

nondeterm hasil(char)

nondeterm input(char,char)
nondeterm input2(char,char)
nondeterm input3(char,char)

CLAUSES
input(Y,Y):-!.
input(_,_):-fail.
	  
	
	kelompok(["PROJEK AKHIR AI\nJUDUL : SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA\nKELOMPOK 5\n1. ","ANDRIAWAN NISWAR","1515015176\n","2. ","MUHAMMAD SEPTIYAN AMIN","1515015181\n","3. ","MAZLAN","1515015178\n"]).
mulai:-
	kelompok(Kelompok),
	lihat(Kelompok),
	nl,nl,

	write("======================================================================================"),nl,
	write(     "              SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA 2017                  "), nl,
	write("======================================================================================"),nl,
	write("Masukkan nama = "),
	readln(Calon),nl,
	write("______________________________________________________________________________________"),nl,
	
	write("Selamat datang,",Calon,",Semoga sukses"),nl,
	write("______________________________________________________________________________________"),nl,
	

	write("SIAP !!! 'Y'\n"),
	readchar(A), hasil(A).
	hasil(A):-input(A,'Y'), daftartahapan.
	hasil(A):-input(A,'y'), daftartahapan.
	hasil(_):-mulai.
	
lihat([H|T]):-
	not(false(H)),
	write(H),
	lihat(T).
	
	lihat([H|_]):-
	assertz(false(H)).
  	

daftartahapan:-
write("\n"),
write("\n"),
write("=============================================================================================="),nl,
write(     "              SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA 2017                           "), nl,
write("=============================================================================================="),nl,
write(     "               DAFTAR-DAFTAR TAHAPAN PENERIMAAN POLRI BARU\n                             "),nl,
write("=============================================================================================="),nl,
write("\n"),
write("1. PERSYARATAN AWAL.\n"),
write("2. TES PSIKOTES.\n"),
write("3. TES WAWANCARA.\n"),
write("\n"),
write("=============================================================================================="),nl,
write("NEXT? (Y/T)\n"),
write("=============================================================================================="),nl,
readchar(A), tombol(A).
tombol(A):-input(A,'Y'), persyaratan_awal.
tombol(A):-input(A,'y'), persyaratan_awal.
tombol(A):-input(A,'T'), tidak_lanjut.
tombol(A):-input(A,'t'), tidak_lanjut.
tombol(_):- daftartahapan.

persyaratan_awal:-
write("\n"),
write("\n"),
write("=============================================================================================="),nl,
write(    "                 SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA 2017               "), nl,
write("=============================================================================================="),nl,
write(                       " TAHAP 1 PERSYARATAN AWAL.                                           "),nl,
write("=============================================================================================="),nl,	
write("BERAPA UMUR ANDA?,(16-21) APAKAH MASUK KETOGERI?"),
write("\n"),
write("\n"),
write("A. YA.\n"),
write("B. TIDAK.\n"),
write("=============================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("=============================================================================================="),nl,
readchar(A), tombol1(A).

tombol1(A):-input(A,'A'),persyaratan_awal2.
tombol1(A):-input(A,'a'),persyaratan_awal2.
tombol1(A):-input(A,'B'),tidak_lanjut2.
tombol1(A):-input(A,'b'),tidak_lanjut2.
tombol1(_):-persyaratan_awal.

persyaratan_awal2:-
write("\n"),
write("\n"),
write("=============================================================================================="),nl,
write(     "                SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA 2017                "), nl,
write("=============================================================================================="),nl,
write("TAHAP 1 PERSYARATAN AWAL\n"),
write("=============================================================================================="),nl,
write("JENIS KELAMIN?\n"),
write("\n"),
write("\n"),
write("A. LAKI-LAKI\n"),
write("B. PEREMPUAN\n"),
write("=============================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("=============================================================================================="),nl,
readchar(A), tombol2(A).

tombol2(A):-input(A,'A'),persyaratan_awal5.
tombol2(A):-input(A,'a'),persyaratan_awal5.
tombol2(A):-input(A,'B'),persyaratan_awal6.
tombol2(A):-input(A,'b'),persyaratan_awal6.
tombol2(_):-persyaratan_awal.

input2(Z,Z):-!.
input2(_,_):-fail.

persyaratan_awal3:-
write("\n"),
write("\n"),
write("================================================================================================"),nl,
write(     "                SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA 2017                "), nl,
write("================================================================================================"),nl,
write("TAHAP 1 PERSYARATAN AWAL\n"),
write("================================================================================================"),nl,
write("LULUSAN SMA/SMK?\n"),
write("\n"),
write("\n"),
write("A. YA\n"),
write("B. TIDAK\n"),
write("================================================================================================"),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("================================================================================================"),nl,
readchar(A), tombol3(A).

tombol3(A):-input(A,'A'),persyaratan_awal4.
tombol3(A):-input(A,'a'),persyaratan_awal4.
tombol3(A):-input(A,'B'),tidak_lanjut2.
tombol3(A):-input(A,'b'),tidak_lanjut2.
tombol3(_):-persyaratan_awal.



persyaratan_awal4:-
write("\n"),
write("\n"),
write("================================================================================================"),nl,
write(      "               SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                 "), nl,
write("================================================================================================"),nl,
write("TAHAP 1 PERSYARATAN AWAL.\n"),
write("================================================================================================"),nl,
write("NILAI UN?\n"),
write("\n"),
write("\n"),
write("A. >60\n"),
write("B. <60\n"),
write("================================================================================================"),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("================================================================================================"),nl,
readchar(A), tombol4(A).

tombol4(A):-input(A,'A'),tes_psikotes.
tombol4(A):-input(A,'a'),tes_psikotes.
tombol4(A):-input(A,'B'),tidak_lanjut2.
tombol4(A):-input(A,'b'),tidak_lanjut2.
tombol4(_):-persyaratan_awal.


persyaratan_awal5:-
write("\n"),
write("\n"),
write("================================================================================================="),nl,
write(     "                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("================================================================================================="),nl,
write("TAHAP 1 PERSYARATAN AWAL.\n"),
write("================================================================================================="),nl,
write("Tinggi Badan >165?\n"),
write("\n"),
write("\n"),
write("A. YA\n"),
write("B. TIDAK\n"),
write("================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("================================================================================================="),nl,
readchar(A), tombol6(A).

persyaratan_awal6:-
write("\n"),
write("\n"),
write("================================================================================================="),nl,
write(       "               SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                 "), nl,
write("================================================================================================="),nl,
write("TAHAP 1 PERSYARATAN AWAL.\n"),
write("================================================================================================="),nl,
write("Tinggi Badan >160?\n"),
write("\n"),
write("\n"),
write("A. YA\n"),
write("B. TIDAK\n"),
write("================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("================================================================================================="),nl,
readchar(A), tombol6(A).

tombol6(A):-input(A,'A'),persyaratan_awal3.
tombol6(A):-input(A,'a'),persyaratan_awal3.
tombol6(A):-input(A,'B'),tidak_lanjut2.
tombol6(A):-input(A,'b'),tidak_lanjut2.
tombol6(_):-persyaratan_awal.



tes_psikotes:-
write("\n"),
write("\n"),
write("=================================================================================================="),nl,
write(      "                  SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017              "), nl,
write("=================================================================================================="),nl,
write("TAHAP 2 TES PSIKOTES.\n"),
write("=================================================================================================="),nl,
write("TES PSIKOTES.\n"),
write("=================================================================================================="),nl,
write("SOAL 1.\n"),
write("(1.) SINONIM DARI MERDEKA=....\n"),
write("\n"),
write("\n"),
write("A. PESTA.\n"),
write("B. LUAS.\n"),
write("C. BEBAS.\n"),
write("D. HIRUK.\n"),
write("==================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("==================================================================================================="),nl,
readchar(A), tombol5(A).

tombol5(A):-input(A,'A'),tidak_lanjut2.
tombol5(A):-input(A,'a'),tidak_lanjut2.
tombol5(A):-input(A,'B'),tidak_lanjut2.
tombol5(A):-input(A,'b'),tidak_lanjut2.
tombol5(A):-input(A,'C'),tes_psikotes2.
tombol5(A):-input(A,'c'),tes_psikotes2.
tombol5(A):-input(A,'D'),tidak_lanjut2.
tombol5(A):-input(A,'d'),tidak_lanjut2.
tombol5(_):-tes_psikotes.



tes_psikotes2:-
write("\n"),
write("\n"),
write("===================================================================================================="),nl,
write(          "                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("===================================================================================================="),nl,
write("TAHAP 2 TES PSIKOTES.\n"),
write("===================================================================================================="),nl,
write("TES PSIKOTES.\n"),
write("===================================================================================================="),nl,
write("SOAL 2.\n"),
write("(2.) ANTONIM TERBENAM >< ....\n"),
write("\n"),
write("\n"),
write("A. PASTI.\n"),
write("B. TENGGELAM.\n"),
write("C. TERKATUNG.\n"),
write("D. SIAL.\n"),
write("===================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("===================================================================================================="),nl,
readchar(A),tombol7(A).

tombol7(A):-input(A,'A'),tidak_lanjut2.
tombol7(A):-input(A,'a'),tidak_lanjut2.
tombol7(A):-input(A,'B'),tidak_lanjut2.
tombol7(A):-input(A,'b'),tidak_lanjut2.
tombol7(A):-input(A,'C'),tes_psikotes3.
tombol7(A):-input(A,'c'),tes_psikotes3.
tombol7(A):-input(A,'D'),tidak_lanjut2.
tombol7(A):-input(A,'d'),tidak_lanjut2.
tombol7(_):-tes_psikotes2.

tes_psikotes3:-
write("\n"),
write("\n"),
write("===================================================================================================="),nl,
write(       "                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("===================================================================================================="),nl,
write("TAHAP 2 TES PSIKOTES.\n"),
write("===================================================================================================="),nl,
write("TES PSIKOTES.\n"),
write("===================================================================================================="),nl,
write("SOAL 3.\n"),
write("(3.) (ANALOGI) Example => EMAS : TAMBANG ||.... : ....\n"),
write("\n"),
write("\n"),
write("A. GARAM : LOGAM.\n"),
write("B. PERMATA : PERHIASAN.\n"),
write("C. PRAMUKA : SERAGAM.\n"),
write("D. KAYU : POHON.\n"),
write("===================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("===================================================================================================="),nl,
readchar(A),tombol8(A).

tombol8(A):-input(A,'A'),tidak_lanjut2.
tombol8(A):-input(A,'a'),tidak_lanjut2.
tombol8(A):-input(A,'B'),tidak_lanjut2.
tombol8(A):-input(A,'b'),tidak_lanjut2.
tombol8(A):-input(A,'C'),tidak_lanjut2.
tombol8(A):-input(A,'c'),tidak_lanjut2.
tombol8(A):-input(A,'D'),tes_psikotes4.
tombol8(A):-input(A,'d'),tes_psikotes4.
tombol8(_):-tes_psikotes3.

tes_psikotes4:-
write("\n"),
write("\n"),
write("===================================================================================================="),nl,
write(         "                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("===================================================================================================="),nl,
write("TAHAP 2 TES PSIKOTES.\n"),
write("===================================================================================================="),nl,
write("TES PSIKOTES.\n"),
write("===================================================================================================="),nl,
write("SOAL 4.\n"),
write("(4.)(PENGELOMPOKKAN KATA) Anda akan mencari kata yang berbeda dari kelompok kata di bawah ini :.\n"),
write("\n"),
write("\n"),
write("A. POLISI\n"),
write("B. JURNALIS.\n"),
write("C. WARTAWAN.\n"),
write("D. EDITOR.\n"),
write("===================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("===================================================================================================="),nl,
readchar(A),tombol9(A).

tombol9(A):-input(A,'A'),tes_psikotes5.
tombol9(A):-input(A,'a'),tes_psikotes5.
tombol9(A):-input(A,'B'),tidak_lanjut2.
tombol9(A):-input(A,'b'),tidak_lanjut2.
tombol9(A):-input(A,'C'),tidak_lanjut2.
tombol9(A):-input(A,'c'),tidak_lanjut2.
tombol9(A):-input(A,'D'),tidak_lanjut2.
tombol9(A):-input(A,'d'),tidak_lanjut2.
tombol9(_):-tes_psikotes4.

tes_psikotes5:-
write("\n"),
write("\n"),
write("==================================================================================================="),nl,
write(       "                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("==================================================================================================="),nl,
write("TAHAP 2 TES PSIKOTES.\n"),
write("==================================================================================================="),nl,
write("TES PSIKOTES.\n"),
write("==================================================================================================="),nl,
write("SOAL 5.\n"),
write("(5.) (DERET ANGKA) 4,3,8,6,16,12 .....  "),nl,
write("\n"),
write("\n"),
write(" A. 47.\n"),
write(" B. 32.\n"),
write(" C. 48.\n"),
write(" D. 49.\n"),
write("==================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("==================================================================================================="),nl,
readchar(A),tombol10(A).

tombol10(A):-input(A,'A'),tidak_lanjut2.
tombol10(A):-input(A,'a'),tidak_lanjut2.
tombol10(A):-input(A,'B'),tes_wawancara.
tombol10(A):-input(A,'b'),tes_wawancara.
tombol10(A):-input(A,'C'),tidak_lanjut2.
tombol10(A):-input(A,'c'),tidak_lanjut2.
tombol10(A):-input(A,'D'),tidak_lanjut2.
tombol10(A):-input(A,'d'),tidak_lanjut2.
tombol10(_):-tes_psikotes5.

tes_wawancara:-
write("\n"),
write("\n"),
write("==================================================================================================="),nl,
write(         "                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("==================================================================================================="),nl,
write("TAHAP 3 TES WAWANCARA\n"),
write("==================================================================================================="),nl,
write("TES WAWANCARA\n"),
write("==================================================================================================="),nl,
write("WAWANCARA 1.\n"),
write("(1.) APAKAH ANDA SIAP DI TUGASKAN DI SELURUH WILAYAH INDONESIA?  "),nl,
write("\n"),
write("\n"),
write(" A. YA.\n"),
write(" B. TIDAK.\n"),
write("==================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("==================================================================================================="),nl,
readchar(A),tombol11(A).

tombol11(A):-input(A,'A'),tes_wawancara2.
tombol11(A):-input(A,'a'),tes_wawancara2.
tombol11(A):-input(A,'B'),tidak_lanjut2.
tombol11(A):-input(A,'b'),tidak_lanjut2.
tombol11(_):-tes_wawancara.

tes_wawancara2:-
write("\n"),
write("\n"),
write("===================================================================================================="),nl,
write(         "                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("===================================================================================================="),nl,
write("TAHAP 3 TES WAWANCARA\n"),
write("===================================================================================================="),nl,
write("TES WAWANCARA.\n"),
write("===================================================================================================="),nl,
write("WAWANCARA 2.\n"),
write("(2.) APAKAH MENJADI POLISI CITA-CITA ANDA?  "),nl,
write("\n"),
write("\n"),
write(" A. YA.\n"),
write(" B. TIDAK.\n"),
write("===================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("===================================================================================================="),nl,
readchar(A),tombol12(A).

tombol12(A):-input(A,'A'),tes_wawancara3.
tombol12(A):-input(A,'a'),tes_wawancara3.
tombol12(A):-input(A,'B'),tidak_lanjut2.
tombol12(A):-input(A,'b'),tidak_lanjut2.
tombol12(_):-tes_wawancara2.

tes_wawancara3:-
write("\n"),
write("\n"),
write("===================================================================================================="),nl,
write(           "                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("===================================================================================================="),nl,
write("TAHAP 3 TES WAWANCARA\n"),
write("===================================================================================================="),nl,
write("TES WAWANCARA.\n"),
write("===================================================================================================="),nl,
write("WAWANCARA 3.\n"),
write("(3.) JIKA DISURUH MEMILIH MENJALANKAN TUGAS NEGARA ATAU MENGHADIRI ACARA MANA YANG ANDA UTAMAKAN? \n"),nl,
write("\n"),
write("\n"),
write(" A. TUGAS NEGARA.\n"),
write(" B. ACARA KELUARGA.\n"),
write("====================================================================================================="),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("====================================================================================================="),nl,
readchar(A),tombol13(A).

tombol13(A):-input(A,'A'),tes_wawancara4.
tombol13(A):-input(A,'a'),tes_wawancara4.
tombol13(A):-input(A,'B'),tes_wawancara4.
tombol13(A):-input(A,'b'),tes_wawancara4.
tombol13(_):-tes_wawancara3.

tes_wawancara4:-
write("\n"),
write("\n"),
write("====================================================================================================="),nl,
write("                       SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("====================================================================================================="),nl,
write("TAHAP 3 TES WAWANCARA\n"),
write("====================================================================================================="),nl,
write("TES WAWANCARA.\n"),
write("====================================================================================================="),nl,
write("WAWANCARA 4.\n"),
write("(4.) PERNAKAH ANDA TERLIBAT LANGSUNG DALAM TINDAKAN KEAMANAN MASYARAKAT?"),nl,
write("\n"),
write("\n"),
write(" A.PERNAH.\n"),
write(" B.TIDAK PERNAH.\n"),
write("======================================================================================================"),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("======================================================================================================"),nl,
readchar(A),tombol14(A).

tombol14(A):-input(A,'A'),tes_wawancara5.
tombol14(A):-input(A,'a'),tes_wawancara5.
tombol14(A):-input(A,'B'),tidak_lanjut2.
tombol14(A):-input(A,'b'),tidak_lanjut2.
tombol14(_):-tes_wawancara4.

tes_wawancara5:-
write("\n"),
write("\n"),
write("======================================================================================================"),nl,
write("                SISTEM PROGRAM TES PENERIMAAN BINTARA POLRI 2017                "), nl,
write("======================================================================================================"),nl,
write("TAHAP 3 TES WAWANCARA\n"),
write("======================================================================================================"),nl,
write("TES WAWANCARA.\n"),
write("======================================================================================================"),nl,
write("WAWANCARA 5.\n"),
write("(5.) APA MOTIVASI ANDA MENJADI POLISI?"),nl,
write("\n"),
write("\n"),
write(" A.MENGABDI KEPADA NEGARA.\n"),
write(" B.MENGABDI KEPADA SAUDARA.\n"),
write("======================================================================================================"),nl,
write("MASUKKAN PILIHAN ANDA:\n"),
write("======================================================================================================"),nl,
readchar(A),tombol15(A).

tombol15(A):-input(A,'A'),selamat_selamat.
tombol15(A):-input(A,'a'),selamat_selamat.
tombol15(A):-input(A,'B'),tidak_lanjut2.
tombol15(A):-input(A,'b'),tidak_lanjut2.
tombol15(_):-tes_wawancara5.

selamat_selamat:-
write("\n"),
write("\n"),
write("======================================================================================================"),nl,
write("               SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA 2017                 "), nl,
write("======================================================================================================"),nl,
write("======SELAMAT ANDA====================================================================================\n"),
write(" ===================DITERIMA=========================================================================="),nl,
write("==============================DI======================================================================\n"),nl,
write("==================================POLRI===============================================================\n"),
write("=========================================BINTARA 2017=================================================\n"),
write("======================================================================================================"),nl,
write("TEKAN TOMBOL 'Y' UNTUK KE MENU UTAMA DAN KELUAR (Y)\n"),
write("======================================================================================================"),nl,
readchar(A),tombol_selamat(A).

tombol_selamat(A):-input2(A,'Y'),terimakasih.
tombol_selamat(A):-input2(A,'y'),terimakasih.
tombol_selamat(_):-tidak_lanjut2.


tidak_lanjut:-
write("\n"),
write("\n"),
write("======================================================================================================"),nl,
write("                           SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA 2017                "), nl,
write("======================================================================================================"),nl,
write("TERIMA KASIH SUDAH MENCOBA (Y)\n"),
write("======================================================================================================"),nl,
readchar(A),tombol17(A).

tombol17(A):-input2(A,'Y'),terimakasih.
tombol17(A):-input2(A,'y'),terimakasih.
tombol17(_):-tidak_lanjut.

tidak_lanjut2:-
write("\n"),
write("\n"),
write("====================================================================================================="),nl,
write("                        SISTEM PROGRAM TES PENERIMAAN POLRI BINTARA 2017                 "), nl,
write("====================================================================================================="),nl,
write("\n"),
write("MAAF ANDA TIDAK BISA LANJUT TAHAP SELANJUTNYA,KARENA ANDA GAGAL DI TAHAP INI"),nl,
write("====================================================================================================="),nl,
write("TERIMA KASIH SUDAH MENCOBA (Y)\n"),
write("====================================================================================================="),nl,
readchar(A),tombol18(A).

tombol18(A):-input2(A,'Y'),terimakasih.
tombol18(A):-input2(A,'y'),terimakasih.
tombol18(_):-tidak_lanjut2.







input3(Q,Q):-!.
input3(_,_):-fail.



terimakasih:-
write("\n"),
write("\n"),
write("================================================================================"),nl,
write("================================================================================"),nl,
write("================================= MENU UTAMA 'U' ==============================="),nl,
write("================================================================================"),nl,
write("=================================== KELUAR 'Q' ================================="),nl,
write("================================================================================"),nl,
write("================================================================================"),nl,
readchar(A),tombol16(A).
tombol16(A):-input3(A,'U'),daftartahapan.
tombol16(A):-input3(A,'u'),daftartahapan.
tombol16(A):-input3(A,'Q'),exit.
tombol16(A):-input3(A,'q'),exit.
tombol16(_):-terimakasih.

GOAL
mulai.