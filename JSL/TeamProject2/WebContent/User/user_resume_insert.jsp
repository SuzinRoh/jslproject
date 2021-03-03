<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<c:if test="${empty user }">
<script>
	alert("세션이 존재하지 않습니다.");
	location.href = "User?cmd=user_login";
</script>
</c:if>

<c:if test="${row eq 1 }">
<script>
	alert("등록된 이력서가 존재합니다.");
	location.href = "User?cmd=user_resume_view";
</script>
</c:if>

<script>
	function send(){
		
		if(user_resume.resume_gender.value == ""){
			alert("성별을 선택해주세요.");
			user_resume.resume_gender.focus();
			return;
		}
		if(user_resume.resume_education.value == ""){
			alert("학력을 선택해주세요.");
			user_resume.resume_education.focus();
			return;
		}
		if(user_resume.resume_tel.value == ""){
			alert("연락처 입력해주세요.");
			user_resume.resume_tel.focus();
			return;
		}
		if(user_resume.resume_picture_filename.value == ""){
			alert("사진을 첨부해주세요.");
			user_resume.resume_picture_filename.focus();
			return;
		}
		if(user_resume.resume_language.value == ""){
			alert("언어를 선택해주세요.");
			user_resume.resume_language.focus();
			return;
		}
		if(user_resume.resume_career.value == ""){
			alert("경력을 선택해주세요.");
			user_resume.resume_career.focus();
			return;
		}
		if(user_resume.resume_private.value == ""){
			alert("공개여부를 설정해주세요.");
			user_resume.resume_private.focus();
			return;
		}
		if(user_resume.resume_address.value == ""){
			alert("주소를 입력해주세요.");
			user_resume.resume_address.focus();
			return;
		}
		if(user_resume.cover_private.value == "F"){
			 var confirm_test = confirm("자기소개서가 비공개 설정 되어있습니다.\n이력서를 저장하실 경우 자기소개서가 공개로 변경됩니다.");
			    if ( confirm_test == false ) {
			    	alert("공개된 이력서를 선택해주세요.")
			    	user_resume.cover_subject.value = "";
			    	user_resume.cover_num.value = "";
			    	user_resume.cover_private.value = "";
			    	user_resume.cover_window.focus();
			    	return;
			    }
		}
		
		user_resume.submit();
	}
	
	function cover_letter_list(){
		var url = "User?cmd=user_cover_letter_window"// 죽여줘..
		window.open(url, "cover_letter_list", "width=600 height=600");
	}
</script>


<c:if test="${language == 'ja' }">
<script>
	
</script>
</c:if>

<head>

<style type="text/css">

input:invalid {
  border: 3px solid red;
}

