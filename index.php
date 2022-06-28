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
                                $con = mysqli_connect("localhost","root","","tugas_akhir");

                               
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
                            if(isset($_GET['umur']) || isset($_GET['lokasi']) || isset($_GET['jenis']))
                            {
                                if(isset($_GET['umur'])){
                                    $umur= $_GET['umur'];
                                    $menu = "SELECT * FROM menu_mpasi WHERE umur_id = $umur";   
                                }
                                
                                //rencana nya aturannya mau seperti ini
                                //jika memilih lokasi jakarta menampilkan pilihan dengan filter_id 1 dari tabel gabungan
                                //jika memilih lokasi jakarta dan preferensi A menampilkan pilihan dengan filter_id 2 dari tabel gabungan
                                //jika memilih lokasi jakarta dan preferensi A  dan preferensi B menampilkan pilihan dengan filter_id 3 dari tabel gabungan
                                $lokasi = "lokasi";
                                if($lokasi == 1){
                                 "SELECT * FROM jakarta"; 
                                }
                               
                               
                                $menu_run = mysqli_query($con, $menu);
                                if(mysqli_num_rows($menu_run) > 0)
                                {
                                    foreach($menu_run as $menuitems) :
                                        
                                           echo' <div class="col-sm-4 col-lg-3 col-md-3">
                                                <div style="border:1px solid #ccc; border-radius:5px; padding:16px; margin-bottom:16px; height:120px;">
                                               
                                                <p align="center"><strong><a href="#">'. $menuitems['menu'] .'</a></strong></p>
                                                <h6 style="text-align:center;" class="text-danger" >'. $menuitems['kategori'] .'</h6>
                                                <p>Umur : '. $menuitems['umur_id'].' <br />
                                            </div>
                                        ';
                                    endforeach;
                                }
                                else
                                {
                                    echo "Rekomendasi Belum Tersedia";
                                }
                            }
                            else
                            {
                                $menu = "SELECT * FROM menu_mpasi";
                                $menu_run = mysqli_query($con, $menu);
                                if(mysqli_num_rows($menu_run) > 0)
                                {
                                    foreach($menu_run as $menuitems) :
                                        
                                           echo' <div class="col-sm-4 col-lg-3 col-md-3">
                                                <div style="border:1px solid #ccc; border-radius:5px; padding:16px; margin-bottom:16px; height:120px;">
                                                
                                                <p align="center"><strong><a href="#">'. $menuitems['menu'] .'</a></strong></p>
                                                <h6 style="text-align:center;" class="text-danger" >'. $menuitems['kategori'] .'</h6>
                                                <p>Umur : '. $menuitems['umur_id'].' <br />
                                            </div>
                                        ';
                                    endforeach;
                                }
                                else
                                {
                                    echo "Rekomendasi Belum Tersedia";
                                }
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