<?php
    require('connect.php');
    if(isset($_POST['id'])){
        $id=$_POST['id'];
        $result=mysqli_query($conn, "select * from quan where matinh='$id' order by tenquan");
        echo '<option value="" ></option>';
        while($row = mysqli_fetch_array($result)){
            echo '<option value="'.$row['maquan'].'" >' .$row['tenquan']. '</option>';
        }
    }
    if(isset($_POST['idtruong'])){
        $id=$_POST['idtruong'];
        $result=mysqli_query($conn, "select * from truong where idhuyen='$id' order by tentruong");
        echo '<option value="" ></option>';
        while($row = mysqli_fetch_array($result)){
            echo '<option value="'.$row['id'].'" >' .$row['tentruong']. '</option>';
        }
    }


    if(isset($_POST['idnam'])&isset($_POST['idcoso3'])){
        $nam=$_POST['idnam'];
        $macoso=$_POST['idcoso3'];
        
        $result=mysqli_query($conn, "select * from diemchuan,nganh where diemchuan.manganh=nganh.manganh 
        and macoso='$macoso' and nam='$nam'");
        $i=1;
        while($rowtk = mysqli_fetch_array($result)){
            $manganh=$rowtk['manganh'];
            echo '<tr><td>'.$i.'</td>';
            echo '<td>'.$manganh.'</td>';
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
    }


    if(isset($_POST['idnam2'])&isset($_POST['idcoso2'])){
        $nam=$_POST['idnam2'];
        $macoso=$_POST['idcoso2'];
        $result=mysqli_query($conn, "select * from diemchuan,nganh where diemchuan.manganh=nganh.manganh 
        and macoso='$macoso' and nam='$nam'");
        $i=1;
        while($rowtk = mysqli_fetch_array($result)){
            $manganh=$rowtk['manganh'];
            echo '<tr><td>'.$i.'</td>';
            echo '<td>'.$manganh.'</td>';
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
    }
    if(isset($_POST['idcoso'])){
        $macoso=$_POST['idcoso'];
        $result=mysqli_query($conn, "select * from nganh where macoso='$macoso'");
        echo '<option value="" ></option>';
        while($row = mysqli_fetch_array($result)){
            echo '<option value="'.$row['manganh'].'" >' .$row['tennganh']. '</option>';
        }
    }
    if(isset($_POST['idnganh'])){
        $manganh=$_POST['idnganh'];
        $result=mysqli_query($conn, "select * from nganh_tohop,tohop where manganh='$manganh' and nganh_tohop.matohop=tohop.matohop");
        echo '<option value="" ></option>';
        while($row = mysqli_fetch_array($result)){
            echo '<option value="'.$row['matohop'].'" >' .$row['tentohop']. '</option>';
        }
    }
    if(isset($_POST['idchude'])){
        $chude=$_POST['idchude'];
        if($chude=="all"){
            $resultpost=mysqli_query($conn, "select * from baiviet");
        }
        else {
            $resultpost=mysqli_query($conn, "select * from baiviet where chude='$chude'");
        }
        while ($rowpost = mysqli_fetch_assoc($resultpost)) {
            echo '<tr><td><a href="suabv.php?post='.$rowpost['mabv'].'"><img src="images/edit.gif" border="0"></a></td>';
            echo '<td><button style="background-color:#ffffff;width:0px;height:0px;"onclick="box('.$rowpost['mabv'].')"><img src="images/deleted.jpg" border="0"></button></td>';
            echo '<td>'.$rowpost['mabv'].'</td>';
            echo '<td>'.$rowpost['tieude'].'</td>';
            echo '<td><img src="'.$rowpost['anh'].'" width="150px" height="150px"></td>';
            echo '<td>'.$rowpost['tomtat'].'</td>';
            echo '<td>'.$rowpost['ngaytao'].'</td></tr>';
          }
    }
    mysqli_close($conn);
?>