</style>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Rapid Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Rapid - v3.0.0
  * Template URL: https://bootstrapmade.com/rapid-multipurpose-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-end fixed-top ">
    <div class="container d-flex justify-content-end">
      <div class="social-links">
        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
        <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
        <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="index.html">Rapid</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="main-nav d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#team">Team</a></li>
          <li class="drop-down"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="drop-down"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li>
          <li><a href="#footer">Contact Us</a></li>
        </ul>
      </nav><!-- .main-nav-->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.html">Home</a></li>
          <li>cover_letter</li>
        </ol>
        <h2>구직자 이력서 등록</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page pt-4">
      <div class="container">
        <p>
          <form name="user_resume"  method="post" enctype="multipart/form-data" action="User?cmd=user_resume_insert_pro">
         <table class="table table-hover">
          <thead>
           <th></th>
          </thead>
           	<tbody>
		  		<tr>
          	<td><b>이　름</b>&emsp;&emsp;<input type="text" name="user_name" value="${user.user_name }" readOnly></td>
          	<input type="hidden" name="user_num" value="${user.user_num }" readOnly>
          		</tr>
          		<tr>
          	<td><b>이메일</b>&emsp;&emsp;<input type="text" name="user_email" value="${user.user_email }" style="width:350px;" readOnly></td>
          		</tr>
          		<tr>
          	<td><b>성　별</b>&emsp;&emsp;<input type="radio" name="resume_gender" value="M"> 남&emsp;&emsp;
		<input type="radio" name="resume_gender" value="F"> 여</td>
          		</tr>
          		<tr>
          	<td><b>학　력</b>&emsp;&emsp;<input type="radio" name="resume_education" value="고등학교 졸업"> 고등학교 졸업&emsp;&emsp;
		<input type="radio" name="resume_education" value="대학 졸업(2,3년)"> 대학 졸업(2,3년)&emsp;&emsp;
		<input type="radio" name="resume_education" value="대학 졸업(4년)"> 대학 졸업(4년)&emsp;&emsp;
		<input type="radio" name="resume_education" value="대학원 졸업"> 대학원 졸업</td>
          		</tr>
          		<tr>
          	<td><b>연락처</b>&emsp;&emsp;<input type="text" pattern="[0-9]+" name="resume_tel" placeholder="'-'은 제외, 숫자만 입력"></td>
          		</tr>
          		<tr>
          	<td><b>사　진</b>&emsp;&emsp;<input type="file" id="pic" name="resume_picture_filename" accept="image/*"/></td>
          		</tr>
          		<tr>
          	<td><b>언　어</b>&emsp;&emsp;<input type="radio" name="resume_language" value="Korean"> 한국어&emsp;&emsp;
		<input type="radio" name="resume_language" value="Japanese"> 일본어&emsp;&emsp;</td>
          		</tr>
          		<tr>
          	<td><b>외국어</b>&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="Japanese"> 일본어&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="English"> 영어&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="French"> 프랑스어&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="Spanish"> 스페인어&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="Russian"> 러시아어&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="Arabic"> 아랍어&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="Chinese"> 중국어&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="German"> 독일어&emsp;&emsp;
		<input type="checkbox" name="resume_foreign_language" value="Portuguese"> 포르투갈어&emsp;&emsp;</td>
          		</tr>
          		<tr>
          	<td><b>경　력</b>&emsp;&emsp;<input type="radio" name="resume_career" value="newcomer"> 신입&emsp;&emsp;
		<input type="radio" name="resume_career" value="career"> 경력&emsp;&emsp;</td>
          		</tr>
          		<tr>
          	<td><b>파　일</b>&emsp;&emsp;<input type="file" name="resume_file"></td>
          		</tr>
          		<tr>
          	<td><b>이력서 공개</b>&emsp;&emsp;<input type="radio" name="resume_private" value="T"> 공개&emsp;&emsp;
		<input type="radio" name="resume_private" value="F"> 비공개</td>
          		</tr>
          		<tr>
          	<td><b>주　소</b>&emsp;&emsp;<input type="text" name="resume_address" style="width:500px;"></td>
          		</tr>
          		<tr>
          	<td><b>자격증</b>&emsp;&emsp;<input type="checkbox" name="resume_certification" value="JLPT_N1"> JLPT N1&emsp;&emsp;
		<input type="checkbox" name="resume_certification" value="JLPT_N2"> JLPT N2&emsp;&emsp;
		<input type="checkbox" name="resume_certification" value="BJT_J1+"> BJT J1+&emsp;&emsp;
		<input type="checkbox" name="resume_certification" value="BJT_J1"> BJT J1&emsp;&emsp;
		<input type="checkbox" name="resume_certification" value="BJT_J2"> BJT J2&emsp;&emsp;
		<input type="checkbox" name="resume_certification" value="Engineer"> 정보처리기사&emsp;&emsp;
		<input type="checkbox" name="resume_certification" value="Industrial Engineer"> 정보처리산업기사&emsp;&emsp;</td>
          		</tr>
          		
          		<tr>
          	<td><b>자기소개서 선택</b>&emsp;&emsp;<input type="button" name="cover_window" value="선택" onClick="cover_letter_list()"> 
          	<input type="text" name="cover_subject" value="" readOnly style="width:500px;">
          	<input type="hidden" name="cover_num" value="" readOnly >
          	<input type="hidden" name="cover_private" value="" readOnly >
          	</td>
          		</tr>
          		
                        </tbody>
                        </table>
		
		<input type=button value="저장" onClick="send()">
		<input type=button value="취소" onClick="history.back()"></div>
          </form>
        </p>
      </div>
    </section>

  </main><!-- End #main -->





  <!-- ======= Footer ======= -->
  <footer id="footer" class="section-bg">
    <div class="footer-top">
      <div class="container">

        <div class="row">

          <div class="col-lg-6">

            <div class="row">

              <div class="col-sm-6">

                <div class="footer-info">
                  <h3>Rapid</h3>
                  <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
                </div>

                <div class="footer-newsletter">
                  <h4>Our Newsletter</h4>
                  <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem.</p>
                  <form action="" method="post">
                    <input type="email" name="email"><input type="submit" value="Subscribe">
                  </form>
                </div>

              </div>

              <div class="col-sm-6">
                <div class="footer-links">
                  <h4>Useful Links</h4>
                  <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#about">About us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Terms of service</a></li>
                    <li><a href="#">Privacy policy</a></li>
                  </ul>
                </div>

                <div class="footer-links">
                  <h4>Contact Us</h4>
                  <p>
                    A108 Adam Street <br>
                    New York, NY 535022<br>
                    United States <br>
                    <strong>Phone:</strong> +1 5589 55488 55<br>
                    <strong>Email:</strong> info@example.com<br>
                  </p>
                </div>

                <div class="social-links">
                  <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                  <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                  <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                  <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                </div>

              </div>

            </div>

          </div>

          <div class="col-lg-6">

            <div class="form">

              <h4>Send us a message</h4>
              <p>Eos ipsa est voluptates. Nostrum nam libero ipsa vero. Debitis quasi sit eaque numquam similique commodi harum aut temporibus.</p>

              <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                <div class="form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validate"></div>
                </div>
                <div class="form-group mt-3">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validate"></div>
                </div>
                <div class="form-group mt-3">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  <div class="validate"></div>
                </div>
                <div class="form-group mt-3">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                  <div class="validate"></div>
                </div>

                <div class="mb-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>
                </div>

                <div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>
              </form>

            </div>

          </div>

        </div>

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Rapid</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Rapid
      -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End  Footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
