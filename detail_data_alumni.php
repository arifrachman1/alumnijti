<?php
  include('admin/koneksi.php');
  $id = $_GET['id_alumni'];
  $show = mysqli_query($koneksi,"SELECT * FROM alumni WHERE id_alumni='$id'");
  if(mysqli_num_rows($show) == 0){
    echo'<script>window.history.back()</script>';
  }
  else{
    $hasil=mysqli_fetch_assoc($show);
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
                      <!--tabel-->
                      <div class="row">
                        <div class="col-md-12">
                          <center>
                            <label>
                              <?php
                                if($hasil['status']=='1'){ 
                                  echo'<font color="green">'.$hasil ['nama']; echo'</font>';
                                }
                                else{
                                  echo $hasil ['nama'];
                                } 
                                ?>                                  
                            </label>
                          </center>
                          <br>
                          <div class="table-container">
                            <!--form-->
                            <center>
                              <table border="0">
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group">
                                      <center>
                                        <?php echo '<img src="images/'.$hasil['foto'].'" class="img-circle img-thumbnail">'; ?>
                                      </center>
                                    </div>
                                  </td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>NIM</label>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <label>Tempat Lahir</label>
                                  </td>
                                </tr>
                                <tr>
                                  <td><?php echo $hasil['nim'];?></td>
                                  <td width="50"></td>
                                  <td><?php echo $hasil['tempat_lahir'];?></td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>Tanggal Lahir</label>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <label>Jenis Kelamin</label>
                                  </td>
                                </tr>
                                <tr>
                                  <td><?php echo $hasil['tgl_lahir'];?></td>
                                  <td width="50"></td>
                                  <td><?php echo $hasil['jenis_kelamin'];?></td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>Status Perkawinan</label>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <label>Program Studi</label>
                                  </td>
                                  </tr>
                                <tr>
                                  <td><?php echo $hasil['status_perkawinan'];?></td>
                                  <td width="50"></td>
                                  <td><?php echo $hasil['program_studi'];?></td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>Angkatan</label>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <label>Lulus Tanggal</label>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <?php echo $hasil['angkatan'];?>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <?php echo $hasil['lulus_tanggal'];?>
                                  </td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>Lama Studi</label>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <label>IPK</label>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <?php echo $hasil['lama_studi'];?>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <?php echo $hasil['ipk'];?>
                                  </td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>Judul Tugas Akhir</label>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <label >No. Telepon</label>
                                  </td>
                                </tr>
                                <tr>
                                  <td><?php echo $hasil['judul_ta'];?></td>
                                  <td width="50"></td>
                                  <td><?php echo $hasil['no_telepon'];?></td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>E-mail</label>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <label>Asal SLTA/Tahun</label>
                                  </td>
                                </tr>
                                <tr>
                                  <td><?php echo $hasil['email'];?></td>
                                  <td width="50"></td>
                                  <td><?php echo $hasil['asal_slta_tahun'];?></td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <label>Nama Orang Tua</label>
                                  </td>
                                  <td width="50"></td>
                                  <td>
                                    <label>Alamat Asal</label>
                                  </td>
                                </tr>
                                <tr>
                                  <td><?php echo $hasil['nama_orang_tua'];?></td>
                                  <td width="50"></td>
                                  <td><?php echo $hasil['alamat_asal'];?></td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <div class="form-group"></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td colspan="3">
                                    <label>Status</label>
                                    <br>
                                    <?php if($hasil['status']=='1'){ 
                                      echo'<font color="green">Akun Aktif'; echo'</font>';
                                    }
                                    else{ 
                                      echo '<font color="red">Akun Belum Aktif</font>'; }; ?>
                                  </td>
                                </tr>
                              </table>
                            </center>
                            <button class="btn btn-primary" type="submit" onclick="history.back(-1)">Kembali</button>
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
            </div> 
          </div> <!--tutup class .row -->
        </div> <!--tutup class .container -->
      </div> <!--tutup id #main-konten -->
      <?php include'footer.php';?>
    </main>
  </body>
</html>