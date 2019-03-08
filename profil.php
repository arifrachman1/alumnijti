<?php
session_start();
if(isset($_SESSION['login'])){
?>
<?php
  include'admin/koneksi.php';
  $user=$_GET['nim'];
  $show=mysqli_query($koneksi,"SELECT * FROM mhs WHERE nim='$user'");
  if(mysqli_num_rows($show)==0){
    echo"<script>window.history.back()</script>";
  }else{
    $data=mysqli_fetch_assoc($show);
?>
<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" class="js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="id-ID">
  <head>
    <?php include'header_profil.php';?>
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
                  <div class="col-md-4 text-center">
                    <img src="images/<?php echo $data['foto']; ?>" class="img-circle img-thumbnail" height="130"> 
                  </div>
                    <div class="col-md-8 detail">
                      <table border="0">
                        <tr>
                          <td colspan="3">
                            <h4>
                              <strong>
                                <font color="black"><?php echo $data['nama']; ?></font>
                              </strong>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <font color="black">
                                <a href="edit_data_mhs.php?id=<?php echo $data['id_mhs']; ?>">
                                  <img src="images/edit.png" height="25" width="25" title="Edit">
                                </a>
                              </font>
                            </h4>
                          </td>
                        </tr>
                        <tr>
                          <td width="150">
                            <p><font color="black">NIM</font>
                          </td>
                          <td width="10">
                            <center><font color="black">:</font></center>
                          </td>
                          <td width="500">
                            <font color="black"><?php echo $data['nim']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Tempat Lahir</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['tempat_lahir']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Tanggal Lahir</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['tgl_lahir']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Jenis kelamin</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['jenis_kelamin']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Status Perkawinan</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['status_perkawinan'] ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Program Studi</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['program_studi']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Angkatan</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['angkatan']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Lulus Tanggal</font>
                          </td>
                          <td>
                            <center><font color="black">:</center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['lulus_tanggal']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Lama Studi</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['lama_studi']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">IPK</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['ipk']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Judul Tugas Akhir</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['judul_ta']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">No. Telepon</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['no_telepon']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">E-mail</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['email']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Asal SLTA/Tahun</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['asal_slta_tahun']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Nama Orang Tua</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['nama_orang_tua']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <p><font color="black">Alamat Asal</font>
                          </td>
                          <td>
                            <center><font color="black">:</font></center>
                          </td>
                          <td>
                            <font color="black"><?php echo $data['alamat_asal']; ?></font></p>
                          </td>
                        </tr>
                        <tr>
                          <td><p><font color="black">Status Akun</font></td><td><center><font color="black">:</font></center></td><td>
                          <?php
                            if($data['status']=='1'){
                              echo '<font color="green">Akun aktif</font>';
                            }
                            else{
                              echo '<font color="red">Akun tidak aktif</font>';
                            }
                          ?>
                          </p></td>
                        </tr>
                      </table>
                    </div>
                  <hr>

              <!--pagination-->
                  <center>
                    <div class="row">
                      <div class="col-md-12">
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
}
}else{
  echo'<script>window.location="login.php"</script>';
}
?>