<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Pembayaran</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Transaksi</a></li>
                        <li class="breadcrumb-item active">Pembayaran</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <h5>Data Pembayaran</h5>
                </div>
                <div class="card-body">
                    <button class="btn bg-dark mb-2" data-toggle="modal" data-target="#modalRecycleBin"><i class="fas fa-recycle"></i> Recycle Bin</button>

                    <table id="example1" class="table table-hover table-md">
                        <thead class="bg-dark">
                            <th>ID</th>
                            <th>Siswa</th>
                            <th>Metode Pembayaran</th>
                            <th>Bukti</th>
                            <th>Tanggal Bayar</th>
                            <th>Nominal Pembayaran</th>
                            <th>Status</th>
                            <th>Aksi</th>
                        </thead>
                        <?php
                        $sql = "SELECT bayar.*,siswa.nis,siswa.nama,siswa.kelas,bayar_metode.metode FROM bayar,siswa,bayar_metode WHERE 
                        bayar.dihapus_pada IS NULL AND bayar.id_siswa=siswa.id_siswa AND bayar.id_bayar_metode=bayar_metode.id_bayar_metode";
                        $query = mysqli_query($koneksi, $sql);
                        while ($kolom = mysqli_fetch_array($query)) {
                        ?>

                            <tr>
                                <td><?= $kolom['id_bayar']; ?></td>
                                <td><?= $kolom['nis']; ?>-<?= $kolom['nama']; ?>(<?= $kolom['kelas']; ?>)</td>
                                <td><?= $kolom['metode']; ?></td>
                                <td><img src="file/buktibayar/<?= $kolom['bukti_bayar']; ?>" alt="<?= $kolom['bukti_bayar']; ?>" width="100"></td>
                                <td><?= $kolom['tanggal_bayar']; ?></td>
                                <td align="right"><?= number_format($kolom['nominal_bayar']); ?></td>
                                <td>
                                    <?php
                                    if ($kolom['status_verifikasi'] == ('Belum Verifikasi')) {
                                        $class = "badge badge-sm badge-danger";
                                    } else {
                                        $class = "badge badge-sm badge-success";
                                    }
                                    ?>
                                    <span class="<?= $class; ?>">
                                        <?= $kolom['status_verifikasi']; ?>
                                    </span>
                                </td>

                                <td>
                                    <!-- info alokasi -->
                                    <a href="index.php?p=bayar-alokasi&id_bayar=<?= $kolom['id_bayar']; ?>" title="Informasi Alokasi Bayar"><i class="fas fa-search"></i></a>&nbsp;
                                    <!-- Tombol Konfirmasi -->
                                    <?php if ($kolom['status_verifikasi'] == 'Belum Verifikasi') { ?>
                                        <a onclick="return confirm('Yakin akan mengkonfirmasi pembayaran ini?')" href="index.php?p=bayar-konfirmasi&id_bayar=<?= $kolom['id_bayar']; ?>" title="Konfirmasi Pembayaran"><i class="fas fa-check"></i></a>
                                    <?php } ?>
                                    &nbsp;
                                    <!-- Tombol Hapus -->
                                    <a onclick="return confirm('Yakin mau hapus data wir?')" href="aksi/bayar.php?aksi=hapus&id_bayar=<?= $kolom['id_bayar']; ?>" title="Hapus Pembayaran"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <!-- Modal Ubah tagihan -->
                            <div class="modal fade" id="modalUbah<?= $kolom['id_tagihan']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Ubah tagihan</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="aksi/tagihan.php" method="post">
                                                <input type="hidden" name="aksi" value="ubah">
                                                <input type="hidden" name="id_tagihan" value="<?= $kolom['id_tagihan']; ?>">

                                                <label for="id_periode">Periode</label>
                                                <select name="id_periode" class="form-control" required>
                                                    <option value="">-- Pilih Periode --</option>
                                                    <?php
                                                    $sql_periode = "SELECT * FROM periode WHERE id_periode IS NOT NULL";
                                                    $query_periode = mysqli_query($koneksi, $sql_periode);
                                                    while ($periode = mysqli_fetch_array($query_periode)) {
                                                        if ($kolom['id_periode'] == $periode['id_periode']) {
                                                            echo "<option value='$periode[id_periode]' selected>$periode[periode]</option>";
                                                        } else {
                                                            echo "<option value='$periode[id_periode]'>$periode[periode]</option>";
                                                        }
                                                    }
                                                    ?>
                                                </select>
                                                <br>

                                                <label for="tingkat">Tingkat</label>
                                                <input type="number" name="tingkat" value="<?= $kolom['tingkat']; ?>" class="form-control" required>
                                                <br>
                                                <label for="jurusan">Jurusan</label>
                                                <input type="text" name="jurusan" value="<?= $kolom['jurusan']; ?>" class="form-control" required>
                                                <br>
                                                <label for="deskripsi_tagihan">Deskripsi tagihan</label>
                                                <input type="text" name="deskripsi_tagihan" value="<?= $kolom['deskripsi_tagihan']; ?>" class="form-control" required>
                                                <br>
                                                <label for="jumlah_tagihan">Jumlah tagihan</label>
                                                <input type="number" name="jumlah_tagihan" value="<?= $kolom['jumlah_tagihan']; ?>" class="form-control" required>
                                                <br>
                                                <label for="tanggal_jatuh_tempo">Tanggal Jatuh Tempo</label>
                                                <input type="date" name="tanggal_jatuh_tempo" value="<?= $kolom['tanggal_jatuh_tempo']; ?>" class="form-control" required>
                                                <br>
                                                <button type="submit" class="btn btn-block bg-blue"> <i class="fas fa-save"></i> Simpan </button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php
                        } // akhir while
                        ?>
                    </table>

                    <a href="index.php?p=bayar-tambah"><button type="button" class="btn bg-dark btn-block mt-3"><i class="fas fa-plus"></i> Pembayaran Baru</button></a>

                </div>
            </div>

        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->



<!-- Modal Recycle Bin-->
<div class="modal fade" id="modalRecycleBin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Data Penghapusan Sementara</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <thead class="bg-dark">
                        <th>ID</th>
                        <th>Deskripsi tagihan</th>
                        <th>Dihapus Pada</th>
                        <th>Aksi</th>
                    </thead>
                    <?php
                    $sql = "SELECT * FROM tagihan WHERE dihapus_pada IS NOT NULL";
                    $query = mysqli_query($koneksi, $sql);
                    while ($kolom = mysqli_fetch_array($query)) {
                    ?>

                        <tr>
                            <td><?= $kolom['id_tagihan']; ?></td>
                            <td><?= $kolom['deskripsi_tagihan']; ?></td>
                            <td><?= $kolom['dihapus_pada']; ?></td>
                            <td> <a onclick="return confirm('Restore ga wir?')" href="aksi/tagihan.php?aksi=restore&id_tagihan=<?= $kolom['id_tagihan']; ?>"><i class="fas fa-trash-restore"></i></a>|<a onclick="return confirm('Yakin mau hapus permanen wir?')" href="aksi/tagihan.php?aksi=hapus-permanen&id_tagihan=<?= $kolom['id_tagihan']; ?>"><i class="fas fa-eraser"></i></a></td>
                        </tr>
                    <?php
                    } // akhir while
                    ?>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>