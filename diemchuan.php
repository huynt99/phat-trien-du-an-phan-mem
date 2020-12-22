<?php
include("header.php");
?>
<main class="main-content">
    <div class="container">
        <div style="margin-top:70px"></div>
        <div class="primary-content">
            <div class="row">
                <?php include("menusinhvien.php");?>
                <div class="col-md-8 col-lg-9 col-main">
                    <div class="row">
                        <div class="col-lg-5" style="margin-bottom: 10px;">Điểm chuẩn trường đại học Thủy Lợi</div>
                    </div>
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
                                    data:{idcoso2:macoso,idnam2:nam},
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
                                    data:{idcoso2:macoso,idnam2:nam},
                                    dataType:"html",
                                    success:function(data){
                                    $("#bangdiem").html(data);
                                }
                                });
                            });
                        });
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
                    <div class="tab active">
                        <table id="example" class="table table-striped table-bordered" width="100%">
                            <thead>
                                <tr>
                                    <th>Stt</th>
                                    <th>Mã ngành</th>
                                    <th>Tên ngành</th>
                                    <th>Tổ hợp môn</th>
                                    <th>Chỉ tiêu</th>
                                    <th width="40px">Điểm chuẩn</th>
                                    <th>Ghi chú</th>
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
                                echo '<td>'.$rowtk['dieukien'].'</td></tr>';
                                $i++;
                            }
                            mysqli_close($conn);
                            ?>
                            </tbody>
                        </table>
                    </div>
                    <h1 style="margin-top:30px">Các tin khác</h1>
                    <div>
                        <ul>
                            <?php
                            require('connect.php');
                                $resultbv = mysqli_query($conn, "SELECT * from baiviet ORDER BY ngaytao DESC LIMIT 3");
                                while ($rowpost = mysqli_fetch_assoc($resultbv)) {
                                 echo '<li><a href="chitiettin.php?idtin='.$rowpost['mabv'].'">'.$rowpost['tieude'].'</a></li>';
                                }
                            ?>
                        </ul>
                    </div>
                </div>              
            </div>
        </div>
    </div>
</main>
<?php
include("footer.php");
?>