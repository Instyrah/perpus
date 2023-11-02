<?php
$server ="localhost";
$username ="root";
$password ="";
$dbs ="verlyperpus";
$con= mysqli_connect($server, $username, $password, $dbs);

if (!$con) {
    die ("Gagal konek ke server MySQL".mysqli_connect_error())
    // $bukadb=mysqli_select_db($dbs);
    or die ("Gagal membuka database $dbs".mysqli_connect_error());

}
 ?>
    // die ("gak bisa konek woyy" .mysqli_connect_error());