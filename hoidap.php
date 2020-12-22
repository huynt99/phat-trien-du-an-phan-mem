<?php
include("header.php");
?>
<style>
   label.error{
    color : red;
    font-size : 12px;
}
.error{
    font-size : 15px;
    width : 100%
}
</style>
<div style="margin-top:70px">
</div>
<div class="container">
<form action="" method="post" id="question">
            <div class="form-question form-custom section-library-bgimg"
                style="margin-bottom:30px;padding-bottom:20px;padding-top:20px">
                <p class="divHead hidden ng-binding"></p>
                <div class="form-question-row">
                    <div class="title-viewdetail"><a><i class="fa fa-paper-plane" aria-hidden="true"></i> GỬI CÂU HỎI
                        </a> (<span style="color:Red;font-size:13px">Những mục (*) là bắt buộc phải nhập</span>)</div>
                    <div class="row form-question-row-main">
                        <div class="col-md-6 col-lg-3">
                            <div class="form-group">
                                <label>Họ tên</label><span style="color:Red;">(*)</span>
                                <input type="text"
                                    class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required"
                                    name="PostUser" id="PostUser" required>
                            </div>
                        </div>


                        <div class="col-md-6 col-lg-3">
                            <div class="form-group">
                                <label>Ngành tuyển sinh</label><span style="color:Red;">(*)</span>
                                <select
                                    class="form-control ng-pristine ng-untouched ng-valid ng-empty"
                                    data-ng-options="c as c.CateName for c in FaqCategories"
                                    name="select">
                                    <option value="" class="" selected="selected">--- Lĩnh vực ---</option>
                                    <option label="Kỹ thuật cơ điện tử" value="object:10">Kỹ thuật cơ điện tử</option>
                                    <option label="Kỹ thuật ô tô" value="object:11">Kỹ thuật ô tô</option>
                                    <option label="Chương trình tiên tiến ngành Kỹ thuật xây dựng" value="object:12">
                                        Chương trình tiên tiến ngành Kỹ thuật xây dựng</option>
                                    <option label="Chương trình tiên tiến ngành Kỹ thuật tài nguyên nước"
                                        value="object:13">Chương trình tiên tiến ngành Kỹ thuật tài nguyên nước</option>
                                    <option label="Kỹ thuật điều khiển và tự động hóa" value="object:14">Kỹ thuật điều
                                        khiển và tự động hóa</option>
                                    <option label="Quản lý xây dựng" value="object:15">Quản lý xây dựng</option>
                                    <option label="Kinh tế" value="object:16">Kinh tế</option>
                                    <option label="Kỹ thuật điện" value="object:17">Kỹ thuật điện</option>
                                    <option label="Thủy văn học" value="object:18">Thủy văn học</option>
                                    <option label="Kỹ thuật cơ sở hạ tầng" value="object:19">Kỹ thuật cơ sở hạ tầng
                                    </option>
                                    <option label="Nhóm ngành Kỹ thuật Cơ khí" value="object:20">Nhóm ngành Kỹ thuật Cơ
                                        khí</option>
                                    <option label="Nhóm ngành Công nghệ thông tin" value="object:21">Nhóm ngành Công
                                        nghệ thông tin</option>
                                    <option label="Công nghệ sinh học" value="object:22">Công nghệ sinh học</option>
                                    <option label="Kỹ thuật hóa học" value="object:23">Kỹ thuật hóa học</option>
                                    <option label="Kỹ thuật môi trường" value="object:24">Kỹ thuật môi trường</option>
                                    <option label="Kỹ thuật cấp thoát nước" value="object:25">Kỹ thuật cấp thoát nước
                                    </option>
                                    <option label="Kỹ thuật tài nguyên nước" value="object:26">Kỹ thuật tài nguyên nước
                                    </option>
                                    <option label="Kỹ thuật xây dựng công trình giao thông" value="object:27">Kỹ thuật
                                        xây dựng công trình giao thông</option>
                                    <option label="Công nghệ kỹ thuật xây dựng" value="object:28">Công nghệ kỹ thuật xây
                                        dựng</option>
                                    <option label="Kỹ thuật xây dựng" value="object:29">Kỹ thuật xây dựng</option>
                                    <option label="Kỹ thuật xây dựng công trình thủy" value="object:30">Kỹ thuật xây
                                        dựng công trình thủy</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6">
                            <div class="form-group">
                                <label>Tiêu đề hỏi</label><span style="color:Red;">(*)</span>
                                <input type="text"
                                    class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required"
                                    name="PostTitle"  id="PostTitle" required>
                            </div>
                        </div>
                    </div>

                    <div class="row form-question-row-main">
                        <div class="col-12 col-lg-3">
                            <div class="row">
                                <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                        <label>Số điện thoại</label><span style="color:Red;">(*)</span>
                                        <input type="text"
                                            class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required"
                                            name="PostUserTel"  id="PostUserTel" required>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                        <label>Email</label><span style="color:Red;">(*)</span>
                                        <input type="text"
                                            class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required"
                                            name="PostUserMail"  id="PostUserMail" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-9">
                            <div class="form-group">
                                <label>Nội dung câu hỏi</label>

                                <textarea class="form-control ng-pristine ng-untouched ng-valid ng-empty" rows="4"
                                    cols="7" style="min-height:122px" name="PostContent"
                                    id="PostContent" required></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12" style="padding:30px 0px;">
                        <table style="width:100%" class="table-submit">
                            <tbody>
                                <tr>
                                    <td style="text-align:center">
                                        <button type="submit" id="submit" class="btn btn btn-primary btn-custom">Gửi câu
                                            hỏi</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </form>
    </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript">
    
$(document).ready(function(){
    var jQuery_1_7_0 = $.noConflict(true);
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
      return arg !== value;
     }, "Value must not equal arg.");
        $("#question").validate({
            rules : {
                PostUser : {
                    required : true,
                },
                PostTitle : {
                    required : true,
                },
                PostContent : {
                    required : true,
      
                },
                PostUserAddress : {
                  required : true,
                  minlength : 10
                },
                PostUserTel : {
                    required: true,
                    minlength: 10,
                    maxlength : 10,
                    digits : true
    
                },
                PostUserMail : {
                    required: true,
                    email: true
                },
                select :  { valueNotEquals: "" }
            },
            messages :{
                select: { valueNotEquals: "Chưa chọn ngành" },
                PostUser : {
                    required : "Chưa nhập họ tên"
                },
                PostUserTel : {
                    required : "Chưa nhập số điện thoại",
                    minlength : "Số điện thoại không đúng quy định",
                    maxlength : "Số điện thoại không đúng quy định",
                    digits : "Số điện thoại không đúng quy định"
                },
                PostUserAddress : "Chưa nhập địa chỉ",
                PostTitle : {
                    required : "Chưa nhập tiêu đề hỏi",
                },
                PostContent : {
                    required : "Chưa nhập câu hỏi",
      
                    },
    
                PostUserMail : {
                    required : "Chưa nhập email",
                    email : "Sai email hoặc không đúng định dạng"
                }
    
    
            }
        });
        $('#question').submit(function(e) {
          e.preventDefault();
            if ($("#question").valid() == false) {
              return false
            } else {
              console.log($(this).serialize());
              $.ajax({
                type: "POST",
                url : "./lib/sendmail.php",
                data : $("#question").serialize(),
                success : function(data){
                  setTimeout(function(){ 
                      $('#submit').css({
                       "display": "none"
                      });
                      alert("gửi email thành công");
                      $('#question').trigger("reset");
                    },2000);
                 
              },
              error:function(){}
              })
      }		
    })
    })
</script>
<?php
include("footer.php");
?>