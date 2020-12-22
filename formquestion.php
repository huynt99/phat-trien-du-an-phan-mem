
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<style>
  
label.error{
    color: red;
    font-size: 13px;
}
.error{
    font-size : 15px;
    width : 100%
}
</style>
<div class="title typescale-4 text-center">Đặt câu hỏi mới</div>
<div class="qa-form">
  <form
    method="POST"
    id="question"
    action=""
  >
    <div class="form-group">
      <label>Họ tên</label>
      <input
        type="text"
        class="form-control ng-pristine ng-untouched ng-valid ng-empty"
        id="PostUser"
        name="PostUser" required
      />
    </div>
    <div class="form-group">
      <label >Địa chỉ</label>
      <input
        type="text"
        class="form-control ng-pristine ng-untouched ng-valid ng-empty"
        id="PostUserAddress"
        name="PostUserAddress" required
      />
    </div>
    <div class="form-group">
      <label >Email</label>
      <input
        type="text"
        class="form-control ng-pristine ng-untouched ng-valid ng-empty"
        id="PostUserMail"
        name="PostUserMail" required
      />
    </div>
    <div class="form-group">
      <label >Số điện thoại</label>
      <input
        type="text"
        class="form-control ng-pristine ng-untouched ng-valid ng-empty"
        id="PostUserTel"
        name="PostUserTel" required
      />
    </div>
    <div class="form-group">
      <label required>Ngành tuyển sinh</label>
      <select

      name="select"
        class="form-control ng-pristine ng-untouched ng-valid ng-empty"
        id="mdlCate"
        ><option value="" class="" selected="selected"
          >--- Lĩnh vực ---</option
        ><option label="Kỹ thuật cơ điện tử" value="object:63"
          >Kỹ thuật cơ điện tử</option
        ><option label="Kỹ thuật ô tô" value="object:64"
          >Kỹ thuật ô tô</option
        ><option
          label="Chương trình tiên tiến ngành Kỹ thuật xây dựng"
          value="object:65"
          >Chương trình tiên tiến ngành Kỹ thuật xây dựng</option
        ><option
          label="Chương trình tiên tiến ngành Kỹ thuật tài nguyên nước"
          value="object:66"
          >Chương trình tiên tiến ngành Kỹ thuật tài nguyên nước</option
        ><option
          label="Kỹ thuật điều khiển và tự động hóa"
          value="object:67"
          >Kỹ thuật điều khiển và tự động hóa</option
        ><option label="Quản lý xây dựng" value="object:68"
          >Quản lý xây dựng</option
        ><option label="Kinh tế" value="object:69">Kinh tế</option
        ><option label="Kỹ thuật điện" value="object:70"
          >Kỹ thuật điện</option
        ><option label="Thủy văn học" value="object:71"
          >Thủy văn học</option
        ><option label="Kỹ thuật cơ sở hạ tầng" value="object:72"
          >Kỹ thuật cơ sở hạ tầng</option
        ><option label="Nhóm ngành Kỹ thuật Cơ khí" value="object:73"
          >Nhóm ngành Kỹ thuật Cơ khí</option
        ><option label="Nhóm ngành Công nghệ thông tin" value="object:74"
          >Nhóm ngành Công nghệ thông tin</option
        ><option label="Công nghệ sinh học" value="object:75"
          >Công nghệ sinh học</option
        ><option label="Kỹ thuật hóa học" value="object:76"
          >Kỹ thuật hóa học</option
        ><option label="Kỹ thuật môi trường" value="object:77"
          >Kỹ thuật môi trường</option
        ><option label="Kỹ thuật cấp thoát nước" value="object:78"
          >Kỹ thuật cấp thoát nước</option
        ><option label="Kỹ thuật tài nguyên nước" value="object:79"
          >Kỹ thuật tài nguyên nước</option
        ><option
          label="Kỹ thuật xây dựng công trình giao thông"
          value="object:80"
          >Kỹ thuật xây dựng công trình giao thông</option
        ><option label="Công nghệ kỹ thuật xây dựng" value="object:81"
          >Công nghệ kỹ thuật xây dựng</option
        ><option label="Kỹ thuật xây dựng" value="object:82"
          >Kỹ thuật xây dựng</option
        ><option
          label="Kỹ thuật xây dựng công trình thủy"
          value="object:83"
          >Kỹ thuật xây dựng công trình thủy</option
        ></select
      >
    </div>
    <div class="form-group">
      <label >Tiêu đề hỏi</label>
      <input
        type="text"
        class="form-control ng-pristine ng-untouched ng-valid ng-empty"
        id="PostTitle" 
        name="PostTitle" required
      />
    </div>
    <div class="form-group">
      <label>Câu hỏi</label>
      <textarea
        class="form-control ng-pristine ng-untouched ng-valid ng-empty"
        cols="10"
        rows="4"
        id="PostContent"
        name="PostContent"
        required
      ></textarea>
    </div>
    <table align="center">
      <tbody>
       
        </tr>
        <tr></tr>
      </tbody>
    </table>
    <div style="margin-top: 3px; text-align: center;">
      <button
        type="submit"
        class="btn btn-outline-dark2"
        style="width: 150px; margin-right: 12px;"
        id="send"
      >
        Gửi câu hỏi
      </button>
    </div>
  </form>
</div>
</div>
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