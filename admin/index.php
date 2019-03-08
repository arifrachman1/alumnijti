<?php
  session_start();
  if(isset($_SESSION['login'])){
?>
<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" class="js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="id-ID">
  <head>
    <?php include'header.php';?>
    <link rel="stylesheet" href="../css/style.css">
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
                  <?php
                    // includekan fungsi paginasi
                    // silahkan di komen atau di hapus saja baris yang tidak ingin digunakan
                    include '../pagination3.php';

                    // pagination config start
                    $q = isset($_REQUEST['q']) ? urldecode($_REQUEST['q']) : ''; // untuk keyword pencarian
                    $page = isset($_GET['page']) ? intval($_GET['page']) : 1; // untuk nomor halaman
                    $adjacents = isset($_GET['adjacents']) ? intval($_GET['adjacents']) : 3; // khusus style pagination 2 dan 3
                    $rpp = 10; // jumlah record per halaman

                    include 'koneksi.php'; // sesuaikan username dan password mysqli anda
                    $sql = "SELECT * FROM alumni WHERE nim LIKE '%$q%' OR nama LIKE '%$q%' OR angkatan LIKE '%$q%' ORDER BY nim DESC"; // query silahkan disesuaikan
                    $result = mysqli_query($koneksi, $sql); // eksekusi query

                    $tcount = mysqli_num_rows($result); // jumlah total baris
                    $tpages = isset($tcount) ? ceil($tcount / $rpp) : 1; // jumlah total halaman
                    $count = 0; // untuk paginasi
                    $i = ($page - 1) * $rpp; // batas paginasi
                    $no_urut = ($page - 1) * $rpp; // nomor urut
                    $reload = $_SERVER['PHP_SELF'] . "?q=" . $q . "&amp;adjacents=" . $adjacents; // untuk link ke halaman lain
                    // pagination config end
                  ?>
                  <div class="row">
                    <div class="col-md-12">
                      <!--form pencarian-->
                      <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="GET">
                        <div class="input-group">
                          <input type="text" class="form-control" placeholder="Cari Nama/NIM..." name="q" value="<?php echo $q ?>">
                          <span class="input-group-btn">
                            <?php if ($q <> '') { ?>
                            <a class="btn btn-default" href="<?php echo $_SERVER['PHP_SELF'] ?>">Reset</a>
                            <?php } ?>
                            <button class="btn btn-primary" type="submit">Cari</button>
                          </span>
                        </div>
                      </form>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-md-12">
                      <!--tabel-->
                      <div class="row">
                        <div class="col-md-12">
                          <a href="tambah_data_alumni.php">Tambah Data Alumni</a>
                          <div class="table-container">
                            <table class="demo-table" >
                              <thead>
                                <tr>
                                  <th scope="col" class="column-primary"><center>No.</center></th>
                                  <th scope="col"><center>Nama</center></th>
                                  <th scope="col"><center>NIM</center></th>
                                  <th scope="col"><center>Foto</center></th>
                                  <th scope="col"><center>Tempat Lahir</center></th>
                                  <th scope="col"><center>Tanggal Lahir</center></th>
                                  <th scope="col"><center>Jenis Kelamin</center></th>
                                  <th scope="col"><center>Status Perkawinan</center></th>
                                  <th scope="col"><center>Program Studi</center></th>
                                  <th scope="col"><center>Angkatan</center></th>
                                  <th scope="col"><center>Lulus Tanggal</center></th>
                                  <th scope="col"><center>Lama Studi</center></th>
                                  <th scope="col"><center>IPK</center></th>
                                  <th scope="col"><center>Judul Tugas Akhir</center></th>
                                  <th scope="col"><center>No. Telepon</center></th>
                                  <th scope="col"><center>E-mail</center></th>
                                  <th scope="col"><center>Asal SLTA / Tahun</center></th>
                                  <th scope="col"><center>Nama Orang Tua</center></th>
                                  <th scope="col"><center>Alamat Asal</center></th>
                                  <th scope="col"><center>Status</center></th>
                                  <th scope="col" class="column-primary"><center>Opsi</center></th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php
                                  while (($count < $rpp) && ($i < $tcount)) 
                                  {
                                    mysqli_data_seek($result, $i);
                                    $data = mysqli_fetch_array($result);
                                ?>
                                <tr>
                                  <td data-header="No" class="title"><center><?php echo ++$no_urut; ?></center><a href="#" class="more"><i class="fa fa-chevron-down"></i></a></td>
                                  <td data-header="Nama" >
                                    <?php
                                      if($data['status']=='1')
                                      { 
                                        echo'<font color="green">'.$data['nama']; 
                                        echo'</font>';
                                      }
                                      else
                                      {
                                        echo $data ['nama'];
                                      } 
                                    ?>
                                  </td>
                                  <td scope="col"><center><?php echo $data['nim']; ?></center></td>
                                  <td scope="col"><center><img src="../images/<?php echo $data['foto'];?>"></center></td>
                                  <td scope="col"><center><?php echo $data['tempat_lahir']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['tgl_lahir']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['jenis_kelamin']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['status_perkawinan']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['program_studi']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['angkatan']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['lulus_tanggal']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['lama_studi']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['ipk']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['alamat_asal']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['no_telepon']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['email']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['asal_slta_tahun']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['nama_orang_tua']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['judul_ta']; ?></center></td>
                                  <td scope="col"><center><?php echo $data['status']; ?></center></td>
                                  <td><center><?php echo '<a href="edit_data_alumni.php?id='.$data['id_alumni'].'"><img src="../images/edit.png" height="25" width="25" title="Edit"></a> <a href="hapus_data_alumni.php?id='.$data['id_alumni'].'"onclick="return confirm(\'Yakin ingin menghapus id '.$data ['id_alumni'].'?\')"><img src="../images/hapus.png" height="25" width="25" title="Hapus"></a>'?></center></td>
                                </tr>
                                <?php
                                    $i++;
                                    $count++;
                                  }
                                  ?>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>

                      <!--pagination-->
                      <center>
                        <div class="row">
                          <div class="col-md-12">
                            <br>
                            <!--silahkan di komen atau di hapus saja baris yang tidak ingin digunakan-->
                            <?php echo paginate_three($reload, $page, $tpages, $adjacents); ?>
                          </div>
                        </div>
                      </center>
                    </div>
                  </div>
                </div> <!-- container --> 
              </div>
            </div>
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