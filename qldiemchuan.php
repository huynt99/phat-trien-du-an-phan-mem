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
            <div class="container-fluid" style="overflow: auto;">
            <div class="row">
                        <div class="row col-lg-8" style="margin-bottom: 10px;">
                        <strong>Cơ sở đào tạo :</strong> 
                        <select class="form-control" name="cosodaotao" id="cosodaotao" style="width: 200px; height:30px" tabindex="-1" aria-hidden="true">
                            <?php 
                                require('connect.php');
                                $resultcoso=mysqli_query($conn, "select * from cosodaotao");
                                while($rowcoso = mysqli_fetch_array($resultcoso)){
                                    echo '<option value="'.$rowcoso['macoso'].'" >' .$rowcoso['tencoso']. '</option>';
                                }
                                ?>
                        </select>
                        <script>
                        $(document).ready(function(){
                            $("#cosodaotao").on('change',function(){
                                var macoso=$(this).val();
                                var d=document.getElementById("nam");
                                var nam=d.options[d.selectedIndex].value;
                                $.ajax({
                                    method:"POST",
                                    url:"ajax.php",
                                    data:{idcoso3:macoso,idnam:nam},
                                    dataType:"html",
                                    success:function(data){
                                    $("#bangdiem").html(data);
                                }
                                });
                            });
                            $("#nam").on('change',function(){
                                var nam=$(this).val();
                                var c=document.getElementById("cosodaotao");
                                var macoso=c.options[c.selectedIndex].value;
                                $.ajax({
                                    method:"POST",
                                    url:"ajax.php",
                                    data:{idcoso3:macoso,idnam:nam},
                                    dataType:"html",
                                    success:function(data){
                                    $("#bangdiem").html(data);
                                }
                                });
                            });
                        });
                        function box(id){
                            var val = confirm("Bạn có chắc chắn muốn xóa điểm chuẩn này không ?");
                            if(val==true){
                                location.href="xulyxoadc.php?post="+id;
                            }
                        }
                    </script>
                        </div>
                        <div class="row" style="margin-bottom: 10px;">
                            <strong>Năm:</strong> 
                            <select class="form-control" style="width:100px; height:30px" id="nam" name="nam">
                            <?php
                            require('connect.php');
                            $sqlnam="select distinct nam from diemchuan order by nam desc";
                            mysqli_set_charset($conn, 'UTF8');
                            $resultnam = mysqli_query($conn, $sqlnam);
                            if (mysqli_num_rows($resultnam) > 0) {
                            while ($rownam = mysqli_fetch_assoc($resultnam)) {
                                echo '<option value="' . $rownam['nam'] . '" ><a href="#">' . $rownam['nam'] . '</a></option>';
                            }}
                            mysqli_close($conn);
                            ?> 
                            </select>
                        </div>
                    </div>
            <div>
                <table id="example" class="table table-striped table-bordered" width="100%">
                <thead>
                    <tr>
                        <th>Stt</th>
                        <th>Mã ngành</th>
                        <th>Tên ngành</th>
                        <th>Tổ hợp môn</th>
                        <th>Chỉ tiêu</th>
                        <th>Điểm chuẩn</th>
                        <th>Ghi chú</th>
                        <th>Sửa</th>
                        <th>Xóa</th>
                    </tr>
                </thead>
                <tbody id="bangdiem" name="bangdiem">
                <?php 
                            require('connect.php');
                            $result=mysqli_query($conn, "select * from diemchuan,nganh where diemchuan.manganh=nganh.manganh 
                            and macoso='1' and nam='2020'");
                            $i=1;
                            while($rowtk = mysqli_fetch_array($result)){
                                $manganh=$rowtk['manganh'];
                                echo '<tr><td>'.$i.'</td>';
                                echo '<td>'.$rowtk['manganh'].'</td>';
                                echo '<td>'.$rowtk['tennganh'].'</td>';
                                $resulttohop=mysqli_query($conn, "select * from nganh_tohop,tohop,nganh where nganh_tohop.manganh=nganh.manganh and nganh_tohop.matohop=tohop.matohop and nganh.manganh='$manganh'");
                                $tohopmon="";
                                while($rowtohop = mysqli_fetch_array($resulttohop)){
                                    $tohopmon=$tohopmon.$rowtohop['tentohop'].", ";
                                }
                                echo '<td>'.$tohopmon.'</td>';
                                echo '<td>'.$rowtk['chitieu'].'</td>';
                                echo '<td>'.$rowtk['diem'].'</td>';
                                echo '<td>'.$rowtk['dieukien'].'</td>';
                                echo '<td><a href="suadiem.php?diem='.$rowtk['madiem'].'"><img src="images/edit.gif" border="0"></a></td>';
                                echo '<td><button style="background-color:#ffffff;width:0px;height:0px;"onclick="box('.$rowtk['madiem'].')"><img src="images/deleted.jpg" border="0"></a></td></tr>';
                                $i++;
                            }
                            mysqli_close($conn);
                            ?>
                </tbody>
                </table>
            </div>
            
            </div>
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