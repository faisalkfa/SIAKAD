<!DOCTYPE html>
<html>
<head>
    <style>
        table {
            font-size: 12px;
            width: 100%;
            border-collapse: collapse; /* Ensures that the borders are collapsed into a single border */
        }
        .no-border td { 
            border: none; /* Removes borders for the first table */
        }
        .bordered th, .bordered td {
            border: 2px solid black; /* Adds a 2px solid black border around each cell */
            padding: 8px; /* Adds padding for better readability */
            text-align: center; /* Centers text for better alignment */
        }
    </style>
</head>
<body>
    <!-- Content to be downloaded as PDF -->
    <div id="content">
        <img src="{{ asset('kop-surat.png') }}" style="width: 100%; margin-bottom: 10px;">
        <table class="no-border" style="width: 55%; float: left; margin-left: 20px;">
            <tr>
                <td style="width: 38%; text-align: left; vertical-align: top;">Nama Sekolah</td>
                <td style="width: 1%; text-align: left; vertical-align: top;">:</td>
                <td style="padding-left: 5px;">SMP Negeri 35 Bandar Lampung</td>
            </tr>
            <tr>
                <td style="width: 38%; text-align: left; vertical-align: top;">Alamat</td>
                <td style="width: 1%; text-align: left; vertical-align: top;">:</td>
                <td style="padding-left: 5px;">Jl. Drs. Warsito No.48, Kecamatan Teluk Betung Utara, Kota Bandar Lampung, Lampung</td>
            </tr>
            <tr>
                <td style="width: 38%; text-align: left;">Nama Peserta Didik</td>
                <td>:</td>
                <td style="padding-left: 5px;">{{$head->nama}}</td>
            </tr>
            <tr>
                <td style="width: 38%; text-align: left;">Nomor Induk/NISN</td>
                <td>:</td>
                <td style="padding-left: 5px;">{{$head->nisn}}</td>
            </tr>
        </table>
        <table class="no-border" style="width: 35%; float: right;  margin-right: 20px;">
            <tr>
                <td style="width: 30%;"></td>
                <td style="width: 38%; text-align: left;">Kelas</td>
                <td style="width: 1%;">:</td>
                <td style="padding-left: 5px;">{{$head->kode_kelas}}</td>
            </tr>
            <tr>
                <td style="width: 30%;"></td>
                <td style="width: 38%; text-align: left;">Semester</td>
                <td>:</td>
                <td style="padding-left: 5px;">{{$head->semester}}</td>
            </tr>
            <tr>
                <td style="width: 30%;"></td>
                <td style="width: 38%; text-align: left;">Tahun Pelajaran</td>
                <td>:</td>
                <td style="padding-left: 5px;">{{date('Y')}}</td>
            </tr>
        </table>
        <br><br><br><br><br><br>
        <div style="margin-left: 20px; margin-right: 20px;">
            <table class="bordered">
                <thead>
                    <tr>
                        <th rowspan="2" style="width: 3%;">No</th>
                        <th rowspan="2" style="width: 22%;">Mata Pelajaran</th>
                        <th rowspan="2" style="width: 5%;">KKM</th>
                        <th colspan="3" style="width: 70%;">Pengetahuan</th>
                    </tr>
                    <tr>
                        <th>Nilai</th>
                        <th>Predikat</th>
                        <th>Deskripsi</th>
                    </tr>
                </thead>
                <tbody>
                    @php $no = 1; @endphp
                    @foreach($detail as $d)
                        <tr>
                            <td>{{$no}}</td>
                            <td>{{$d->mata_pelajaran}}</td>
                            <td>{{$d->nilai_kkm}}</td>
                            <td>{{$d->nilai_akhir}}</td>
                            <td>{{$d->predikat}}</td>
                            <td>{{$d->keterangan}}</td>
                        </tr>
                        @php $no++; @endphp
                    @endforeach
                </tbody>
            </table>
            <br>
            <h3>Ketidakhadiran</h3>
            <table class="bordered" style="width: 35%; margin-top: -10px;">
                <tr>
                    <td style="width: 30%; text-align: left;">Sakit</td>
                    <td style="width: 1%;">:</td>
                    <td style="padding-left: 5px; width: 5%;">{{$absensi->total_sakit}}</td>
                </tr>
                <tr>
                    <td style="width: 30%; text-align: left;">Izin</td>
                    <td>:</td>
                    <td style="padding-left: 5px; width: 5%;">{{$absensi->total_izin}}</td>
                </tr>
                <tr>
                    <td style="width: 30%; text-align: left;">Tanpa Keterangan</td>
                    <td>:</td>
                    <td style="padding-left: 5px; width: 5%;">{{$absensi->total_alpa}}</td>
                </tr>
            </table>
            <br><br>
            <p style="text-align: right;">Bandar Lampung, {{ \Carbon\Carbon::parse(date('Y-m-d'))->locale('id')->isoFormat('D MMMM YYYY') }}</p>
            <p style="text-align: right; padding-right: 5px;">Wali Kelas, {{$head->guru}}</p>
            <br><br><br>
            <p style="text-align: right; padding-right: 5px;">NIP. {{$head->nip}}</p>
        </div>
            
    </div>
    <button onclick="printPDF()" style="margin-bottom: 20px;">Print / Save as PDF</button>
     <!-- JavaScript to handle print -->
    <script>
         function printPDF() {
            // Get the content of the div
            var content = document.getElementById('content').innerHTML;
            
            // Open a new window
            var printWindow = window.open('', '', 'height=700,width=900');
            
            // Write the content to the new window
            printWindow.document.write('<html><head><title>Print</title>');
            printWindow.document.write('<style>table {font-size: 12px; width: 100%; border-collapse: collapse;} .no-border td {border: none;} .bordered th, .bordered td {border: 2px solid black; padding: 8px; text-align: center;}</style></head><body>');
            printWindow.document.write(content);
            printWindow.document.write('</body></html>');
            
            // Close the document to render the content
            printWindow.document.close();

            // Ensure the content is loaded before printing
            printWindow.onload = function () {
            setTimeout(() => {
                printWindow.focus();
                printWindow.print();
                printWindow.close();
            }, 500); // Adjust delay if needed
          };
        }
    </script>
</body>
</html>
