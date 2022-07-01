<?php 

//index.php

include('db_connection.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Funda of Web IT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card mt-3">
                    <div class="card-header">
                        <h4>How to Filter or Find or Search data using Multiple Checkbox in php</h4>
                    </div>
                </div>
            </div>

            <!-- Pilihan filter  -->
            <div class="col-md-3">
                <form action="" method="GET">
                    <div class="card shadow mt-3">
                        <div class="card-header">
                            <h5>Filter 
                                <button type="submit" class="btn btn-primary btn-sm float-end">Search</button>
                            </h5>
                        </div>
                        <div class="card-body">
                            <h6> Umur </h6>
                            <hr>
                            <?php
                                $con = mysqli_connect("localhost","root","","codingan_ta");

                               
                                        ?>
                                            <div>
                                                <input type="radio" name="umur" 
                                                    <?php if (isset($_GET['umur']) && $_GET['umur']==1) {echo "checked";}?> 
                                                    value=1>6-8 Bulan
                                                <input type="radio" name="umur" 
                                                    <?php if (isset($_GET['umur']) && $_GET['umur']==2) {echo "checked";}?> 
                                                    value=2>9-11 Bulan
                                                 <input type="radio" name="umur" 
                                                    <?php if (isset($_GET['umur']) && $_GET['umur']==3) {echo "checked";}?> 
                                                    value=3>12-23 Bulan
                                               
                                            </div>
                                        <?php
                            ?>
                        </div>
                        <div class="card-body">
                            <h6>Daerah</h6>
                            <hr>
                            
                                <div>
                                <input type="radio" name="lokasi" 
                                     <?php if (isset($_GET['lokasi']) && $_GET['lokasi']==1) {echo "checked";}?> 
                                     value=1>Jakarta
                                <input type="radio" name="lokasi" 
                                     <?php if (isset($_GET['lokasi']) && $_GET['lokasi']==2) {echo "checked";}?> 
                                     value=2>Jawa Barat
                                <input type="radio" name="lokasi" 
                                     <?php if (isset($_GET['lokasi']) && $_GET['lokasi']==3) {echo "checked";}?> 
                                     value=3>Banten
                                     <input type="radio" name="lokasi" 
                                     <?php if (isset($_GET['lokasi']) && $_GET['lokasi']==4) {echo "checked";}?> 
                                     value=4>Jawa Timur 
                                <input type="radio" name="lokasi" 
                                     <?php if (isset($_GET['lokasi']) && $_GET['lokasi']==5) {echo "checked";}?> 
                                     value=5>Bali
                                <input type="radio" name="lokasi" 
                                     <?php if (isset($_GET['lokasi']) && $_GET['lokasi']==6) {echo "checked";}?> 
                                     value=6>Sumatera Barat   
                                            </div>
                                        <?php
                            ?>
                        </div>
                        <div class="card-body">
                            <h6> Preferensi Makan </h6>
                            <hr>
                            <?php
                                

                                $kesukaan_query = "SELECT * FROM preferensi";
                                $kesukaan_query_run  = mysqli_query($con, $kesukaan_query);

                                if(mysqli_num_rows($kesukaan_query_run) > 0)
                                {
                                    foreach($kesukaan_query_run as $kesukaanlist)
                                    {
                                        $checked = [];
                                        if(isset($_GET['jenis']))
                                        {
                                            $checked = $_GET['jenis'];
                                        }
                                        ?>
                                            <div>
                                                <input type="checkbox" name="jenis[]" value="<?= $kesukaanlist['preferensi_id']; ?>" 
                                                    <?php if(in_array($kesukaanlist['preferensi_id'], $checked)){ echo "checked"; } ?>
                                                 />
                                                <?= $kesukaanlist['jenis']; ?>
                                            </div>
                                        <?php
                                    }
                                }
                                else
                                {
                                    echo "Tidak ada Preferensi yang cocok";
                                }
                            ?>
                        </div>
                    </div>
                </form>
            </div>
			

            <!-- Menampilkan Pilihan -->
            <!-- <img src='. $menuitems['gambar'] .' alt="" class="img-responsive" > -->
            <div class="col-md-9 mt-3">
                <div class="card ">
                    <div class="card-body row">
                        <?php
							
							$umur = $_GET['umur'];
							$lokasi = $_GET['lokasi'];
							$prefs = $_GET['jenis'];
							
							
							$query = "select distinct  a.menu_id id, a.menu menu, b.umur umur, c.deskripsi kategori from 
										menu_mpasi a 
										join umur b on a.umur_id = b.umur_id
										join kategori c on a.kategori_id = c.kategori_id
										join menu_lokasi d on d.menu_id = a.menu_id
										join (
												select a.menu_id
												from menu_mpasi a 											
											
										";
							if(isset($prefs)){
								if(isset($prefs[0])) $query .= " join menu_preferensi d on a.menu_id = d.menu_id and d.preferensi_id = $prefs[0]";
								if(isset($prefs[1])) $query .= " join menu_preferensi c on a.menu_id = c.menu_id and c.preferensi_id = $prefs[1]";
								if(isset($prefs[2])) $query .= " join menu_preferensi b on a.menu_id = b.menu_id and b.preferensi_id = $prefs[2]";
							}		

							$query .= ") pref on a.menu_id = pref.menu_id
											where 1=1 ";
											
							
							if(isset($umur)) $query .= " and b.umur_id = $umur";
							if(isset($lokasi)) $query .= " and d.lokasi_id = $lokasi";
							
							
							$menu_run = mysqli_query($con, $query);
							if(mysqli_num_rows($menu_run) > 0)
							{
								foreach($menu_run as $menuitems) :
									
									   echo' <div>
											<div style="border:1px solid #ccc; border-radius:5px; padding:16px; margin-bottom:16px; height:120px;">
										   
											<p align="center"><strong><a href="#">'. $menuitems['menu'] .'</a></strong></p>
											<h6 style="text-align:center;" class="text-danger" >'. $menuitems['kategori'] .'</h6>
											<p style="text-align:center;">Umur : '. $menuitems['umur'].' <br />
										</div>
									';
								endforeach;
							}
							else
							{
								echo "Rekomendasi Belum Tersedia";
							}
							
							
                            
                            
                        ?>
                    </div>
                </div>
            </div> 
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>