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

                </div>
                <div class="row mb-4">
                    <section class="content">
                        <div class="box bg-white">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="scrolledTable">
                                    <div id="listbank_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="dataTables_length" id="listbank_length"><label>Show <select name="listbank_length" aria-controls="listbank" class="form-control input-sm">
                                                            <option value="10">10</option>
                                                            <option value="25">25</option>
                                                            <option value="50">50</option>
                                                            <option value="100">100</option>
                                                        </select> entries</label></div>
                                            </div>
                                            <div class="col-sm-6"></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <table id="listbank" class="table table-bordered table-striped dataTable no-footer" role="grid" aria-describedby="listbank_info">
                                                    <thead>
                                                        <tr class="th_center" role="row">
                                                            <th class="text-center sorting" tabindex="0" aria-controls="listbank" rowspan="1" colspan="1" aria-label="Account Name: activate to sort column ascending" style="width: 441.656px;">Account Name</th>
                                                            <th class="text-center sorting_disabled" rowspan="1" colspan="1" aria-label="Account Level" style="width: 171.859px;">Account Level</th>
                                                            <th class="text-center sorting_asc" tabindex="0" aria-controls="listbank" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Bank Name: activate to sort column descending" style="width: 138.766px;">Bank Name</th>
                                                            <th class="text-right sorting_disabled" rowspan="1" colspan="1" aria-label="Daily Limit Set" style="width: 173.156px;">Daily Limit Set</th>
                                                            <th class="text-right sorting_disabled" rowspan="1" colspan="1" aria-label="Daily Limit Current" style="width: 222.172px;">Daily Limit Current</th>
                                                            <th class="text-right sorting_disabled" rowspan="1" colspan="1" aria-label="Saldo Limit Alert" style="width: 197.438px;">Saldo Limit Alert</th>
                                                            <th class="text-center sorting_disabled" rowspan="1" colspan="1" aria-label="Status" style="width: 81.7656px;">Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr role="row" class="odd">
                                                            <td class=" text-center">DEPO - THIO ANDRI ALS ANDRIAN A </td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">BCA</td>
                                                            <td class=" text-right">75,000,000</td>
                                                            <td class=" text-right">66,929,829</td>
                                                            <td class=" text-right">50,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                        <tr role="row" class="even">
                                                            <td class=" text-center">DEPO - ERLANGGA ARDIANSYAH</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">BNI</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">50,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>

                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td class=" text-center">DEPO - DIKI ARDIANSYAH</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">BRI</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">50,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                        <tr role="row" class="even">
                                                            <td class=" text-center">PENCAIRAN QRIS - KADIONO PUTRA</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">BRI</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">50,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td class=" text-center">AHMAD RAYHAN ALJUFRIE AS RUDAL</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">Dana</td>
                                                            <td class=" text-right">0</td>
                                                            <td class=" text-right">0</td>
                                                            <td class=" text-right">0</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                        <tr role="row" class="even">
                                                            <td class=" text-center">BAKTI MAS ELEKTRONIK</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">E-Wallet</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">80,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td class=" text-center">WD - AGI GUMELAR</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">Line Bank</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">94,193,000</td>
                                                            <td class=" text-right">80,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                        <tr role="row" class="even">
                                                            <td class=" text-center">DEPO - ANA PRATAMA PUTRI</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">MANDIRI</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">50,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td class=" text-center">WD - ERDIUS ZAINUDIN</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">Neo Bank</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">100,000,000</td>
                                                            <td class=" text-right">80,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                        <tr role="row" class="even">
                                                            <td class=" text-center">TELKOMSEL</td>
                                                            <td class=" text-center">Normal</td>
                                                            <td class="text-center sorting_1">Telkomsel</td>
                                                            <td class=" text-right">2,000,000</td>
                                                            <td class=" text-right">975,500</td>
                                                            <td class=" text-right">1,000,000</td>
                                                            <td class=" text-center">
                                                                <font color="green">Active</font>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <div class="dataTables_info" id="listbank_info" role="status" aria-live="polite">Showing 1 to 10 of 11 entries</div>
                                            </div>
                                            <div class="col-sm-7">
                                                <div class="dataTables_paginate paging_simple_numbers" id="listbank_paginate">
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
                                <!-- Modal -->
                                <div class="modal fade" id="myModalEdit" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">×</button>
                                                <h4 id="modal-title-edit" class="modal-title"></h4>
                                            </div>
                                            <div id="modal-body-edit" class="modal-body">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </section>
                </div>
                <div class="row">
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