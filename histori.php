<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>History Pembelian</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

</head>
<body>
    <?php
        include "navbar.php";
    ?>
    <br></br>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>History Pembelian</h1>
            </div>
            <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                    <th scope="col">No</th>
                    <th scope="col">Id/No Pembelian</th>
                    <th scope="col">Tanggal Pembelian</th>
                    <th scope="col">Nama Produk</th>
                    <th scope="col">Jumlah</th>
                    <th scope="col">Harga Satuan</th>
                    <th scope="col">Subtotal</th>
                    <th scope="col">Total Bayar</th>
                    <th scope="col">Bayar</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    include "koneksi.php";
                    $query_pembelian = mysqli_query($koneksi, "SELECT * FROM transaksi 
                    where id_pelanggan = '".$_SESSION['id_pelanggan']."' ORDER BY id_transaksi DESC");
                    $no=0;
                    while($data_pembelian=mysqli_fetch_array($query_pembelian)){
                        $no++;
                    ?>
                    <tr>
                        <td><?=$no?></td>
                        <td><?=$data_pembelian['id_transaksi']?></td>
                        <td><?=$data_pembelian['tgl_transaksi']?></td>
                        <td>
                            <ol>
                            <?php
                            include "koneksi.php";
                            $query_detail = mysqli_query($koneksi, "SELECT * FROM detail_transaksi d JOIN produk b ON b.id_produk = d.id_produk 
                                            WHERE id_transaksi = '".$data_pembelian['id_transaksi']."'");
                            while($data_detail = mysqli_fetch_array($query_detail)){
                                echo "<li>".$data_detail['nama_produk']."</li>";
                            }
                            ?>
                            </ol>
                        </td>
                        <td>
                            <ul style="list-style: none;">
                        <?php
                        include "koneksi.php";
                        $query_detail = mysqli_query($koneksi, "SELECT * FROM detail_transaksi d JOIN produk b ON b.id_produk = d.id_produk
                                            WHERE id_transaksi = '".$data_pembelian['id_transaksi']."'");
                        while($data_detail = mysqli_fetch_array($query_detail)){
                            echo "<li>".$data_detail['qty']."<li>";
                        }
                        ?>
                        </ul>
                    </td>
                    <td>
                        <ul style="list-style: none;">
                        <?php
                            include "koneksi.php";
                            $query_detail = mysqli_query($koneksi, "SELECT * FROM detail_transaksi d JOIN produk b ON b.id_produk = d.id_produk 
                                            WHERE id_transaksi = '".$data_pembelian['id_transaksi']."'");
                            while($data_detail = mysqli_fetch_array($query_detail)){
                                echo "<li>".$data_detail['harga']."</li>";
                            }
                        ?>
                        </ul>
                    </td>
                    <td>
                        <ul style="list-style: none;">
                        <?php
                        include "koneksi.php";
                        $query_detail = mysqli_query($koneksi, "SELECT * FROM detail_transaksi d JOIN produk b ON b.id_produk = d.id_produk
                                            WHERE id_transaksi = '".$data_pembelian['id_transaksi']."'");
                        while($data_detail = mysqli_fetch_array($query_detail)){
                            echo "<li>".($data_detail['harga']*$data_detail['qty'])."<li>";
                        }
                        ?>
                        </ul>
                    </td>
                    <td>
                        <ul style="list-style: none;">
                        <?php
                        include "koneksi.php";
                        $query_bayar = mysqli_query($koneksi, "SELECT SUM(Subtotal) AS total FROM detail_transaksi WHERE id_transaksi = '".$data_pembelian['id_transaksi']."'");
                        $data_bayar = mysqli_fetch_array($query_bayar);
                        echo "<label class='alert alert-secondary'>Rp. ".$data_bayar['total']."</label>";
                        ?>
                        </td>
                        <td>
                            <form action="pembayaran.php" method="POST">
                                <a href="pembayaran.php?id_transaksi=<?= $data_pembelian['id_transaksi']; ?>" class="btn btn-success">Bayar</a>
                            </form>
                        </td>
                    </tr>
                    <?php } ?>
                    </tbody>
                    </table>
                </div>
        </div>
        </div>
    <?php
        include "footer.php";
    ?>
</body>
</html>