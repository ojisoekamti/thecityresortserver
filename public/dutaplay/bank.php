<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description" content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Ample Admin Lite Template by WrapPixel</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    <style>
        .info-bank img {
            width: 100px;
        }

        select {
            width: 150px;

        }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full" data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="dashboard.html">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!-- Dark Logo icon -->
                            <img src="plugins/images/logo-icon.png" alt="homepage" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="plugins/images/logo-text.png" alt="homepage" />
                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <ul class="navbar-nav d-none d-md-block d-lg-none">
                        <li class="nav-item">
                            <a class="nav-toggler nav-link waves-effect waves-light text-white" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav ms-auto d-flex align-items-center">

                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class=" in">
                            <form role="search" class="app-search d-none d-md-block me-3">
                                <input type="text" placeholder="Search..." class="form-control mt-0">
                                <a href="" class="active">
                                    <i class="fa fa-search"></i>
                                </a>
                            </form>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li>
                            <a class="profile-pic" href="#">
                                <img src="plugins/images/users/varun.jpg" alt="user-img" width="36" class="img-circle"><span class="text-white font-medium">Steave</span></a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <?php include('menu.php') ?>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Summary</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">Dashboard</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->

            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <section class="content">
                        <div class="box bg-white">
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/bca.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekbca" class="selRek" onchange="showMutasi('BCA',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="bca|bca|bank|5820428309|DEPO - THIO ANDRI ALS ANDRIAN A ">DEPO - THIO ANDRI ALS ANDRIAN A </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/mandiri.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekmandiri" class="selRek" onchange="showMutasi('MANDIRI',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="mdr|mandiri|bank|1210009822796|DEPO - ANA PRATAMA PUTRI">DEPO - ANA PRATAMA PUTRI</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/bni.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekbni" class="selRek" onchange="showMutasi('BNI',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="bni|bni|bank|1319198775|DEPO - ERLANGGA ARDIANSYAH">DEPO - ERLANGGA ARDIANSYAH</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/bri.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekbri" class="selRek" onchange="showMutasi('BRI',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="bri|bri|bank|7211010170085534|DEPO - DIKI ARDIANSYAH">DEPO - DIKI ARDIANSYAH</option>
                                                        <option value="bri|bri|bank|032801086123507|PENCAIRAN QRIS - KADIONO PUTRA">PENCAIRAN QRIS - KADIONO PUTRA</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/qris.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekqris" class="selRek" onchange="showMutasi('E-Wallet',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="qris|qris|ewallet|081295723312|BAKTI MAS ELEKTRONIK">BAKTI MAS ELEKTRONIK</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/line.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekline" class="selRek" onchange="showMutasi('Line Bank',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="line|line|bank|18014350600|WD - AGI GUMELAR">WD - AGI GUMELAR</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/neo.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekneo" class="selRek" onchange="showMutasi('Neo Bank',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="neo|neo|bank|5859458136510519|WD - ERDIUS ZAINUDIN">WD - ERDIUS ZAINUDIN</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/seabank.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekseabank" class="selRek" onchange="showMutasi('SeaBank',this);">
                                                        <option value="0">.:Bank Tidak Tersedia:.</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/tsel.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRektsel" class="selRek" onchange="showMutasi('Telkomsel',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="tsel|tsel|pulsa|081255206481|TELKOMSEL">TELKOMSEL</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/xl.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekxl" class="selRek" onchange="showMutasi('XL',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="xl|xl|pulsa|087715080375|XL - 087715080375">XL - 087715080375</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/ovo.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekovo" class="selRek" onchange="showMutasi('Ovo',this);">
                                                        <option value="0">.:Bank Tidak Tersedia:.</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/dana.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekdana" class="selRek" onchange="showMutasi('Dana',this);">
                                                        <option value="0">.:Select One:.</option>
                                                        <option value="dana|dana|ewallet|0895347205221|AHMAD RAYHAN ALJUFRIE AS RUDAL">AHMAD RAYHAN ALJUFRIE AS RUDAL</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/gopay.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selRekgopay" class="selRek" onchange="showMutasi('Gopay',this);">
                                                        <option value="0">.:Bank Tidak Tersedia:.</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <div class="info-bank"><img src="./img/linkaja.png"></div>
                                            <div class="info-rekening">
                                                <div>Pilih rekening:</div>
                                                <div>
                                                    <select id="selReklinkaja" class="selRek" onchange="showMutasi('Link Aja',this);">
                                                        <option value="0">.:Bank Tidak Tersedia:.</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.info-box-content -->
                                        </div>
                                        <!-- /.info-box -->
                                    </div>
                                    <!-- /.col -->
                                </div>
                            </div>
                        </div>
                        <!-- /.box -->
                        <div id="showMutasi">
                        </div>
                        <!-- /.box -->
                    </section>
                </div>
                <div class="row mb-4">

                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Filter Search
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show bg-white" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <form class="mb-2">
                                        <div class="row mb-4">
                                            <div class="col">
                                                <select class="form-select" aria-label="Default select example">
                                                    <option selected>Period</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="col">
                                                <select class="form-select" aria-label="Default select example">
                                                    <option selected>Type Payment</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="col">
                                                <select class="form-select" aria-label="Default select example">
                                                    <option selected>Payment Method</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="col">
                                                <select class="form-select" aria-label="Default select example">
                                                    <option selected>Subsidiary</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">

                                            <div class="col-3">
                                                <div class="input-group mb-3">
                                                    <span class="input-group-text" id="basic-addon1">Start
                                                        Date</span>
                                                    <input type="text" class="form-control text-end" placeholder="dd/mm/yyyy" aria-label="Username" aria-describedby="basic-addon1">
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <div class="input-group mb-3">
                                                    <span class="input-group-text" id="basic-addon1">End Date</span>
                                                    <input type="text" class="form-control text-end" placeholder="dd/mm/yyyy" aria-label="Username" aria-describedby="basic-addon1">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="justify-content-end">

                                        <button type="submit" class="btn btn-primary justify-content-end">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">Summary</h3>
                            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                <div class="btn-group me-2" role="group" aria-label="First group">
                                    <button type="button" class="btn btn-primary"><i class="fas fa-file-excel"></i>
                                        Export to Excel</button>
                                    <button type="button" class="btn btn-primary"><i class="fas fa-file-pdf"></i> Export
                                        to Pdf</button>
                                    <button type="button" class="btn btn-primary"><i class="fas fa-file-alt"></i> Export
                                        to Csv</button>
                                </div>
                            </div>

                            <div class="table-responsive">

                                <nav aria-label="...">
                                    <ul class="pagination justify-content-end"">
                                    <li class=" page-item disabled">
                                        <a class="page-link">Previous</a>
                                        </li>
                                        <li class="page-item active "><a class="page-link" href="#">1</a></li>
                                        <li class="page-item " aria-current="page">
                                            <a class="page-link" href="#">2</a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </ul>
                                </nav>
                                <table class="table text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="border-top-0">#</th>
                                            <th class="border-top-0">Date</th>
                                            <th class="border-top-0">Type Payment</th>
                                            <th class="border-top-0">Payment</th>
                                            <th class="border-top-0">Subsidiary</th>
                                            <th class="border-top-0">Account</th>
                                            <th class="border-top-0">Acc. Number</th>
                                            <th class="border-top-0 text-center">In</th>
                                            <th class="border-top-0 text-center">Out</th>
                                            <th class="border-top-0 text-center">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>1/1/2021</td>
                                            <td>Online Bank Transfer</td>
                                            <td>BCA</td>
                                            <td>Dutaplay</td>
                                            <td>ACHMAD AWALUDIN</td>
                                            <td>5310905072</td>
                                            <td class="text-success text-end">Rp 1.000.000</td>
                                            <td class="text-danger text-end">Rp 500.000</td>
                                            <td class="text-success text-end">Rp 500.000</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>1/1/2021</td>
                                            <td>Online Bank Transfer</td>
                                            <td>MANDIRI</td>
                                            <td>Dutaplay</td>
                                            <td>SUNDRO</td>
                                            <td>118-00-1113970-5</td>
                                            <td class="text-success text-end">Rp 1.000.000</td>
                                            <td class="text-danger text-end">Rp 1.000.000</td>
                                            <td class="text-success text-end">Rp 0</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>1/1/2021</td>
                                            <td>Online Bank Transfer</td>
                                            <td>BRI</td>
                                            <td>Dutaplay</td>
                                            <td>ACHMAD AWALUDIN</td>
                                            <td>7311-01-014300-53-7</td>
                                            <td class="text-success text-end">Rp 1.750.000</td>
                                            <td class="text-danger text-end">Rp 500.000</td>
                                            <td class="text-success text-end">Rp 1.250.000</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>1/1/2021</td>
                                            <td>Online Bank Transfer</td>
                                            <td>BNI</td>
                                            <td>Dutaplay</td>
                                            <td>ACHMAD AWALUDIN</td>
                                            <td>1144105730</td>
                                            <td class="text-success text-end">Rp 1.000.000</td>
                                            <td class="text-danger text-end">Rp 1.500.000</td>
                                            <td class="text-danger text-end">Rp 500.000</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>1/1/2021</td>
                                            <td>Online Payment</td>
                                            <td>OVO</td>
                                            <td>Dutaplay</td>
                                            <td>PRIHATIN SANJAYA</td>
                                            <td>168168 081281367416</td>
                                            <td class="text-success text-end">Rp 1.000.000</td>
                                            <td class="text-danger text-end">Rp 500.000</td>
                                            <td class="text-success text-end">Rp 500.000</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="d-flex">
                                    <div class=" w-100">
                                        5 of 1000 row
                                    </div>
                                    <div>
                                        <nav aria-label="...">
                                            <ul class="pagination justify-content-end"">
                                                <li class=" page-item disabled">
                                                    <a class="page-link">Previous</a>
                                                </li>
                                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item " aria-current="page">
                                                    <a class="page-link" href="#">2</a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">Next</a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.js"></script>
</body>

</html>