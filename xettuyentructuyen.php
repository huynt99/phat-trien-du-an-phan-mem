<?php
include("header.php");
require('connect.php');
?>
<?php
$sqltinh  = "select * from province ORDER BY _name ASC";
$sqltruong  = "select * from truong";
mysqli_set_charset($conn, 'UTF8');
$resulttinh = mysqli_query($conn, $sqltinh);
$resulttinh1 = mysqli_query($conn, $sqltinh);
$resulttinh2 = mysqli_query($conn, $sqltinh);
$resulttinh3 = mysqli_query($conn, $sqltinh);
$resulttinh4 = mysqli_query($conn, $sqltinh);
$resulttruong = mysqli_query($conn, $sqltruong);
?>
<main class="main-content" style="margin-top:90px">

    <div class="text-center">
        <h2 data-v-f83106a2="" style="color: rgb(39, 23, 86);">PHIẾU ĐĂNG KÝ XÉT TUYỂN 	ĐẠI HỌC CHÍNH QUY</h2>
        <small>(Dành cho thí sinh xét tuyển bằng học bạ)</small>
    </div>
    <div class="row" style="padding-top:15px;padding-bottom:15px">
        <ul class="progressbar">
            <li class="complete ng-scope">Khai báo thông tin thí sinh</li>
            <li class="ng-scope" style="cursor:pointer">Đăng ký nguyện vọng</li>
            <li style="cursor:pointer" class="ng-scope">Nộp tài liệu minh chứng</li>
            <li class="ng-scope">Hoàn thành hồ sơ</li>
        </ul>
    </div>
    <div class="container">
    <div class="col">
        <div class="row">
            <div class="col-sm-12 col-12">
                <div class="admission-title" style="background:#001373">
                    <h4><i class="fa fa-info-circle" aria-hidden="true"></i> THÔNG TIN THÍ SINH</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-8 col-12">
                <label>Họ, chữ đệm và tên của thí sinh:</label>
                <form>
                     <input name="edHoten" id="edHoten" class="form-control" type="text" placeholder="Họ, chữ đệm và tên của thí sinh" >
                </form>
               
            </div>
            <div class="col-sm-6 col-md-4 col-12">
                <label>Giới tính :</label>
                <select id="cbGioitinh" class="form-control" style="width: 100%;" tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option><option label="Nam" value="string:1">Nam</option><option label="Nữ" value="string:0">Nữ</option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-SexId-container"><span class="select2-selection__rendered" id="select2-SexId-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4 col-12">
                <label>Ngày/tháng/năm sinh:</label>
                <input type="date" id="edNgaysinh" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="" >
            </div>
            <div class="col-sm-4 col-12">
                <label>Nơi sinh :</label>
                <select name="tinh" id="cbNoisinh" class="form-control" >
                <option value=""></option>
                <?php
                if (mysqli_num_rows($resulttinh) > 0) {
                while ($rowtinh = mysqli_fetch_assoc($resulttinh)) {
                    echo '<option value="' . $rowtinh['id'] . '" ><a href="#">' . $rowtinh['_name'] . '</a></option>';
                }
                }
                ?> 
                </select>  
             </div>
            <div class="col-sm-4 col-12">
                <label>Dân tộc :</label>
                <select id="cbDantoc" class="form-control" style="width: 100%;" tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option><option label="A-đham (Ê-đê)" value="string:798">A-đham (Ê-đê)</option><option label="A-la Công (Ba-na)" value="string:813">A-la Công (Ba-na)</option><option label="Ao Tá (Mường)" value="string:749">Ao Tá (Mường)</option><option label="A-rem (Chứt)" value="string:948">A-rem (Chứt)</option><option label="Ba-na" value="string:226">Ba-na</option><option label="Biat (Mnông)" value="string:852">Biat (Mnông)</option><option label="Bih (Ê-đê)" value="string:805">Bih (Ê-đê)</option><option label="Blô (Ê-đê)" value="string:802">Blô (Ê-đê)</option><option label="Bồ Khô Pạ (Phù-Lá)" value="string:930">Bồ Khô Pạ (Phù-Lá)</option><option label="Bố Y" value="string:262">Bố Y</option><option label="Bơ-nâm (Ba-na)" value="string:815">Bơ-nâm (Ba-na)</option><option label="Brao (Brâu)" value="string:972">Brao (Brâu)</option><option label="Brâu" value="string:265">Brâu</option><option label="Bri-la (Xơ đăng)" value="string:824">Bri-la (Xơ đăng)</option><option label="Bru (Bru-Vân Kiều)" value="string:860">Bru (Bru-Vân Kiều)</option><option label="Bru-Vân Kiều" value="string:236">Bru-Vân Kiều</option><option label="Bu-đâng (Mnông)" value="string:850">Bu-đâng (Mnông)</option><option label="Ca-dông (Xơ đăng)" value="string:821">Ca-dông (Xơ đăng)</option><option label="Cao (Cơ-tu)" value="string:879">Cao (Cơ-tu)</option><option label="Cao Lan (Sán chay)" value="string:827">Cao Lan (Sán chay)</option><option label="Cao Lan-Sán chỉ (Sán chay)" value="string:826">Cao Lan-Sán chỉ (Sán chay)</option><option label="Ca-tang (Cơ-tu)" value="string:882">Ca-tang (Cơ-tu)</option><option label="Ca-tang (Gié-Triêng)" value="string:891">Ca-tang (Gié-Triêng)</option><option label="Ca-tu (Cơ-tu)" value="string:878">Ca-tu (Cơ-tu)</option><option label="Chà-củi (Chứt)" value="string:953">Chà-củi (Chứt)</option><option label="Chăm" value="string:230">Chăm</option><option label="Chàm (Chăm)" value="string:837">Chàm (Chăm)</option><option label="Chăm Rê (Hrê)" value="string:844">Chăm Rê (Hrê)</option><option label="Châu Mạ (Mạ)" value="string:892">Châu Mạ (Mạ)</option><option label="Châu-ro (Chơ-ro)" value="string:909">Châu-ro (Chơ-ro)</option><option label="Chiêm Thành (Chăm)" value="string:838">Chiêm Thành (Chăm)</option><option label="Chil (Cơ-ho)" value="string:834">Chil (Cơ-ho)</option><option label="Chil (Mnông)" value="string:854">Chil (Mnông)</option><option label="Chom (Hrê)" value="string:845">Chom (Hrê)</option><option label="Chor (Gia-rai)" value="string:790">Chor (Gia-rai)</option><option label="Chơ-rai (Gia-rai)" value="string:787">Chơ-rai (Gia-rai)</option><option label="Chơ-ro" value="string:245">Chơ-ro</option><option label="Chơ-ru (Chu-ru)" value="string:922">Chơ-ru (Chu-ru)</option><option label="Chu (Chu-ru)" value="string:923">Chu (Chu-ru)</option><option label="Chủng Chá (Bố Y)" value="string:964">Chủng Chá (Bố Y)</option><option label="Chu-ru" value="string:249">Chu-ru</option><option label="Chứt" value="string:257">Chứt</option><option label="Co" value="string:243">Co</option><option label="Cơ Lao" value="string:260">Cơ Lao</option><option label="Cò Xung (La-Hủ)" value="string:939">Cò Xung (La-Hủ)</option><option label="Cóc Mùn (Dao)" value="string:783">Cóc Mùn (Dao)</option><option label="Cóc Ngáng (Dao)" value="string:782">Cóc Ngáng (Dao)</option><option label="Cơ-don (Cơ-ho)" value="string:833">Cơ-don (Cơ-ho)</option><option label="Cơ-ho" value="string:229">Cơ-ho</option><option label="Col (Co)" value="string:902">Col (Co)</option><option label="Con Kha (Thổ)" value="string:871">Con Kha (Thổ)</option><option label="Con Lan (Xơ đăng)" value="string:823">Con Lan (Xơ đăng)</option><option label="Cống" value="string:261">Cống</option><option label="ConKđe (Ba-na)" value="string:812">ConKđe (Ba-na)</option><option label="Cor (Co)" value="string:901">Cor (Co)</option><option label="Cơ-tu" value="string:239">Cơ-tu</option><option label="Cu (Khơ-me)" value="string:740">Cu (Khơ-me)</option><option label="Cù Dề Xừ (Si La)" value="string:968">Cù Dề Xừ (Si La)</option><option label="Cù Tê (La-Chi)" value="string:926">Cù Tê (La-Chi)</option><option label="Cùa (Co)" value="string:903">Cùa (Co)</option><option label="Cùi Chu (Giáy)" value="string:876">Cùi Chu (Giáy)</option><option label="Cul (Khơ-me)" value="string:739">Cul (Khơ-me)</option><option label="Cuối (Thổ)" value="string:866">Cuối (Thổ)</option><option label="Cur (Khơ-me)" value="string:738">Cur (Khơ-me)</option><option label="Đại Bản (Dao)" value="string:780">Đại Bản (Dao)</option><option label="Đản (Ngái)" value="string:793">Đản (Ngái)</option><option label="Đan Lai (Thổ)" value="string:868">Đan Lai (Thổ)</option><option label="Dẩng (Giáy)" value="string:874">Dẩng (Giáy)</option><option label="Dao" value="string:222">Dao</option><option label="Dao Đỏ (Dao)" value="string:774">Dao Đỏ (Dao)</option><option label="Dao Tiền (Dao)" value="string:777">Dao Tiền (Dao)</option><option label="Đê (Ê-đê)" value="string:796">Đê (Ê-đê)</option><option label="Đgiéh (Gié-Triêng)" value="string:883">Đgiéh (Gié-Triêng)</option><option label="ĐiPri (Mnông)" value="string:851">ĐiPri (Mnông)</option><option label="Dìu Miền (Dao)" value="string:770">Dìu Miền (Dao)</option><option label="Đliê Ruê (Ê-đê)" value="string:801">Đliê Ruê (Ê-đê)</option><option label="Động (Dao)" value="string:767">Động (Dao)</option><option label="Dơ-ro (Chơ-ro)" value="string:908">Dơ-ro (Chơ-ro)</option><option label="Ê-đê" value="string:225">Ê-đê</option><option label="E-pan (Ê-đê)" value="string:803">E-pan (Ê-đê)</option><option label="Giang (Nùng)" value="string:751">Giang (Nùng)</option><option label="Giang Rẫy Pin (Gié-Triêng)" value="string:885">Giang Rẫy Pin (Gié-Triêng)</option><option label="Gia-rai" value="string:223">Gia-rai</option><option label="Giáy" value="string:238">Giáy</option><option label="Gié-Triêng" value="string:240">Gié-Triêng</option><option label="Giơ-lâng (Ba-na)" value="string:808">Giơ-lâng (Ba-na)</option><option label="Giơ-rai (Gia-rai)" value="string:785">Giơ-rai (Gia-rai)</option><option label="Gơ-lar (Ba-na)" value="string:806">Gơ-lar (Ba-na)</option><option label="Hạ (Cơ-tu)" value="string:880">Hạ (Cơ-tu)</option><option label="Hạ (Hoa)" value="string:736">Hạ (Hoa)</option><option label="Hải Nam (Hoa)" value="string:735">Hải Nam (Hoa)</option><option label="Ha-lăng (Xơ đăng)" value="string:820">Ha-lăng (Xơ đăng)</option><option label="Hán (Hoa)" value="string:731">Hán (Hoa)</option><option label="Hà-nhì" value="string:248">Hà-nhì</option><option label="Hđang (Xơ đăng)" value="string:817">Hđang (Xơ đăng)</option><option label="Hđrung (Gia-rai)" value="string:789">Hđrung (Gia-rai)</option><option label="Hmông" value="string:221">Hmông</option><option label="Họ (Thổ)" value="string:867">Họ (Thổ)</option><option label="Hoa" value="string:217">Hoa</option><option label="Hoa (Hmông)" value="string:760">Hoa (Hmông)</option><option label="Hơ-bau (Gia-rai)" value="string:788">Hơ-bau (Gia-rai)</option><option label="Hờn Bạn (Sán chay)" value="string:829">Hờn Bạn (Sán chay)</option><option label="Hrê" value="string:232">Hrê</option><option label="Hroi (Chăm)" value="string:839">Hroi (Chăm)</option><option label="Ka Bèo (Pu Péo)" value="string:970">Ka Bèo (Pu Péo)</option><option label="Kẹo (Thổ)" value="string:864">Kẹo (Thổ)</option><option label="Khả pẻ (Si La)" value="string:969">Khả pẻ (Si La)</option><option label="Khả Quy (La-Hủ)" value="string:940">Khả Quy (La-Hủ)</option><option label="Kháng" value="string:246">Kháng</option><option label="Khánh Gia (Ngái)" value="string:794">Khánh Gia (Ngái)</option><option label="Khèn Lài (Nùng)" value="string:757">Khèn Lài (Nùng)</option><option label="Khlá Phlạo (La-Ha)" value="string:929">Khlá Phlạo (La-Ha)</option><option label="Khơ-me" value="string:218">Khơ-me</option><option label="Khơ-mú" value="string:242">Khơ-mú</option><option label="Khù Xung (La-Hủ)" value="string:938">Khù Xung (La-Hủ)</option><option label="Kiềm (Dao)" value="string:771">Kiềm (Dao)</option><option label="Kinh" value="string:214">Kinh</option><option label="Kmrâng (Xơ đăng)" value="string:822">Kmrâng (Xơ đăng)</option><option label="Kpạ (Ê-đê)" value="string:797">Kpạ (Ê-đê)</option><option label="Kpăng Công (Ba-na)" value="string:814">Kpăng Công (Ba-na)</option><option label="Krẹ Lũy (Hrê)" value="string:846">Krẹ Lũy (Hrê)</option><option label="Krem (Ba-na)" value="string:810">Krem (Ba-na)</option><option label="Krôm (Khơ-me)" value="string:744">Krôm (Khơ-me)</option><option label="Krung (Ê-đê)" value="string:799">Krung (Ê-đê)</option><option label="Ktul (Ê-đê)" value="string:800">Ktul (Ê-đê)</option><option label="La Quả (La-Chi)" value="string:927">La Quả (La-Chi)</option><option label="La-Chi" value="string:251">La-Chi</option><option label="La-Ha" value="string:252">La-Ha</option><option label="La-Hủ" value="string:254">La-Hủ</option><option label="Lan Tẻn (Dao)" value="string:779">Lan Tẻn (Dao)</option><option label="Lào" value="string:250">Lào</option><option label="Lao (La-Hủ)" value="string:936">Lao (La-Hủ)</option><option label="Lào Bốc (Lào)" value="string:924">Lào Bốc (Lào)</option><option label="Lào Nọi (Lào)" value="string:925">Lào Nọi (Lào)</option><option label="La-oang (Ra-glai)" value="string:858">La-oang (Ra-glai)</option><option label="Lat (Cơ-ho)" value="string:835">Lat (Cơ-ho)</option><option label="La-ve (Gié-Triêng)" value="string:890">La-ve (Gié-Triêng)</option><option label="Lê (Ngái)" value="string:792">Lê (Ngái)</option><option label="Lô Giang (Dao)" value="string:776">Lô Giang (Dao)</option><option label="Lô Lô" value="string:256">Lô Lô</option><option label="Lự" value="string:255">Lự</option><option label="Lừ (Lự)" value="string:941">Lừ (Lự)</option><option label="Ly Hà (Thổ)" value="string:869">Ly Hà (Thổ)</option><option label="Mạ" value="string:241">Mạ</option><option label="Mạ Krung (Mạ)" value="string:896">Mạ Krung (Mạ)</option><option label="Mạ Ngăn (Mạ)" value="string:893">Mạ Ngăn (Mạ)</option><option label="Mạ Tô (Mạ)" value="string:895">Mạ Tô (Mạ)</option><option label="Mạ Xốp (Mạ)" value="string:894">Mạ Xốp (Mạ)</option><option label="Mã-liêng (Chứt)" value="string:947">Mã-liêng (Chứt)</option><option label="Mán (Dao)" value="string:766">Mán (Dao)</option><option label="Mán Cao Lan (Sán chay)" value="string:828">Mán Cao Lan (Sán chay)</option><option label="Mán Quần Cộc (Sán Dìu)" value="string:843">Mán Quần Cộc (Sán Dìu)</option><option label="Màn Thanh (Thái)" value="string:728">Màn Thanh (Thái)</option><option label="Mán Trắng (Hmông)" value="string:765">Mán Trắng (Hmông)</option><option label="Mảng" value="string:258">Mảng</option><option label="Măng Coong (Bru-Vân Kiều)" value="string:862">Măng Coong (Bru-Vân Kiều)</option><option label="Mấng Nhé (Cống)" value="string:962">Mấng Nhé (Cống)</option><option label="Mảng Ư (Mảng)" value="string:957">Mảng Ư (Mảng)</option><option label="May (Chứt)" value="string:945">May (Chứt)</option><option label="Mđhur (Ê-đê)" value="string:804">Mđhur (Ê-đê)</option><option label="Mèo (Hmông)" value="string:758">Mèo (Hmông)</option><option label="Mẹo (Hmông)" value="string:759">Mẹo (Hmông)</option><option label="Mèo Đen (Hmông)" value="string:763">Mèo Đen (Hmông)</option><option label="Mèo Đỏ (Hmông)" value="string:762">Mèo Đỏ (Hmông)</option><option label="Mèo Xanh (Hmông)" value="string:761">Mèo Xanh (Hmông)</option><option label="Miền (Dao)" value="string:772">Miền (Dao)</option><option label="Mnông" value="string:233">Mnông</option><option label="Mọi (Mường)" value="string:747">Mọi (Mường)</option><option label="Mọi Bi (Mường)" value="string:748">Mọi Bi (Mường)</option><option label="Mol (Mường)" value="string:745">Mol (Mường)</option><option label="Mọn (Thổ)" value="string:865">Mọn (Thổ)</option><option label="Mơ-nâm (Xơ đăng)" value="string:819">Mơ-nâm (Xơ đăng)</option><option label="Mu Di (Phù-Lá)" value="string:931">Mu Di (Phù-Lá)</option><option label="Mual (Mường)" value="string:746">Mual (Mường)</option><option label="Mun Di (Lự)" value="string:943">Mun Di (Lự)</option><option label="Mứn Xen (Khơ-mú)" value="string:898">Mứn Xen (Khơ-mú)</option><option label="Mường" value="string:219">Mường</option><option label="Ná Mẻo (Hmông)" value="string:764">Ná Mẻo (Hmông)</option><option label="Ngái" value="string:224">Ngái</option><option label="Ngạn (Tày)" value="string:721">Ngạn (Tày)</option><option label="Người nước ngoài" value="string:268">Người nước ngoài</option><option label="Nguồn" value="string:367">Nguồn</option><option label="Nhắng (Giáy)" value="string:873">Nhắng (Giáy)</option><option label="Nhuồn Duôn (Lự)" value="string:942">Nhuồn Duôn (Lự)</option><option label="Noang (Ra-glai)" value="string:857">Noang (Ra-glai)</option><option label="Nông (Mnông)" value="string:848">Nông (Mnông)</option><option label="Nốp (Cơ-ho)" value="string:832">Nốp (Cơ-ho)</option><option label="Nùng" value="string:220">Nùng</option><option label="Nùng An (Nùng)" value="string:752">Nùng An (Nùng)</option><option label="Nùng Cháo (Nùng)" value="string:754">Nùng Cháo (Nùng)</option><option label="Nùng Lòi (Nùng)" value="string:755">Nùng Lòi (Nùng)</option><option label="Ơ đu" value="string:266">Ơ đu</option><option label="Pa Dí (Tày)" value="string:723">Pa Dí (Tày)</option><option label="Pà Hưng (Pà-thẻn)" value="string:959">Pà Hưng (Pà-thẻn)</option><option label="Pạ Xá (Phù-Lá)" value="string:932">Pạ Xá (Phù-Lá)</option><option label="Pa-co (Ta-ôi)" value="string:906">Pa-co (Ta-ôi)</option><option label="Pa-hi (Ta-ôi)" value="string:907">Pa-hi (Ta-ôi)</option><option label="Pa-leng (Chứt)" value="string:950">Pa-leng (Chứt)</option><option label="Pà-thẻn" value="string:259">Pà-thẻn</option><option label="Pầu Thìn Pu Nà (Giáy)" value="string:875">Pầu Thìn Pu Nà (Giáy)</option><option label="Pen Ti Lô Lô (Pu Péo)" value="string:971">Pen Ti Lô Lô (Pu Péo)</option><option label="Phàn Sinh (Nùng)" value="string:753">Phàn Sinh (Nùng)</option><option label="Phó (Phù-Lá)" value="string:933">Phó (Phù-Lá)</option><option label="Phổ (Phù-Lá)" value="string:934">Phổ (Phù-Lá)</option><option label="Phúc Kiến (Hoa)" value="string:733">Phúc Kiến (Hoa)</option><option label="Phù-Lá" value="string:253">Phù-Lá</option><option label="Phương (Cơ-tu)" value="string:881">Phương (Cơ-tu)</option><option label="Pi Thay (Thái)" value="string:729">Pi Thay (Thái)</option><option label="Pnông (Mnông)" value="string:847">Pnông (Mnông)</option><option label="Pré (Mnông)" value="string:849">Pré (Mnông)</option><option label="Pu Đang (La-Hủ)" value="string:937">Pu Đang (La-Hủ)</option><option label="Pu Péo" value="string:264">Pu Péo</option><option label="Pu Thênh Tềnh (Khơ-mú)" value="string:899">Pu Thênh Tềnh (Khơ-mú)</option><option label="Pụa (Xinh-mun)" value="string:919">Pụa (Xinh-mun)</option><option label="Puộc (Xinh-mun)" value="string:918">Puộc (Xinh-mun)</option><option label="Quần Chẹt (Dao)" value="string:775">Quần Chẹt (Dao)</option><option label="Quần Trắng (Dao)" value="string:773">Quần Trắng (Dao)</option><option label="Quảng Đông (Hoa)" value="string:734">Quảng Đông (Hoa)</option><option label="Quảng Lâm (Kháng)" value="string:917">Quảng Lâm (Kháng)</option><option label="Quý Rim (Nùng)" value="string:756">Quý Rim (Nùng)</option><option label="Ra-clây (Ra-glai)" value="string:855">Ra-clây (Ra-glai)</option><option label="Ra-đê (Ê-đê)" value="string:795">Ra-đê (Ê-đê)</option><option label="Ra-glai" value="string:234">Ra-glai</option><option label="Rai (Ra-glai)" value="string:856">Rai (Ra-glai)</option><option label="Roh (Ba-na)" value="string:811">Roh (Ba-na)</option><option label="Rơ-lam (Mnông)" value="string:853">Rơ-lam (Mnông)</option><option label="Rơ-năm" value="string:267">Rơ-năm</option><option label="Rơ-ngao (Ba-na)" value="string:809">Rơ-ngao (Ba-na)</option><option label="Rục (Chứt)" value="string:946">Rục (Chứt)</option><option label="Sách (Chứt)" value="string:944">Sách (Chứt)</option><option label="Sán chay" value="string:228">Sán chay</option><option label="Sán Chỉ (Sán chay)" value="string:830">Sán Chỉ (Sán chay)</option><option label="Sán Dẻo (Sán Dìu)" value="string:840">Sán Dẻo (Sán Dìu)</option><option label="Sán Dìu" value="string:231">Sán Dìu</option><option label="Si La" value="string:263">Si La</option><option label="Sơn Đầu (Dao)" value="string:784">Sơn Đầu (Dao)</option><option label="Tắc-củi (Chứt)" value="string:954">Tắc-củi (Chứt)</option><option label="Tang (Xơ đăng)" value="string:825">Tang (Xơ đăng)</option><option label="Ta-ôi" value="string:244">Ta-ôi</option><option label="Tareh (Gié-Triêng)" value="string:884">Tareh (Gié-Triêng)</option><option label="Ta-riêng (Gié-Triêng)" value="string:888">Ta-riêng (Gié-Triêng)</option><option label="Tày" value="string:215">Tày</option><option label="Tày (Thái)" value="string:724">Tày (Thái)</option><option label="Tày Dăm (Thái)" value="string:726">Tày Dăm (Thái)</option><option label="Tày Hạt (Ơ đu)" value="string:973">Tày Hạt (Ơ đu)</option><option label="Tày Hay (Khơ-mú)1" value="string:900">Tày Hay (Khơ-mú)1</option><option label="Tày khao (Thái)" value="string:725">Tày khao (Thái)</option><option label="Tày Mười Tây Thanh (Thái)" value="string:727">Tày Mười Tây Thanh (Thái)</option><option label="Tày Pọng (Thổ)" value="string:870">Tày Pọng (Thổ)</option><option label="Thái" value="string:216">Thái</option><option label="Thanh Y (Dao)" value="string:778">Thanh Y (Dao)</option><option label="Thổ" value="string:237">Thổ</option><option label="Thổ (Khơ-me)" value="string:741">Thổ (Khơ-me)</option><option label="Thổ (Tày)" value="string:720">Thổ (Tày)</option><option label="Thổ Đà Bắc (Thái)" value="string:730">Thổ Đà Bắc (Thái)</option><option label="Thù Lao (Tày)" value="string:722">Thù Lao (Tày)</option><option label="Tiểu Bản (Dao)" value="string:781">Tiểu Bản (Dao)</option><option label="Tơ-buăn (Gia-rai)" value="string:786">Tơ-buăn (Gia-rai)</option><option label="Tơ-đra (Xơ đăng)" value="string:818">Tơ-đra (Xơ đăng)</option><option label="Tơ-hung (Chứt)" value="string:952">Tơ-hung (Chứt)</option><option label="Tôi-ôi (Ta-ôi)" value="string:905">Tôi-ôi (Ta-ôi)</option><option label="Tơ-lô (Ba-na)" value="string:807">Tơ-lô (Ba-na)</option><option label="Tống (Pà-thẻn)" value="string:960">Tống (Pà-thẻn)</option><option label="Trại (Dao)" value="string:768">Trại (Dao)</option><option label="Trại (Sán Dìu)" value="string:841">Trại (Sán Dìu)</option><option label="Trại Đất (Sán Dìu)" value="string:842">Trại Đất (Sán Dìu)</option><option label="Trầu (Co)" value="string:904">Trầu (Co)</option><option label="Treng (Gié-Triêng)" value="string:887">Treng (Gié-Triêng)</option><option label="Tri Khùa (Bru-Vân Kiều)" value="string:863">Tri Khùa (Bru-Vân Kiều)</option><option label="Triêng (Gié-Triêng)" value="string:886">Triêng (Gié-Triêng)</option><option label="Triều Châu (Hoa)" value="string:732">Triều Châu (Hoa)</option><option label="Trinh (Cơ-ho)" value="string:836">Trinh (Cơ-ho)</option><option label="Trọng Gia (Bố Y)" value="string:965">Trọng Gia (Bố Y)</option><option label="Tu Dí (Bố Y)" value="string:966">Tu Dí (Bố Y)</option><option label="Tu Dìn (Bố Y)" value="string:967">Tu Dìn (Bố Y)</option><option label="Tu vang (Chứt)" value="string:949">Tu vang (Chứt)</option><option label="U Ni (Hà-nhì)" value="string:920">U Ni (Hà-nhì)</option><option label="U-mo (Chứt)" value="string:955">U-mo (Chứt)</option><option label="Vân Kiều (Bru-Vân Kiều)" value="string:861">Vân Kiều (Bru-Vân Kiều)</option><option label="VaXơ (Phù-Lá)" value="string:935">VaXơ (Phù-Lá)</option><option label="Ve (Gié-Triêng)" value="string:889">Ve (Gié-Triêng)</option><option label="Việt gốc Miên (Khơ-me)" value="string:742">Việt gốc Miên (Khơ-me)</option><option label="Xá (Dao)" value="string:769">Xá (Dao)</option><option label="Xa (Giáy)" value="string:877">Xa (Giáy)</option><option label="Xá Ái (Kháng)" value="string:915">Xá Ái (Kháng)</option><option label="Xá Bung (Kháng)" value="string:916">Xá Bung (Kháng)</option><option label="Xá Cẩu (Khơ-mú)" value="string:897">Xá Cẩu (Khơ-mú)</option><option label="Xá Dẩng (Kháng)" value="string:913">Xá Dẩng (Kháng)</option><option label="Xá Dón (Kháng)" value="string:912">Xá Dón (Kháng)</option><option label="Xá Hốc (Kháng)" value="string:914">Xá Hốc (Kháng)</option><option label="Xá Khao (Kháng)" value="string:910">Xá Khao (Kháng)</option><option label="Xá Khao (La-Ha)" value="string:928">Xá Khao (La-Ha)</option><option label="Xá Lá Vàng (Chứt)" value="string:956">Xá Lá Vàng (Chứt)</option><option label="Xá Lá Vàng (Mảng)" value="string:958">Xá Lá Vàng (Mảng)</option><option label="Xá Lá Vàng (Thổ)" value="string:872">Xá Lá Vàng (Thổ)</option><option label="Xạ Phạng (Hoa)" value="string:737">Xạ Phạng (Hoa)</option><option label="Xá Súa (Kháng)" value="string:911">Xá Súa (Kháng)</option><option label="Xá U Ni (Hà-nhì)" value="string:921">Xá U Ni (Hà-nhì)</option><option label="Xá Xeng (Cống)" value="string:963">Xá Xeng (Cống)</option><option label="Xa-điêng (Xtiêng)" value="string:859">Xa-điêng (Xtiêng)</option><option label="Xắm Khống (Cống)" value="string:961">Xắm Khống (Cống)</option><option label="Xín (Ngái)" value="string:791">Xín (Ngái)</option><option label="Xinh-mun" value="string:247">Xinh-mun</option><option label="Xơ đăng" value="string:227">Xơ đăng</option><option label="Xơ-lang (Chứt)" value="string:951">Xơ-lang (Chứt)</option><option label="Xơ-teng (Xơ đăng)" value="string:816">Xơ-teng (Xơ đăng)</option><option label="Xrê (Cơ-ho)" value="string:831">Xrê (Cơ-ho)</option><option label="Xtiêng" value="string:235">Xtiêng</option><option label="Xuồng (Nùng)" value="string:750">Xuồng (Nùng)</option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-EnthicId-container"><span class="select2-selection__rendered" id="select2-EnthicId-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4 col-12">
                <label>Chứng minh thư nhân dân:</label>
                <input id="edChungminh" type="text" class="form-control"  id="CitizenId" placeholder="Số chứng minh nhân dân hoặc căn cước công dân" >
            </div>
            <div class="col-sm-4 col-12">
                <label>Ngày cấp :</label>
                <input id="edNgaycap" type="date" id="CitizenIdIssueDate" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
            </div>
            <div class="col-sm-4 col-12">
                <label>Nơi cấp :<small>(ghi theo cmnd/cccd)</small></label>
                <input id="edNoicap" type="text" class="form-control " id="CitizenIdIssuePlace" >
            </div>
        </div>
        <!--Hộ khẩu thường trú-->
        <div class="row">
            <div class="col-md-12">
                <div style="border-bottom:1px solid #AAA;padding-top:20px">
                    <label>Hộ khẩu thường trú</label>
                </div>
            </div>
        </div>
     
        <div class="row">
          
            <div class="col-sm-4 col-12">
                <label>Tỉnh/TP :</label>
                 <select name="idnoisinh" id="idnoisinh" class="form-control ">
                <option value=""></option>
                <?php
                 echo "string1";
                if (mysqli_num_rows($resulttinh1) > 0) {
                echo "string";
                while ($rowtinh = mysqli_fetch_assoc($resulttinh1)) {
                    echo '<option value="' . $rowtinh['id'] . '" ><a href="#">' . $rowtinh['_name'] . '</a></option>';
                }
                }
                ?> 
                </select>          
        </div>
            <div class="col-sm-4 col-12">
                <label>Quận/huyện:</label>
                <select id="DistrictId" class="form-control" style="width: 100%;"tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-DistrictId-container"><span class="select2-selection__rendered" id="select2-DistrictId-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
            <div class="col-sm-4 col-12">
                <label>Xã/phường :</label>
                <input id="edXaphuong" type="text" class="form-control "  id="CommunName" >
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-12">
                <label>Thôn/bản/đường phố :</label>
                <input id="edThonban" type="text" class="form-control " id="Address" >
            </div>
        </div>

        <!--Nơi học lớp 10 THPT-->
        <div class="row">
            <div class="col-md-12">
                <div style="border-bottom:1px solid #AAA;padding-top:20px">
                    <label>Nơi học lớp 10 THPT </label><span style="font-size:13px">(Ghi tên trường và nơi trường đóng: huyện (quận), tỉnh (thành phố) và ghi mã tỉnh, mã trường)</span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 col-12">
                <label>Tỉnh/TP :</label>
                <select name="tinh10" id="tinh10" class="form-control ">
                <option value=""></option>
                <?php
                if (mysqli_num_rows($resulttinh2) > 0) {
                while ($rowtinh = mysqli_fetch_assoc($resulttinh2)) {
                    echo '<option value="' . $rowtinh['id'] . '" ><a href="#">' . $rowtinh['_name'] . '</a></option>';
                }
                }
                ?> 
                </select> 
            </div>
            <div class="col-sm-4 col-12">
                <label>Quận/huyện:</label>
                <select name="district10" id="district10" class="form-control " style="width: 100%;" tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-District10Id-container"><span class="select2-selection__rendered" id="select2-District10Id-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
            <div class="col-sm-4 col-12">
                <label>Trường THPT :</label>
                <select id="School10Code" class="form-control " style="width: 100%;" tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-School10Code-container"><span class="select2-selection__rendered" id="select2-School10Code-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
        </div>

        <!--Nơi học lớp 11 THPT-->
        <div class="row">
            <div class="col-md-12">
                <div style="border-bottom:1px solid #AAA;padding-top:20px">
                    <label>Nơi học lớp 11 THPT </label><span style="font-size:13px">(Ghi tên trường và nơi trường đóng: huyện (quận), tỉnh (thành phố) và ghi mã tỉnh, mã trường)</span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 col-12">

                <label>Tỉnh/TP :</label>
                <select name="tinh11" id="tinh11" class="form-control">
                <option value=""></option>
                <?php
                if (mysqli_num_rows($resulttinh3) > 0) {
                while ($rowtinh = mysqli_fetch_assoc($resulttinh3)) {
                    echo '<option value="' . $rowtinh['id'] . '" ><a href="#">' . $rowtinh['_name'] . '</a></option>';
                }
                }
                ?> 
                </select>    
            </div>
            <div class="col-sm-4 col-12">
                <label>Quận/huyện:</label>
                <select  id="district11"  class="form-control" style="width: 100%;"  tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-District11Id-container"><span class="select2-selection__rendered" id="select2-District11Id-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
            <div class="col-sm-4 col-12">
                <label>Trường THPT :</label>
                <select id="School11Code" class="form-control " style="width: 100%;"  tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-School11Code-container"><span class="select2-selection__rendered" id="select2-School11Code-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
        </div>

        <!--Nơi học lớp 12 THPT-->
        <div class="row">
            <div class="col-md-12">
                <div style="border-bottom:1px solid #AAA;padding-top:20px">
                    <label>Nơi học lớp 12 THPT </label><span style="font-size:13px">(Ghi tên trường và nơi trường đóng: huyện (quận), tỉnh (thành phố) và ghi mã tỉnh, mã trường)</span>
                </div>
            </div>
        </div>
      
      
        <div class="row">

            <div class="col-sm-4 col-12">
                <label>Tỉnh/TP :</label>
                <select name="tinh12" id="tinh12" class="form-control">
                <option value=""></option>
                <?php
                if (mysqli_num_rows($resulttinh4) > 0) {
                while ($rowtinh = mysqli_fetch_assoc($resulttinh4)) {
                    echo '<option value="' . $rowtinh['id'] . '" ><a href="#">' . $rowtinh['_name'] . '</a></option>';
                }
                }
                ?>
                <script>
                $(document).ready(function(){
                    $("#district12").on('change',function(){
                        var matruong=$(this).val();
                        $.ajax({
                            method:"POST",
                            url:"ajax.php",
                            data:{idtruong:matruong},
                            dataType:"html",
                            success:function(data){
                            $("#School12Code").html(data);
                        }
                        });
                    }); 
                });
                </script>
                </select>    
            </div>
            <div class="col-sm-4 col-12">
                <label>Quận/huyện:</label>
                <select id="district12"  class="form-control " style="width: 100%;" tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-District12Id-container"><span class="select2-selection__rendered" id="select2-District12Id-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
            <div class="col-sm-4 col-12">
                <label>Trường THPT :</label>
                <select id="School12Code" class="form-control " style="width: 100%;" tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-School12Code-container"><span class="select2-selection__rendered" id="select2-School12Code-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
            </div>
        </div>
        <!--Thông tin liên hệ-->
        <div class="row">
            <div class="col-sm-6 col-12">
                <label>Điện thoại liên lạc :</label>
                <input id="edDienthoai" type="text" class="form-control " id="Mobile" placeholder="Điện thoại liên lạc" >
            </div>
            <div class="col-sm-6 col-12">
                <label>Email:</label>
                <input id="edEmail" type="email" class="form-control " id="Email" placeholder="Email" >
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-12">
                <label>Địa chỉ liên hệ :</label>
                <input id="edDiachi" type="text" class="form-control" id="ContactAddress" placeholder="Địa chỉ liên hệ" required="" >
            </div>
        </div>

        <div class="row" style="padding-bottom:30px">
            <div class="col-sm-4 col-12">
                <label>Năm tốt nghiệp :</label>
                <input id="edNamtotnghiep" type="number" class="form-control" id="GraduateYear" placeholder="Năm tốt nghiệp" required="" >
            </div>
            <div class="col-sm-4 col-12">
                <label>Khu vực ưu tiên:</label>
                <select id="cbKhuvucuutien" class="form-control " style="width: 100%;" ><option value="?" selected="selected"></option><option label="KV1" value="string:KV1">KV1</option><option label="KV2" value="string:KV2">KV2</option><option label="KV2-NT" value="string:KV2-NT">KV2-NT</option><option label="KV3" value="string:KV3">KV3</option></select>
            </div>
            <div class="col-sm-4 col-12">
                <label>Đối tượng ưu tiên (nếu có):</label>
                <select id="cbDoituonguutien" class="form-control" style="width: 100%;" ><option value="" class="" selected="selected">Đối tượng ưu tiên</option><option label="01" value="string:01">01</option><option label="02" value="string:02">02</option><option label="03" value="string:03">03</option><option label="04" value="string:04">04</option><option label="05" value="string:05">05</option><option label="06" value="string:06">06</option><option label="07" value="string:07">07</option></select>
            </div>
        </div>

        <div class="row" style="padding-bottom:30px">
            <div class="col-sm-12 col-12 pull-right">
                <div class="col-12 text-red" style="padding-bottom:20px">
                    Lưu ý: Mỗi CMTND chỉ được lưu 1 lần, vui lòng kiểm tra kỹ các thông tin trước khi đăng ký.
                </div>
                <div class="col-sm-2 col-12">
                    <button id="btnNext" type="button" class="btn btn-block btn-primary btn-lg" style="width:135px;height:40px;font-size:17px;text-transform:uppercase;color:#fff">
                        <i class="fa fa-floppy-o" aria-hidden="true"></i> Tiếp tục
                    </button>
                </div>

            </div>
        </div>
    </div>

    <div id="divnguyenvong" ng-show="item.Id>0" class="">
            <div class="row">
                <div class="col-sm-12 col-12">
                    <div class="admission-title" style="background:#001373" id="aspire">
                        <h4><i class="fa fa-info-circle" aria-hidden="true"></i> THÔNG TIN ĐĂNG KÝ XÉT TUYỂN</h4>
                    </div>
                </div>
            </div>

            <div  class="row">

                <div class="col-md-12">
                    <div id="btnAdd" style="border-bottom:0px solid #AAA;padding-top:10px;margin-bottom: 15px;" >
                        <label><i class="fa fa-plus" aria-hidden="true"></i> Thêm nguyện vọng đăng ký</label>
                    </div>
                </div>
            </div>
            <div>
                <div class="row">
                    <div class="col-sm-6 col-12">
                        <label>Cơ sở đào tạo :</label>
                        
                       <select class="form-control" name="cosodaotao" id="cosodaotao" style="width: 100%;" tabindex="-1" aria-hidden="true">
                            <option value="" selected="selected"></option><?php 
                                require('connect.php');
                                mysqli_set_charset($conn, 'UTF8');
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
                            $("#nganh").on('change',function(){
                                var manganh=$(this).val();

                                $.ajax({
                                    method:"POST",
                                    url:"ajax.php",
                                    data:{idnganh:manganh},
                                    dataType:"html",
                                    success:function(data){
                                    console.log(data);
                                    $("#tohop").html(data);
                                }
                                });
                            });
                            $("#tohop").on('change',function(){
                                var matohop=$(this).val();
                                $.ajax({
                                    method:"POST",
                                    url:"ajax.php",
                                    data:{idtohop:matohop},
                                    dataType:"html",
                                    success:function(data){
                                    $("#mon1").html(data);
                                }
                                });
                            });
                        });
                    </script>
                    </div>
                    <div class="col-sm-6 col-12">
                        <label>Nguyện vọng:</label>
                        <select id="nguyenvong" class="form-control" style="width: 100%;"tabindex="-1" aria-hidden="true"><option value="?" selected="selected"></option><option label="Nguyện vọng 1" value="number:1">Nguyện vọng 1</option></select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-c8tr-container"><span class="select2-selection__rendered" id="select2-c8tr-container" title=""></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4 col-12">
                        <label>Ngành/Nhóm ngành xét tuyển :</label>
                        <select class="form-control" style="width: 100%;" tabindex="-1" name="nganh" id="nganh" aria-hidden="true" onchange="chonnganh();">
                        
                        </select>
                        <script>
                            function chonnganh(){
                                var d=document.getElementById("nganh");
                                var idnganh=d.options[d.selectedIndex].value;
                                document.getElementById("manganh").value = idnganh;
                            }
                            function cacmon(){
                                var a=document.getElementById("tohop");
                                var idtohop=a.options[a.selectedIndex].value;
                                var mon1="Điểm trung bình cả năm môn Toán";
                                var mon2;
                                var mon3;
                                switch (idtohop) {
                                    case '1':
                                        mon2 = "Điểm trung bình cả năm môn Vật lý";
                                        mon3 = "Điểm trung bình cả năm môn Hóa Học";
                                        break;
                                    case '2':
                                        mon2 = "Điểm trung bình cả năm môn Vật lý";
                                        mon3 = "Điểm trung bình cả năm môn Tiếng Anh";
                                        break;
                                    case '3':
                                        mon2 = "Điểm trung bình cả năm môn Vật lý";
                                        mon3 = "Điểm trung bình cả năm môn Sinh Học";
                                        break;
                                    case '4':
                                        mon2 = "Điểm trung bình cả năm môn Hóa Học";
                                        mon3 = "Điểm trung bình cả năm môn Sinh Học";
                                        break;
                                    case '5':
                                        mon2 = "Điểm trung bình cả năm môn Ngữ Văn";
                                        mon3 = "Điểm trung bình cả năm môn Tiếng Anh";
                                        break;
                                    case '6':
                                        mon2 = "Điểm trung bình cả năm môn Hóa Học";
                                        mon3 = "Điểm trung bình cả năm môn Tiếng Anh";
                                        break;
                                    case '7':
                                        mon2 = "Điểm trung bình cả năm môn Sinh Học";
                                        mon3 = "Điểm trung bình cả năm môn Tiếng Anh";
                                        break;
                                    default:
                                        break;
                                }

                                document.getElementById("10mon1").placeholder=mon1;
                                document.getElementById("10mon2").placeholder=mon2;
                                document.getElementById("10mon3").placeholder=mon3;
                                document.getElementById("11mon1").placeholder=mon1;
                                document.getElementById("11mon2").placeholder=mon2;
                                document.getElementById("11mon3").placeholder=mon3;
                                document.getElementById("12mon1").placeholder=mon1;
                                document.getElementById("12mon2").placeholder=mon2;
                                document.getElementById("12mon3").placeholder=mon3;
                            }
                            </script>
                    </div>
                    <div class="col-sm-4 col-12">
                        <label>Mã xét tuyển :</label>
                        <input type="text" class="form-control" id="manganh" placeholder="mã xét tuyển" required="" disabled="">
                    </div>
                    <div class="col-sm-4 col-12">
                        <label>Tổ hợp xét tuyển:</label>
                         <select  class="form-control" style="width: 100%;" tabindex="-1" aria-hidden="true" name="tohop" id="tohop" onchange="cacmon();">
                        </select>
                    </div>
                </div>
                <!--Điểm lớp 10 THPT-->
                <div class="row">
                    <div class="col-sm-4 col-12">
                        <label>Lớp 10 :</label><span class="ng-binding"></span>
                        <input id="10mon1" type="number" max="10" class="form-control" id="GPA10_1" placeholder="Điểm trung bình cả năm môn 1 " required="" >
                    </div>
                    <div class="col-sm-4 col-12">
                        <label>&nbsp;</label><span  class="ng-binding"></span>
                        <input id="10mon2" type="number" max="10" class="form-control" id="GPA10_2" placeholder="Điểm trung bình cả năm môn 2 " required="" >
                    </div>
                    <div class="col-sm-4 col-12">
                        <label>&nbsp;</label><span class="ng-binding"></span>
                        <input id="10mon3" type="number" max="10" class="form-control " id="GPA10_3" placeholder="Điểm trung bình cả năm môn 3 " required="" >
                    </div>
                </div>
                <!--Điểm lớp 11 THPT-->
                <div class="row">
                    <div class="col-sm-4 col-12">
                        <label>Lớp 11 :</label><span class="ng-binding"></span>
                        <input id="11mon1" type="number" max="10" class="form-control"  id="GPA11_1" placeholder="Điểm trung bình cả năm môn 1 " required="" >
                    </div>
                    <div class="col-sm-4 col-12">
                        <label>&nbsp;</label><span class="ng-binding"></span>
                        <input id="11mon2" type="number" max="10" class="form-control" id="GPA11_2" placeholder="Điểm trung bình cả năm môn 2 " required="" >
                    </div>
                    <div class="col-sm-4 col-12">
                        <label>&nbsp;</label><span class="ng-binding"></span>
                        <input id="11mon3" type="number" min="0" max="10" class="form-control" id="GPA11_3" placeholder="Điểm trung bình cả năm môn 3 " required="" >
                    </div>
                </div>
                <!--Điểm lớp 12 THPT-->
                <div class="row">
                    <div class="col-sm-4 col-12">
                        <label>Lớp 12 :</label><span class="ng-binding"></span>
                        <input id="12mon1" type="number" max="10" class="form-control "id="GPA12_1" placeholder="Điểm trung bình cả năm môn 1 " required="">
                    </div>
                    <div class="col-sm-4 col-12">
                        <label>&nbsp;</label><span class="ng-binding"></span>
                        <input id="12mon2" type="number" max="10" class="form-control " id="GPA12_2" placeholder="Điểm trung bình cả năm môn 2 " required="" >
                    </div>
                    <div class="col-sm-4 col-12">
                        <label>&nbsp;</label><span class="ng-binding"></span>
                        <input id="12mon3" type="number" max="10" class="form-control " id="GPA12_3" placeholder="Điểm trung bình cả năm môn 3 " required="">
                    </div>
                </div>
                <div class="row">
                    <div style="padding-top:10px;margin-bottom: 15px;" class="form-group has-success">
                        <label><i class="fa fa-check" aria-hidden="true"></i> Kết quả đăng ký</label>
                    </div>
                    <table class="table table-bordered table-hover ng-hide" style="background-color:white">
                        <tbody><tr style="background-color: bisque;">
                            <th>Nguyện vọng</th>
                            <th>Mã xét tuyển</th>
                            <th>Tổ hợp xét tuyển</th>
                            <th>Trạng thái</th>
                            <th>#</th>
                        </tr>
                    </tbody></table>
                </div>
                <div class="row" style="padding-top:30px">
                    <div class="col-sm-12 col-12 pull-right">
                        <div class="col-sm-3 col-12" style="padding-bottom:20px">
                            <button id="btnSave" type="button" class="btn btn-block btn-primary btn-lg" style="height:40px;font-size:17px;text-transform:uppercase" >
                                <i class="fa fa-floppy-o" aria-hidden="true"></i> Lưu nguyện vọng
                            </button>
                        </div>

                    </div>
                </div>

                <!--End Nguyện vọng-->
            </div>
            <!--Minh chứng-->
            <div id="minhchung" class="col-md-12" >
                <div class="row">
                    <div style="padding-top:10px;margin-bottom: 15px;" class="form-group has-success">
                        <label><i class="fa fa-check" aria-hidden="true"></i> Danh mục file minh chứng </label>
                    </div>
                    <table class="table table-bordered table-hover ng-hide" style="background-color:white">
                        <tbody><tr style="background-color: bisque;">
                            <th>TT</th>
                            <th>Mô tả</th>
                            <th>Tên file</th>
                            <th>Dung lượng</th>
                            <th>#</th>
                        </tr>
                    </tbody></table>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div style="border-bottom:0px solid #AAA;padding-top:10px;margin-bottom: 15px;" >
                            <label><i class="fa fa-plus" aria-hidden="true"></i> Nộp kèm file minh chứng và hoàn thành hồ sơ</label>
                        </div>
                    </div>
                </div>
                <div id="attachfile">

                    <div class="row">
                        <div class="col-md-12" style="padding-top: 30px;">
                            <div>
                                Nộp kèm file minh chứng (ảnh chụp/scan: Phiếu ĐKXT, Học bạ hoặc Đơn xác nhận KQ học tập, Giấy xác nhận hưởng chế độ ưu tiên nếu có).
                            </div>
                            <div class="text-red">
                                Lưu ý: Chỉ chấp nhận file pdf, jpg, jpeg, png. Có thể đính kèm nhiều file
                            </div>
                            <input id="file_input" type="file" id="fileAttach" ngf-select="" ngf-multiple="true" class="form-control " multiple="multiple">
                        </div>
                    </div>

                </div>

                <div class="row" style="padding-top:30px">
                    <div class="col-sm-12 col-12">
                        <div class="col-sm-3 col-12" style="padding-bottom:20px">
                            <button id="btnSaveFile" type="button" class="btn btn-block btn-primary btn-lg" style="height:40px;font-size:17px;text-transform:uppercase" >
                                <i class="fa fa-floppy-o" aria-hidden="true"></i> Lưu file minh chứng
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
     <div id="output"></div>
    <script type="text/javascript">
            $("#idnoisinh").change (function(){
           var id = $(this).val();
        
           $.get("district.php",{idprovince:id},function(data){
            $("#DistrictId").html(data);
          

        });
       });

            $("#tinh10").change (function(){
             var id = $(this).val();
             console.log(id)
             $.get("district.php",{idprovince:id},function(data){
                $("#district10").html(data);

            });
         });

            $("#district10").change (function(){
             var id = $(this).val();
            
             $.get("truong.php",{iddistrict:id},function(data){

                $("#School10Code").html(data);


            });
         });

            $("#tinh11").change (function(){
             var id = $(this).val();
             console.log(id)
             $.get("district.php",{idprovince:id},function(data){
                $("#district11").html(data);

            });
         });

             $("#district11").change (function(){
             var id = $(this).val();
            
             $.get("truong.php",{iddistrict:id},function(data){

                $("#School11Code").html(data);


            });
         });

               $("#tinh12").change (function(){
             var id = $(this).val();
             console.log(id)
             $.get("district.php",{idprovince:id},function(data){
                $("#district12").html(data);

            });
         });
                $("#district12").change (function(){
             var id = $(this).val();
            
             $.get("truong.php",{iddistrict:id},function(data){

                $("#School12Code").html(data);

            });
         });

         document.getElementById("divnguyenvong").setAttribute("hidden","");
         document.getElementById("minhchung").setAttribute("hidden","");

        
         var mathisinh = 1;

         var emails = "";

         $(document).ready(function() {
        
            $("#btnNext").click(function(){
                 
               var hoten = $('#edHoten').val();
               var gioitinh = $('#cbGioitinh option:selected').text();
               var ngaysinh = $('#edNgaysinh').val();
               var idtinh = $('#cbNoisinh option:selected').val();
               var dantoc = $('#cbDantoc option:selected').text();
               var ngaycap = $('#edNgaycap').val();
               var chungminhthu = $('#edChungminh').val();
               var noicap = $('#edNoicap').val();
               var huyen = $('#DistrictId option:selected').val();
               var truong10 = $('#School10Code option:selected').val();
               var truong11 = $('#School11Code option:selected').val();
               var truong12 = $('#School12Code option:selected').val();
               var email = $('#edEmail').val();
               emails = email;
               var diachi = $('#edDiachi').val();
               var xaphuong = $('#edXaphuong').val();
               var thonban = $('#edThonban').val();
               var dienthoai = $('#edDienthoai').val();
               var namtotnghiep = $('#edNamtotnghiep').val();
               var khuvucuutien = $('#cbKhuvucuutien option:selected').text();
               var doituonguutien = $('#cbDoituonguutien option:selected').text();
               
               

               $.post("dangkytuyensinh.php",{hoten:hoten,gioitinh:gioitinh,ngaysinh:ngaysinh,tinh:idtinh,dantoc:dantoc,ngaycap:ngaycap,chungminhthu:chungminhthu,noicap:noicap,idhuyen:huyen,idtruong10:truong10,idtruong11:truong11,idtruong12:truong12,email:email,diachi:diachi,xaphuong:xaphuong,dienthoai:dienthoai,namtotnghiep:namtotnghiep,khuvucuutien:khuvucuutien,doituonguutien:doituonguutien,thonban:thonban},function(data){
               
                if(data != -1){
                 mathisinh = data;
                 document.getElementById("divnguyenvong").removeAttribute("hidden");
                 
                 
             }else{
                 alert("Có lỗi xảy ra");
             }
                });

            });
                 
            
        });


         $(document).ready(function() {
        
            $("#btnSave").click(function(){
                 
               var manganh = $('#manganh').val();
               var tohop = $('#tohop option:selected').val();
               var nguyenvong = $('#nguyenvong option:selected').text();
               var diem10mon1 = $('#10mon1').val();
               var diem10mon2 = $('#10mon2').val();
               var diem10mon3 = $('#10mon3').val();
               var diem11mon1 = $('#11mon1').val();
               var diem11mon2 = $('#11mon2').val();
               var diem11mon3 = $('#11mon3').val();
               var diem12mon1 = $('#12mon1').val();
               var diem12mon2 = $('#12mon2').val();
               var diem12mon3 = $('#12mon3').val();
              
              


               $.post("dangkynguyenvong.php",{tennguyenvong:nguyenvong,maxettuyen:manganh,matohop:tohop,mathisinh:mathisinh,diem10mon1:diem10mon1,diem10mon2:diem10mon2,diem10mon3:diem10mon3,diem11mon1:diem11mon1,diem11mon2:diem11mon2,diem11mon3:diem11mon3,diem12mon1:diem12mon1,diem12mon2:diem12mon2,diem12mon3:diem12mon3},function(data){    
                    
                if(data != -1){
               
                 alert("Lưu thành công");
                 document.getElementById("minhchung").removeAttribute("hidden");
                 
             }else{
                 alert("Có lỗi xảy ra");
             }
                });

            });
                 
            
        });

         $(document).ready(function() {
        
            $("#btnSaveFile").click(function(){
                
                var formData = new FormData();
                var filesLength=document.getElementById('file_input').files.length;
                for(var i=0;i<filesLength;i++){
                    formData.append("file[]", document.getElementById('file_input').files[i]);
                    console.log(document.getElementById('file_input').files[i].name);
                }

                
                $.ajax({
                 url: 'upload_cmt.php',
                 type: 'POST',
                 data: formData,
                 contentType: false,
                 cache: false,
                 processData: false,
                 success: function (html) {

                    for(var i=0;i<filesLength;i++){
                        var filename = document.getElementById('file_input').files[i].name;
                        $.post("themchungminh.php",{mathisinh:mathisinh,url:filename},function(data){    

                        });

                        if(i == filesLength-1){
                            $.post("createqr.php",{qrContent:mathisinh,email:emails},function(data){    
                                console.log(data);
                                alert("Đăng ký thành công, kiểm tra email của bạn");
                            });

                        }
                    }
                    }
                });
            });
                 
        

        });
   </script>
   
</main>
<?php
include("footer.php")
?>