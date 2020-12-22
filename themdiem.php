<?php
session_start();
if(empty($_SESSION['matk'])){ header('Location: login.php');}
include("head.php");
$matk=$_SESSION['matk'];
require('connect.php');
$row = mysqli_fetch_assoc(mysqli_query($conn, "Select * from taikhoan where matk = '$matk'"));

?>
<body id="page-top">
    <div id="wrapper">
    <?php include("menu.php");?>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <nav class="navbar navbar-light navbar-expand-md">
                            <div class="container-fluid"><a class="navbar-brand" href="qldiemchuan.php">Điểm chuẩn</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                                <div class="collapse navbar-collapse"
                                    id="navcol-2">
                                    <ul class="nav navbar-nav">
                                        <li class="nav-item" role="presentation"><a class="nav-link active" href="themdiem.php">Thêm điểm chuẩn</a></li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown no-arrow" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small"><?php echo $row['tentk']?></span><img class="border rounded-circle img-profile" src="images/avatar5.jpeg"></a>
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu"><a class="dropdown-item" role="presentation" href="hoso.php"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                    <div class="dropdown-divider"></div><a class="dropdown-item" role="presentation" href="logout.php"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a></div>
                                </div>
                            </li>
                        </ul>
            </div>
            </nav>
            <form class="form-register" method="POST" action="xulythemdiem.php">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-4 col-12">
                            <label>Cơ sở đào tạo:</label>
                            <select class="form-control" name="cosodaotao" id="cosodaotao"style="width: 100%;" tabindex="-1" aria-hidden="true" onchange="chonnganh();" >
                                <option value="" ></option>
                                <?php 
                                require('connect.php');
                                $resultnganh=mysqli_query($conn, "select * from cosodaotao");
                                while($rownganh = mysqli_fetch_array($resultnganh)){
                                    echo '<option value="'.$rownganh['macoso'].'" >' .$rownganh['tencoso']. '</option>';
                                }
                                ?>
                            </select>
                        </div>
                        <div class="col-sm-4 col-12">
                            <label>Ngành:</label>
                            <script>
                                function chonnganh(){
                                    var d=document.getElementById("nganh");
                                    var idnganh=d.options[d.selectedIndex].value;
                                    document.getElementById("manganh").value=idnganh;
                            }
                            </script>
                            <select class="form-control" name="nganh" id="nganh"style="width: 100%;" tabindex="-1" aria-hidden="true" onchange="chonnganh();" >

                            </select>
                            <script>
                            $(document).ready(function(){
                                $("#cosodaotao").on('change',function(){
                                    var macoso=$(this).val();
                                    $.ajax({
                                        method:"POST",
                                        url:"ajax.php",
                                        data:{idcoso:macoso},
                                        dataType:"html",
                                        success:function(data){
                                        $("#nganh").html(data);
                                    }
                                    });
                                });
                            });
                            </script>
                        </div>
                        <div class="col-sm-4 col-12">
                            <label>Mã ngành:</label>
                            <input id ="manganh" name ="manganh" type="text" class="form-control" placeholder="mã ngành" required="" disabled="">
                            
                        </div>
                    </div>
                    <h6 style="color: rgb(0,0,0);">Năm</h6>
                    <input type="number" max="2020" min="2010" class="form-control" name="nam" id="nam" required autofocus>
                    <h6 style="color: rgb(0,0,0);">Chỉ tiêu</h6>
                    <input type="number" max="5000" min="1000" class="form-control" name="chitieu" id="chitieu" required autofocus>
                    <h6 style="color: rgb(0,0,0);">Điểm chuẩn</h6>
                    <input type="number" step="0.05" max="30" min="0" class="form-control" name="diemchuan" id="diemchuan" required autofocus>
                    <h6 style="color: rgb(0,0,0);">Điều kiện</h6>
                    <input type="text"class="form-control" name="dieukien" id="dieukien">
                <hr><div><button class="btn btn-primary" type="submit"id="taotk" name="taotk" style="width: 155px;">Thêm điểm chuẩn</button>
                <a class= "a_back" href="qldiemchuan.php"><button class="btn btn-primary" type="button">Thoát</button></a></div>
                </div>
            </form>
        </div>
        <footer class="bg-white sticky-footer">
            <div class="container my-auto">
                <div class="text-center my-auto copyright"><span>Copyright © Brand 2019</span></div>
            </div>
        </footer>
    </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>

</body>

<?php
include("foot.php");
?>