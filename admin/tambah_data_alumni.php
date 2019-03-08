<?php
  session_start();
  if(isset($_SESSION['login'])){
?>
<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" class="js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="id-ID">
  <head>

    <?php include'header.php';?>
    
    <style>
      form {
        width: 80vw;
        margin: 20px auto;
      }

      .form-control {     color: #495057;     ... } 
    </style>

  </head>

  <body class="blue-one-page tos-desktop" id="body">
    <main class="site-content" role="main">
      <div class="section" id="main-konten">
        <div class="container">
          <div class="row">

            <div class="col-md-12" id="header-page">
              <h1><span> Alumni JTI </span></h1>
            </div>

            <div class="col-md-12 left-side">
              <div class="artikel">
                <div class="konten">

                  <div class="row">
                    <div class="col-md-12">
                      <h3><p align="left"><a href="index.php">Kembali</a></p></h3>
                    </div>
                  </div>

                  <hr>
                  <div class="row">
                    <div class="col-md-12">
                      <!--tabel-->
                      <div class="row">
                        <div class="col-md-12">

                          <center>Tambah Data Mahasiswa</center><br>

                          <div class="container">
                            <div class="table-container">
                              <center>
                                <table>

                                  <!--form-->
                                  <form action="tambah_proses_data_alumni.php" method="POST" name="tambah">
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>Nama<font color="red">*</font></label>
                                          <input name="nama" class="form-control" placeholder="Nama" required="">
                                        </div>
                                      </td>
                                      <td width="10"></td>
                                      <td>
                                        <div class="form-group">
                                          <label>NIM<font color="red">*</font></label>
                                          <input name="nim" class="form-control" placeholder="NIM" required="">
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>Foto<font color="red">*</font></label>
                                          <input type="file" name="foto" required="">
                                        </div>
                                      </td>
                                      <td width="10"></td>
                                      <td>
                                        <div class="form-group">
                                          <label>Tempat Lahir<font color="red">*</font></label>
                                          <input name="tempat_lahir" class="form-control" placeholder="Tempat Lahir" required="">
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>Tanggal Lahir<font color="red">*</font></label>
                                          <input type="date" name="tgl_lahir" class="form-control" required="">
                                        </div>
                                      </td>
                                      <td width="10"></td>
                                      <td>
                                        <div class="form-group">
                                          <label>Jenis Kelamin<font color="red">*</font></label><br>
                                          <input name="jenis_kelamin" type="radio" value="Laki-Laki" required="">Laki-Laki <input name="jenis_kelamin" type="radio" value="Perempuan" required="">Perempuan
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>Status Perkawinan<font color="red">*</font></label>
                                          <select name="status_perkawinan" class="form-control" required="">
                                            <option value="Belum Nikah">Belum Nikah</option>
                                            <option value="Menikah">Menikah</option>
                                          </select>
                                        </div>
                                      </td>
                                      <td width="10"></td>
                                      <td>
                                        <div class="form-group">
                                        <label>Program Studi<font color="red">*</font></label>
                                        <select name="prodi" class="form-control" required="">
                                          <option value="">-Pilih Program Studi-</option>
                                          <option value="Manajemen Informatika">Manajemen Informatika</option>
                                          <option value="Teknik Komputer">Teknik Komputer</option>
                                          <option value="Teknik Informatika">Teknik Informatika</option>
                                        </select>
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>Angkatan<font color="red">*</font></label>
                                          <input name="angkatan" class="form-control" required="">
                                        </div>
                                      </td>
                                      <td width="10"></td>
                                      <td>
                                        <div class="form-group">
                                          <label>Lulus Tanggal<font color="red">*</font></label>
                                          <input type="date" name="lulus_tanggal" class="form-control" required="">
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>Lama Studi<font color="red">*</font></label>
                                          <br>
                                          <input name="tahun_studi" class="form-control" style="width: 100px; float: left; margin-right: 5px;" required="" placeholder="Tahun" min="0" max="7">
                                          <input name="bulan_studi" class="form-control"  style="width: 100px; float: left; margin-right: 5px;" required="" placeholder="Bulan" min="0" max="12">
                                          <input name="hari_studi" class="form-control"  style="width: 100px; float: left;" required="" placeholder="Hari" min="0" max="31">
                                        </div>
                                      </td>
                                      <td width="10"></td>
                                      <td>
                                        <div class="form-group">
                                          <label>IPK<font color="red">*</font></label>
                                          <input name="ipk" class="form-control" min="0" max="4" maxlength="4" placeholder="IPK" required="">
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>Judul Tugas Akhir<font color="red">*</font></label>
                                          <input name="judul_ta" class="form-control" placeholder="Judul Tugas Akhir" required="">
                                        </div>
                                      </td>                                    
                                      <td width="10"></td>
                                      <td>
                                        <div class="form-group">
                                          <label>No. Telepon<font color="red">*</font></label>
                                          <input name="no_telepon" class="form-control" maxlength="13" placeholder="No. Telepon" required="">
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>E-mail</label>
                                          <input name="email" class="form-control" placeholder="E-mail">
                                        </div>
                                      </td>
                                      <td width="10"></td>                                    
                                      <td>
                                        <div class="form-group">
                                          <label>Asal SLTA/Tahun<font color="red">*</font></label><br>
                                          <input name="asal_slta" placeholder="Asal SLTA" class="form-control" style="width: 150px; float: left; margin-right: 10px;" required="">
                                          <input name="tahun_lulus_slta" placeholder="Tahun Lulus" class="form-control" style="width: 150px; float: left;" required="">
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <div class="form-group">
                                          <label>Nama Orang Tua<font color="red">*</font></label>
                                          <input name="nama_orang_tua" class="form-control" placeholder="Nama Orang Tua" placeholder="">
                                        </div>
                                      </td>
                                      <td width="10"></td>
                                      <td>
                                        <div class="form-group">
                                          <label>Alamat Asal<font color="red">*</font></label>
                                          <input name="alamat" class="form-control" placeholder="Alamat Asal" required="">
                                        </div>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <button class="btn btn-primary" type="reset">Reset</button> <button class="btn btn-primary" type="submit" name="tambah">Tambah</button>
                                      </td>
                                    </tr>
                                  </form>
                                </table>
                              </center>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!--pagination-->
                      <center>
                        <div class="row">
                          <div class="col-md-12">
                            <br>

                          </div>
                        </div>
                      </center>
                    </div>
                  </div>
                </div>
              </div>
            </div> <!-- container -->  
          </div> <!--tutup class .row -->
        </div> <!--tutup class .container -->
      </div> <!--tutup id #main-konten -->

      <?php include'footer.php';?>

    </main>
  </body>
</html>
<?php
}
else
{
  echo'<script>window.location="login.php"</script>';
}
?>