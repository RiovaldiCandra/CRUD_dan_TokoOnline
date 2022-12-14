<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/nav_style.css">
    <title>Home</title>
</head>
<body>
    <?php include "navbar.php" ?>
<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="../toko_online/foto/oyisam2.jpg" class="d-block w-100 h-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../toko_online/foto/oyisam1.jpg" class="d-block w-100 h-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../toko_online/foto/oyisam3.jpg" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
  </div>
</header>
<main>
<section>
  <br>
  <h2 class="text">Stock Terbatas!!</h2>
  <br>
  <div class="card mb-3">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="../toko_online/foto/5215241516287_337602708161128_7262633715478681489_n.jpg" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
        <h5 class="card-title">OYISAM! Hoodie Jacket</h5>
          <p class="card-text">OYISAM! HOODIE JACKET KODE PESANAN "HOOD LION GREY” IDR 260K SIZE M L XL UNISEX (Lanang kodeW osi)</p>
          <p class="card-text"><small class="text-muted">Last updated 2 day ago</small></p>
        </div>
      </div>
    </div>
  </div>
  <div class="card mb-3">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="../toko_online/foto/7616245209188_1064987234311844_6253992711233969634_n.jpg" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title">OYISAM! Sendal</h5>
          <p class="card-text">OYISAM! Sendal KODE PESANAN "SENDAL THOR” IDR 80 UNISEX </p>
          <p class="card-text"><small class="text-muted">Last updated 2 day ago</small></p>
        </div>
      </div>
    </div>
  </div>
</section>
<br>
<section>
  <h2 class="text">Produk Baru Kami!!</h2>
  <br>
  <div class="card mb-3">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="../toko_online/foto/8378241737705_400010401524872_7047396714592677410_n.jpg" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
        <h5 class="card-title">OYISAM! Arema T-Shirt</h5>
          <p class="card-text">OYISAM! Arema T-Shirt KODE PESANAN "ARTUR” IDR 110K SIZE S M L XL UNISEX (Lanang kodeW osi)</p>
          <p class="card-text"><small class="text-muted">Last updated 1 hour ago</small></p>
        </div>
      </div>
    </div>
  </div>
  <div class="card mb-3">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="../toko_online/foto/4398242986989_913376779277548_8579138041016931239_n(1).jpg" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title">OYISAM! Tas</h5>
          <p class="card-text">OYISAM! Bagpack KODE PESANAN "BAG BLUEGREY” IDR 185K UNISEX </p>
          <p class="card-text"><small class="text-muted">Last updated 1 hour ago</small></p>
        </div>
      </div>
    </div>
  </div>
</section>
</main>
<footer>
  <?php include "footer.php" ?>
</footer>
</body>
</html>