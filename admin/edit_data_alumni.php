<?php
session_start();
if(isset($_SESSION['login'])){
?>
<?php
  include('koneksi.php');
  $id = $_GET['id'];
  $show = mysqli_query($koneksi,"SELECT * FROM alumni WHERE id_alumni='$id'");
  if(mysqli_num_rows($show) == 0)
  {
    echo'<script>window.history.back()</script>';
  }
  else
  {
    $hasil = mysqli_fetch_assoc($show);
  }
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

      .form-control {     
        color: #495057;
      } 
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
                          <center>Edit Data Alumni</center><br>
                            <div class="table-container">
                              <!--form-->
                              <center>
                                <table border="0">
                                  <form action="edit_proses_data_alumni.php" method="POST" name="simpan">
                                    <input type="hidden" name="id" value="<?php echo $id;?>">
                                      <tr>
                                        <td colspan="3">
                                          <div class="form-group">
                                            <label>Foto<font color="red">*</font></label><br>
                                            <center>
                                              <?php echo '<img src="../images/'.$hasil['foto'].'">'; ?>
                                              <input type="hidden" name="fotoawal" value="<?php echo $hasil['foto']; ?>" /><br>
                                              <input type="file" name="foto" value="<?php echo $hasil['foto']; ?>"/>
                                            </center>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td colspan="3">
                                          <div class="form-group">
                                            <label>Nama<font color="red">*</font></label>
                                            <input name="nama" class="form-control" required="" value="<?php echo $hasil['nama'];?>">
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                          <div class="form-group">
                                            <label>NIM<font color="red">*</font></label>
                                            <input name="nim" class="form-control" required="" value="<?php echo $hasil['nim'];?>">
                                          </div>
                                        </td>
                                        <td width="10"></td>
                                        <td>
                                          <div class="form-group">
                                            <label>Tempat Lahir<font color="red">*</font></label>
                                            <input name="tempat_lahir" class="form-control" value="<?php echo $hasil['tempat_lahir'];?>">
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                          <div class="form-group">
                                            <label>Tanggal Lahir<font color="red">*</font></label>
                                            <input type="date" name="tgl_lahir" class="form-control"  value="<?php echo $hasil['tgl_lahir'];?>">
                                          </div>
                                        </td>
                                        <td width="10"></td>
                                        <td>
                                          <div class="form-group">
                                            <label>Jenis Kelamin<font color="red">*</font></label><br>
                                            <input name="jenis_kelamin" type="radio" value="L" required="" <?php if($hasil['jenis_kelamin']=='Laki-Laki'){echo 'checked';}?>> Laki-Laki
                                            <input name="jenis_kelamin" type="radio" value="P" required="" <?php if($hasil['jenis_kelamin']=='Perempuan'){echo 'checked';}?>> Perempuan
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                          <div class="form-group">
                                          <label>Status Perkawinan<font color="red">*</font></label>
                                            <select name="status_perkawinan" class="form-control" required="">
                                              <option value="Belum Nikah" <?php if($hasil['status_perkawinan']=="Belum Nikah") echo 'selected="selected"'; ?>>Belum Nikah</option>
                                              <option value="Menikah" <?php if($hasil['status_perkawinan']=="Menikah") echo 'selected="selected"'; ?>>Menikah</option>
                                            </select>
                                          </div>
                                        </td>
                                        <td width="10"></td>
                                        <td>
                                          <div class="form-group">
                                            <label>Program Studi<font color="red">*</font></label>
                                            <select name="prodi" class="form-control" required="">
                                              <option value="">-Pilih Program Studi-</option>
                                              <option value="Manajemen Informatika" <?php if($hasil['program_studi']=='Manajemen Informatika'){echo'selected';}?>>Manajemen Informatika</option>
                                              <option value="Teknik Komputer" <?php if($hasil['program_studi']=='Teknik Komputer'){echo'selected';}?>>Teknik Komputer</option>
                                              <option value="Teknik Informatika" <?php if($hasil['program_studi']=='Teknik Informatika'){echo'selected';}?>>Teknik Informatika</option>
                                            </select>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                          <div class="form-group">
                                            <label>Angkatan<font color="red">*</font></label>
                                            <input name="angkatan" class="form-control" required="" value="<?php echo $hasil['angkatan']; ?>">
                                          </div>
                                        </td>
                                        <td width="10"></td>
                                        <td>
                                          <div class="form-group">
                                            <label>Lulus Tanggal<font color="red">*</font></label>
                                            <input type="date" name="lulus_tanggal" class="form-control" required="" value="<?php echo $hasil['lulus_tanggal']; ?>">
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                          <div class="form-group">
                                            <label>Lama Studi<font color="red">*</font></label>
                                            <input name="lama_studi" class="form-control" required="" placeholder="Lama Studi" value="<?php echo $hasil['lama_studi']; ?>">
                                          </div>
                                        </td>
                                        <td width="10"></td>
                                        <td>
                                          <div class="form-group">
                                            <label>IPK<font color="red">*</font></label>
                                            <input name="ipk" class="form-control" min="0" max="4" maxlength="4" placeholder="IPK" required="" value="<?php echo $hasil['ipk']; ?>">
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                          <div class="form-group">
                                            <label>Judul Tugas Akhir<font color="red">*</font></label>
                                            <input name="judul_ta" class="form-control" placeholder="Judul Tugas Akhir" required="" value="<?php echo $hasil['judul_ta']; ?>">
                                          </div>
                                        </td>                                    
                                        <td width="10"></td>
                                        <td>
                                          <div class="form-group">
                                            <label>No. Telepon<font color="red">*</font></label>
                                            <input name="no_telepon" class="form-control" maxlength="13" placeholder="No. Telepon" required="" value="<?php echo $hasil['no_telepon']; ?>">
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                          <div class="form-group">
                                            <label>E-mail</label>
                                            <input name="email" class="form-control" placeholder="E-mail" value="<?php echo $hasil['email']; ?>">
                                          </div>
                                        </td>
                                        <td width="10"></td>
                                        <td>
                                          <div class="form-group">
                                            <label>Asal SLTA/Tahun<font color="red">*</font></label><br>
                                            <input name="asal_slta_tahun" placeholder="Asal SLTA" class="form-control" required="" value="<?php echo $hasil['asal_slta_tahun']; ?>">
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                          <div class="form-group">
                                            <label>Nama Orang Tua<font color="red">*</font></label>
                                            <input name="nama_orang_tua" class="form-control" placeholder="Nama Orang Tua" placeholder="" value="<?php echo $hasil['nama_orang_tua']; ?>">
                                          </div>
                                        </td>
                                        <td width="10"></td>
                                        <td>
                                          <div class="form-group">
                                            <label>Alamat Asal<font color="red">*</font></label>
                                            <input name="alamat" class="form-control" placeholder="Alamat Asal" required="" value="<?php echo $hasil['alamat_asal']; ?>">
                                          </div>
                                        </td>
                                      </tr>
                                      <tr><td colspan="3"></td></tr>
                                      <tr><td colspan="3"><button class="btn btn-primary" type="reset">Reset</button><button class="btn btn-primary" type="submit" name="simpan">Edit</button></td></tr>
                                    </form>
                                  </table>
                                </center>
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
                    </div> <!-- container -->  
                  </div> <!--tutup class .row -->
                </div> <!--tutup class .container -->
              </div> <!--tutup id #main-konten -->
              <?php include'footer.php';?>
            </main>
          </body>
        </html>
<?php
}else{
  echo'<script>window.location="login.php"</script>';
}
?>