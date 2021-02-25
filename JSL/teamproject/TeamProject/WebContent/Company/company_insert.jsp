<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
    	<!--  -->
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>기업 회원가입</title>
        <!-- Bootstrap -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
        <script src="http://code.jquery.com/jquery.js"></script>
        <!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <!-- web icon  https://fontawesome.com/ -->
        <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
       
        <!-- Ajax구현하기 위해 필요 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  <!-- jQuery 사용하기위해서 -->
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"
				integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
				crossorigin="anonymous"></script>
				
				
			
        <script type="text/javascript">
        	function nextlvl(){
        		if(frm.provisionYn.value == "N")   {
        			alert("약관에 동의해주세요.");
        			return;
        		} 	
        		if(frm.memberInfoYn.value == "N")   {
    				alert("약관에 동의해주세요.");
    				return;
    			} 
        		frm.action="/Company?cmd=company_insert&row=1";
        		frm.submit();
        	}
        	
        	function tmp_send(){
        		if(frm.id.value == ""){
      				document.getElementById('idWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 아이디를 입력해주세요.";
      				frm.id.focus();
      				event.preventDefault();
		   			return;
      			}
        		if(frm.email.value =="" ){
      				document.getElementById('emailWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 이메일을 입력해주세요.";
      				frm.email.focus();
      				event.preventDefault();
      				return;
      			} 

      			if(frm.pass.value =="" ){
      				document.getElementById('passWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 비밀번호를 입력해주세요.";
      				frm.pass.focus();
      				event.preventDefault();
      				return;
      			}
      			if(frm.pwcheck.value =="" ){
      				document.getElementById('passchkWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 비밀번호를 확인해주세요.";
      				frm.pwcheck.focus();
      				event.preventDefault();
      				return;
      			}
      			
      			frm.action="/Company?cmd=company_insert&row=2";
        		frm.submit();
        		
        	}
        	function send(){

      			if(frm.name.value =="" ){
      				document.getElementById('nameWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 기업의 이름을 입력해주세요.";
      				frm.name.focus();
      				event.preventDefault();
      				return;
      			}
      			
      			if(frm.workingField.value =="" ){
      				document.getElementById('workingFieldWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 업종을 입력해주세요.";
      				frm.workingField.focus();
      				event.preventDefault();
      				return;
      			} 
      			if(frm.info.value =="" ){
      				document.getElementById('infoWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 기업정보를 입력해주세요.";
      				frm.info.focus();
      				event.preventDefault();
      				return;
      			} 
      			if(frm.publishedDate.value =="" ){
      				document.getElementById('publishedDateWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 기업설립일을 입력해주세요.";
      				frm.publishedDate.focus();
      				event.preventDefault();
      				return;
      			} 
      			if(frm.empnum.value =="" ){
      				document.getElementById('empnumWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 사원수 입력해주세요.";
      				frm.empnum.focus();
      				event.preventDefault();
      				return;
      			}
      			if(frm.capital.value =="" ){
      				document.getElementById('capitalWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 자본금 입력해주세요.";
      				frm.capital.focus();
      				event.preventDefault();
      				return;
      			}
      			if(frm.sales.value =="" ){
      				document.getElementById('salesWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 매출을 입력해주세요.";
      				frm.sales.focus();
      				event.preventDefault();
      				return;
      			}
      			if(frm.postnum.value =="" ){
      				document.getElementById('postnumWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 우편번호 입력해주세요.";
      				frm.postnum.focus();
      				event.preventDefault();
      				return;
      			}
      			if(frm.postnum.value =="" ){
      				document.getElementById('postnumWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 우편번호 입력해주세요.";
      				frm.postnum.focus();
      				event.preventDefault();
      				return;
      			}
      			if(frm.tel.value =="" ){
      				document.getElementById('telWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 전화번호를 입력해주세요.";
      				frm.tel.focus();
      				event.preventDefault();
      				return;
      			}
       			alert( 'success!' );
       			frm.action="/Company?cmd=company_insert_pro";
        		frm.submit();
        	}
        	
        	function pw_Check(){
        		const pw = document.getElementById('password').value;
        		const pwchk = document.getElementById('passwordCheck').value;
        		if(pw != pwchk ){
      				document.getElementById('passchkWarning').style.color = "red";
      				document.getElementById('passchkWarning').innerHTML = "<i class='fas fa-exclamation-circle fa-sm'></i> 비밀번호가 일치하지 않습니다.";
      				event.preventDefault();
      				return ;
      			} else{
      				document.getElementById('passchkWarning').style.color = "blue";
      				document.getElementById('passchkWarning').innerHTML = "비밀번호일치.";
      			
      			}
        	}
        	
        	/*function delwarn(){
        		const tmp = name;
        		;
        	}*/
        </script>
       
       

        
    </head>
  
    <body>
        <div class="container" ><!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
            
          <!--  -->
            <div class="row">
                <p></p>
                <div class="col-md-12">
                    <small>
                    <a href="#">로그인</a> | <a href="#">회원가입</a>
                    </small>
                </div>
            </div>
            <!--// 헤더 들어가는 부분 -->
            <div style=""><h1>기업 회원가입</h1></div>
            <!-- 모달창 -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
            <hr/>
            <!-- 본문 들어가는 부분 -->
                
 
 <c:if test="${row == 0}">
            <form name="frm" class="form-horizontal" role="form" method="post" enctype="multipart/form-data" >
                <div class="form-group">
                    <label for="provision" class="col-lg-2 control-label">회원가입약관</label>
                    <div class="col-lg-10" id="provision">
                        <textarea class="form-control" rows="8" style="resize:none">제 1 장 총 칙

 

제 1 조 (목적)
이 약관은 {COMPANY_NAME}(이하 "사이트"라 합니다)에서 제공하는 인터넷서비스(이하 "서비스"라 합니다)의 이용 조건 및 절차에 관한 기본적인 사항을 규정함을 목적으로 합니다.

 

제 2 조 (약관의 효력 및 변경)
① 이 약관은 서비스 화면이나 기타의 방법으로 이용고객에게 공지함으로써 효력을 발생합니다.
② 사이트는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.

 

제 3 조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
① 회원 : 사이트와 서비스 이용계약을 체결하거나 이용자 아이디(ID)를 부여받은 개인 또는 단체를 말합니다.
② 신청자 : 회원가입을 신청하는 개인 또는 단체를 말합니다.
③ 아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 사이트가 승인하는 문자와 숫자의 조합을 말합니다.
④ 비밀번호 : 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.
⑤ 해지 : 사이트 또는 회원이 서비스 이용계약을 취소하는 것을 말합니다.

 

제 2 장 서비스 이용계약

 

제 4 조 (이용계약의 성립)
① 이용약관 하단의 동의 버튼을 누르면 이 약관에 동의하는 것으로 간주됩니다.
② 이용계약은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 사이트가 승낙함으로써 성립합니다.

 

제 5 조 (이용신청)
① 신청자가 본 서비스를 이용하기 위해서는 사이트 소정의 가입신청 양식에서 요구하는 이용자 정보를 기록하여 제출해야 합니다.
② 가입신청 양식에 기재하는 모든 이용자 정보는 모두 실제 데이터인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스의 제한을 받을 수 있습니다.

 

제 6 조 (이용신청의 승낙)
① 사이트는 신청자에 대하여 제2항, 제3항의 경우를 예외로 하여 서비스 이용신청을 승낙합니다.
② 사이트는 다음에 해당하는 경우에 그 신청에 대한 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.
가. 서비스 관련 설비에 여유가 없는 경우
나. 기술상 지장이 있는 경우
다. 기타 사이트가 필요하다고 인정되는 경우
③ 사이트는 신청자가 다음에 해당하는 경우에는 승낙을 거부할 수 있습니다.
가. 다른 개인(사이트)의 명의를 사용하여 신청한 경우
나. 이용자 정보를 허위로 기재하여 신청한 경우
다. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우
라. 기타 사이트 소정의 이용신청요건을 충족하지 못하는 경우

 

제 7 조 (이용자정보의 변경)
회원은 이용 신청시에 기재했던 회원정보가 변경되었을 경우에는, 온라인으로 수정하여야 하며 변경하지 않음으로 인하여 발생되는 모든 문제의 책임은 회원에게 있습니다.

 

제 3 장 계약 당사자의 의무

 

제 8 조 (사이트의 의무)
① 사이트는 회원에게 각 호의 서비스를 제공합니다.
가. 신규서비스와 도메인 정보에 대한 뉴스레터 발송
나. 추가 도메인 등록시 개인정보 자동 입력
다. 도메인 등록, 관리를 위한 각종 부가서비스
② 사이트는 서비스 제공과 관련하여 취득한 회원의 개인정보를 회원의 동의없이 타인에게 누설, 공개 또는 배포할 수 없으며, 서비스관련 업무 이외의 상업적 목적으로 사용할 수 없습니다. 단, 다음 각 호의 1에 해당하는 경우는 예외입니다.
가. 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우
나. 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우
다. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
③ 사이트는 이 약관에서 정한 바에 따라 지속적, 안정적으로 서비스를 제공할 의무가 있습니다.

 

제 9 조 (회원의 의무)
① 회원은 서비스 이용 시 다음 각 호의 행위를 하지 않아야 합니다.
가. 다른 회원의 ID를 부정하게 사용하는 행위
나. 서비스에서 얻은 정보를 사이트의 사전승낙 없이 회원의 이용 이외의 목적으로 복제하거나 이를 변경, 출판 및 방송 등에 사용하거나 타인에게 제공하는 행위
다. 사이트의 저작권, 타인의 저작권 등 기타 권리를 침해하는 행위
라. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위
마. 범죄와 결부된다고 객관적으로 판단되는 행위
바. 기타 관계법령에 위배되는 행위
② 회원은 관계법령, 이 약관에서 규정하는 사항, 서비스 이용 안내 및 주의 사항을 준수하여야 합니다.
③ 회원은 내용별로 사이트가 서비스 공지사항에 게시하거나 별도로 공지한 이용 제한 사항을 준수하여야 합니다.

 

제 4 장 서비스 제공 및 이용

 

제 10 조 (회원 아이디(ID)와 비밀번호 관리에 대한 회원의 의무)
① 아이디(ID)와 비밀번호에 대한 모든 관리는 회원에게 책임이 있습니다. 회원에게 부여된 아이디(ID)와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 전적인 책임은 회원에게 있습니다.
② 자신의 아이디(ID)가 부정하게 사용된 경우 또는 기타 보안 위반에 대하여, 회원은 반드시 사이트에 그 사실을 통보해야 합니다.

 

제 11 조 (서비스 제한 및 정지)
① 사이트는 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신 사업자가 전기통신서비스를 중지하는 등 기타 불가항력적 사유가 있는 경우에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.
② 사이트는 제1항의 규정에 의하여 서비스의 이용을 제한하거나 정지할 때에는 그 사유 및 제한기간 등을 지체없이 회원에게 알려야 합니다.

 

제5장 계약사항의 변경, 해지

 

제 12 조 (정보의 변경)
회원이 주소, 비밀번호 등 고객정보를 변경하고자 하는 경우에는 홈페이지의 회원정보 변경 서비스를 이용하여 변경할 수 있습니다.

 

제 13 조 (계약사항의 해지)
회원은 서비스 이용계약을 해지할 수 있으며, 해지할 경우에는 본인이 직접 서비스를 통하거나 전화 또는 온라인 등으로 사이트에 해지신청을 하여야 합니다. 사이트는 해지신청이 접수된 당일부터 해당 회원의 서비스 이용을 제한합니다. 사이트는 회원이 다음 각 항의 1에 해당하여 이용계약을 해지하고자 할 경우에는 해지조치 7일전까지 그 뜻을 이용고객에게 통지하여 소명할 기회를 주어야 합니다.
① 이용고객이 이용제한 규정을 위반하거나 그 이용제한 기간 내에 제한 사유를 해소하지 않는 경우
② 정보통신윤리위원회가 이용해지를 요구한 경우
③ 이용고객이 정당한 사유 없이 의견진술에 응하지 아니한 경우
④ 타인 명의로 신청을 하였거나 신청서 내용의 허위 기재 또는 허위서류를 첨부하여 이용계약을 체결한 경우
사이트는 상기 규정에 의하여 해지된 이용고객에 대해서는 별도로 정한 기간동안 가입을 제한할 수 있습니다.

 

제6장 손해배상

 

제 14 조 (면책조항)
① 사이트는 회원이 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.
② 사이트는 회원의 귀책사유나 제3자의 고의로 인하여 서비스에 장애가 발생하거나 회원의 데이터가 훼손된 경우에 책임이 면제됩니다.
③ 사이트는 회원이 게시 또는 전송한 자료의 내용에 대해서는 책임이 면제됩니다.
④ 상표권이 있는 도메인의 경우, 이로 인해 발생할 수도 있는 손해나 배상에 대한 책임은 구매한 회원 당사자에게 있으며, 사이트는 이에 대한 일체의 책임을 지지 않습니다.

 

제 15 조 (관할법원)

 

서비스와 관련하여 사이트와 회원간에 분쟁이 발생할 경우 사이트의 본사 소재지를 관할하는 법원을 관할법원으로 합니다.

 

[부칙]

 

(시행일) 이 약관은 2015년 01월부터 시행합니다.
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
                                동의합니다.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="N">
                                동의하지 않습니다.
                            </label>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="8" style="resize:none">'ㅇㅇㅇㅇ' (이하 '회사'로 표기) 는 고객의 개인정보를 보호하기 위해 노력하고 있으며 통신비밀보호법, 정보통신망 이용촉진 등의 법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통해 고객이 제공하는 개인정보의 용도와 개인정보보호 조치에 대해 알려드립니다.
본 방침은 2018년 07월 01일부터 시행됩니다.
1. 수집하는 개인정보의 항목 및 수집방법
2. 개인정보의 수집 및 이용목적
3. 개인정보의 보유기간, 제공
4. 개인정보 파기절차 및 방법
5. 이용자 및 법정대리인의 권리와 그 행사방법
6. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항
7. 개인정보에 관한 민원 서비스
1. 수집하는 개인정보의 항목 및 수집방법
회사는 회원가입, 상담, 서비스 제공 등을 위해 다음과 같은 개인정보를 수집하고 있습니다.
(1) 수집항목
필수입력항목: 닉네임, ID, 비밀번호, 이메일주소
선택입력항목: 사진, 성별, 생일, 홈페이지주소, 자기소개
비입력항목: 브라우저 종류, 운영체제, 검색어, 서비스 이용 및 방문 기록, IP주소, 쿠키
(2) 수집방법
홈페이지, 게시판, 이메일, 이벤트 응모, 전화
비입력항목 수집 도구를 이용한 수집
2. 개인정보의 수집 및 이용목적
회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
(1) 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금 정산
- 콘텐츠 제공, 물품배송 또는 청구서 등 발송, 구매 및 요금 결제, 금융서비스 및 본인 인증
(2) 회원관리
- 회원제 서비스 이용 및 개인 식별, 불량회원의 부정 이용방지와 비인가 사용방지, 가입의사 확인, 연령 확인, 민원 처리, 고지사항 전달
(3) 마케팅 및 광고, 통계 활용
- 새 서비스 개발 및 서비스 제공, 광고 게재, 이벤트, 광고 제공, 정보 제공, 회원의 서비스 이용 통계 작성
3. 개인정보의 보유기간, 제공
(1) 개인정보 제공
회사는 '2. 개인정보의 수집목적 및 이용목적'에서 알린 범위 내에서 사용하며 이용자의 사전 동의 없이는 범위를 초과하여 사용하거나 외부에 공개, 제공하지 않습니다. 단 다음과 같은 경우에는 예외로 합니다.
- 이용자의 동의를 구한 경우
- 적접한 절차에 의한 정부 수사기관의 요청과 같이 법에 의해 필요하다고 판단되는 경우
(2) 보유기간
개인정보는 서비스를 이용하는 동안 원활한 서비스 이용을 위해 계속 보유하나 회원 탈퇴 신청이나 서비스 중단 등의 상황이 발생할 경우 해당 정보를 바로 파기하거나 외부 공개를 막습니다. 단 다음의 경우에는 명시한 기간 동안 보존합니다.
* 보존항목: ID, 생년월일, 이메일주소
* 보존이유: 서비스 이용의 혼선 방지, 불법적 사용자에 대한 관련 기관 수사협조
* 보존기간: 1년
또한 관계법령에 정한 기간 동안 회원정보를 보관할 수 있습니다.
* 보존항목: 서비스 이용기록, 방문 기록, IP 정보
* 보존이유: 통신비밀보호법
* 보존기간: 3개월
4. 개인정보 파기절차 및 방법
회사는 원칙적으로 앞서 말한 '3-(2) 보유기간'에 해당하지 않은 경우 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.
- 회원의 탈퇴 또는 서비스 중지가 일어날 경우 해당 정보를 파기합니다.
- 종이에 출력된 정보는 분쇄나 소각의 형태로 파기합니다.
- 전자적 파일이나 코드 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
5. 이용자 및 법정대리인의 권리와 그 행사방법
이용자 및 법정 대리인은 언제든지 자신의 정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수 있습니다. 혹은 개인정보관리책임자에게 서면, 전화, 이메일로 연락하시면 바로 처리해드립니다.
6. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항
회사는 서비스 제공을 위해 '쿠키(cookie)'를 사용합니다. 쿠키는 서버가 이용자의 컴퓨터 브라우저에게 보내는 작은 정보로 이용자의 단말기 내 저장장치에 저장됩니다. 회사는 다음의 목적을 위해 쿠키를 사용합니다.
(1) 쿠키의 사용 목적
서비스 이용자나 방문자의 접속 상태 및 기록을 파악하여 좀더 최적화된형 서비스 제공이나 통계 작성에 사용합니다.
(2) 쿠키의 거부
이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 이용자는 웹브라우저에서 옵션을 설정함으로써 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 쿠키의 저장을 거부할 수 있습니다. 단 쿠키의 저장을 거부할 경우에는 서비스 이용에 불편이 발생할 수 있습니다.
- 설정방법 보기(인터넷 익스플로어의 경우) : 웹 브라우저 상단의 '도구' 선택 > 인터넷 옵션 > 개인정보 순으로 선택
7. 개인정보에 관한 민원 서비스
회사는 고객의 개인정보를 보호하고 개인정보와 관련한 민원을 처리하기 위하여 아래와 같이 개인정보관리책임자를 지정해 개인정보를 관리하고 있습니다. 이용자는 개인정보 관련 민원을 관리자에게 신고할 수 있으며, 회사는 빠르게 조치를 취하거나 답변을 드립니다.
* 개인정보관리책임자 성명: 
* 전화번호: 
* 이메일: 
기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
1. 개인분쟁조정위원회 (1336)
2. 정보보호마크인증위원회 (02-580-0533~4)
3. 대검찰청 인터넷범죄수사센터 (02-3480-3600)
4. 경찰청 사이버테러대응센터 (02-392-0330)
사이트에 링크되어 있는 웹사이트에서 개인정보를 수집하는 행위에 대해서는 본 '사이트 개인정보취급방침'이 적용되지 않음을 알려 드립니다.
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked>
                                동의합니다.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="N">
                                동의하지 않습니다.
                            </label>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary" onclick="javascript:nextlvl()">next</button>
                    </div>
                </div>
               </c:if>
               
                <c:if test="${row == 1 }">
                 <form name="frm" class="form-horizontal" role="form" method="post">
                  
                <div>&nbsp;</div>
                 <div><h3><i class="fas fa-chevron-right"></i>&nbsp;기본정보</h3></div>
                 <div>&nbsp;</div>
                <div class="form-group" id="divId">
                    <label for="inputId" class="col-lg-2 control-label">아이디</label>
                    <div class="col-lg-10">
                        <input name="id" value="" type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30" onchange="javascript:document.getElementById('idWarning').innerHTML =''">       
                    </div>
                    <p id="idWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                <div class="form-group" id="divEmail">
                    <label for="inputEmail" class="col-lg-2 control-label">기업 이메일</label>
                    <div class="col-lg-10">
                        <input name="email" value="" type="text" class="form-control" id="email" data-rule-required="true" placeholder="이메일" maxlength="40">
                    </div>
                     <p id="emailWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                <div class="form-group" id="divPassword">
                    <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                    <div class="col-lg-10">
                        <input onchange="pw_Check()" name="pass" value="" type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="20" >
                    </div>
                     <p id="passWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                <div class="form-group" id="divPasswordCheck">
                    <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                    <div class="col-lg-10">
                        <input onchange="pw_Check()" name="pwcheck" value="" type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="20" >
                    </div>
                     <p id="passchkWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
               
                
                
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button  type="submit" class="btn btn-primary" onclick="javascript:tmp_send()">next</button>
                    </div>
                </div>
                </c:if>
                
                <c:if test="${row == 2 }">
                <form name="frm" class="form-horizontal" role="form" method="post" enctype="multipart/form-data" >
                  <input type="hidden" id="id_mailchk" name="id" value="${id}"/>
                  <input type="hidden" id="pw_mailchk" name="pass" value="${pass}"/>
                  <input type="hidden" id="mail" name="mail" value="${email}"/>
                <div>&nbsp;</div>
                <div><h3><i class="fas fa-chevron-right"></i>&nbsp;상세정보</h3></div>
                <div>&nbsp;</div>
                <!--  추가한부분 -->
                 <div class="form-group" id="divName">
                    <label for="input" class="col-lg-2 control-label">기업 이름</label>
                    <div class="col-lg-10">
                        <input name="name" value=""  type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글/일본어만 입력 가능합니다." maxlength="30">
                    </div>
                     <p id="nameWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                <div class="form-group" id="divWorkingField">
                    <label for="inputWorkingField" class="col-lg-2 control-label" >업종</label>
                    <div class="col-lg-10">
                        <input name="workingField" value="" type="text" class="form-control" id="workingField" data-rule-required="true" placeholder="업종" maxlength="30">
                    </div>
                     <p id="workingFieldWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                  <div class="form-group" id="divInfo">
                    <label for="inputInfo" class="col-lg-2 control-label" >회사소개</label>
                    <div class="col-lg-10">
                        <input name="info" value="" type="text" class="form-control" id="info" data-rule-required="true" placeholder="짧은회사소개 140자 이내" maxlength="140">
                    </div>
                    <p id="infoWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                 <div class="form-group" id="divImageFilename">
                    <label for="inputImageFilename" class="col-lg-2 control-label" >회사로고/이미지</label>
                    <div class="col-lg-10">
                        <input style="border:none;" name="imageFilename" type="file" class="form-control" id="imageFilename" data-rule-required="true" placeholder="로고이미지" maxlength="140">
                    </div>
                </div>
                
                 <div class="form-group" id="divWebpage">
                    <label for="inputWebpage" class="col-lg-2 control-label" >회사홈페이지</label>
                    <div class="col-lg-10">
                        <input  name="webPage" value="" type="text" class="form-control" id="Webpage" data-rule-required="true" placeholder="홈페이지" maxlength="100">
                    </div>
                </div>
                <div>&nbsp;</div>
                <div class="form-group" id="divCEO">
                    <label for="inputCEO" class="col-lg-2 control-label" >대표자</label>
                    <div class="col-lg-10">
                        <input name="ceo" value="" type="text" class="form-control" id="ceo" data-rule-required="true" placeholder="대표자" maxlength="20">
                    </div>
                </div>
                
                 <div class="form-group" id="divPublishedDate">
                    <label for="inputPublishedDate" class="col-lg-2 control-label" >설립일</label>
                    <div class="col-lg-10">
                        <input name="publishedDate" value="" type="text" class="form-control" id="publishedDate" data-rule-required="true" placeholder="설립일" maxlength="15">
                    </div>
                    <p id="publishedDateWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                <div class="form-group" id="divEmpnum">
                    <label for="inputEmpnum" class="col-lg-2 control-label" >사원수</label>
                    <div class="col-lg-10">
                        <input name="empnum" value="" type="text" class="form-control" id="empnum" data-rule-required="true" placeholder="사원수" maxlength="15">
                    </div>
                    <p id="empnumWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                <div class="form-group" id="divCapital">
                    <label for="inputCapital" class="col-lg-2 control-label" >자본금</label>
                    <div class="col-lg-10">
                        <input name="capital" value="" type="text" class="form-control" id="capital" data-rule-required="true" placeholder="자본금" maxlength="15">
                    </div>
                    <p id="capitalWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                <div class="form-group" id="divSales">
                    <label for="inputSales" class="col-lg-2 control-label" >매출</label>
                    <div class="col-lg-10">
                        <input name="sales" value="" type="text" class="form-control" id="sales" data-rule-required="true" placeholder="매출" maxlength="15">
                    </div>
                    <p id="salesWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                 <div class="form-group" id="divPostnum">
                    <label for="inputPostnum" class="col-lg-2 control-label" >우편번호</label>
                    <div class="col-lg-10">
                        <input name="postnum" value="" type="text" class="form-control" id="postnum" data-rule-required="true" placeholder="우편번호" maxlength="15">
                    </div>
                    <p id="postnumWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
                
                 <div class="form-group" id="divLoction">
                    <label for="inputLoction" class="col-lg-2 control-label" >본사소재지</label>
                    <div class="col-lg-10">
                        <input name="loction" value="" type="text" class="form-control" id="loction" data-rule-required="true" placeholder="소재지" maxlength="50">
                    </div>
                   
                </div>
                
                <div class="form-group" id="divTel">
                    <label for="inputTel" class="col-lg-2 control-label">대표번호</label>
                    <div class="col-lg-10">
                        <input name="tel" type="text" value="" class="form-control onlyNumber" id="tel" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                    </div>
                    <p id="telWarning" style="color:red;font-size:12px;padding-left:25px;"></p>
                </div>
               <!--  option..... -->
                <div class="form-group">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">기술태그</label>
                    <div class="col-lg-10">
                       <input TYPE="Checkbox" Name="techTag" Value="프론트엔드">프론트엔드</input>
                       <input TYPE="Checkbox" Name="techTag" ID="C1" Value="백엔드">백엔드</input>
                       <input TYPE="Checkbox" Name="techTag" ID="C1" Value="프론트엔드">프론트엔드</input>
                       <input TYPE="Checkbox" Name="techTag" ID="C1" Value="프론트엔드">프론트엔드</input>
                    </div>
                </div>
             
                 
                <div class="form-group">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked> 동의합니다.
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지 않습니다.
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="Y" checked> 동의합니다.
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지 않습니다.
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button id="chkemailB" type="submit" class="btn btn-primary" onclick="javascript:send()">Sign in</button>
                    </div>
                </div>
            </form>
            </c:if>
                <!--// 본문 들어가는 부분 -->
            <hr/>
            <!-- 푸터 들어가는 부분 -->
            
            <div>
                <p class="text-center">
                    <small><strong>JSL Team Project 46ki</strong></small><br>
                    <small>대표 : 홍길동 ㆍ 주소 :  사거리 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 02-123-1234</small><br>
                    <small>Copyrightⓒ test.com All rights reserved.</small>
                </p>
            </div>
            <!--// 푸터 들어가는 부분 -->
        </div>
        
<script type="text/javascript" >
	$("#id").blur(function() {
		var id = $('#id').val();
		$.ajax({
			url : "/Company?cmd=company_idchk&id="+id,
			type : "get",
			success : function(data){
				//alert(data);
				if(data == 1 ){
					$("#idWarning").text(" 이미 사용중인 아이디입니다.");
					$("#idWarning").css("color", "red");
					$("#reg_submit").attr("disabled", true);
				} else {
					if(id == ""){
						
					} else{
						$("#idWarning").css("color", "blue");
						$("#idWarning").text("사용 가능한 아이디입니다.");
					    $("#reg_submit").attr("disabled", false);
					}
				}
			}
			});
		});
	
	
	//이메일인증
	$("#chkemailB").on('click',function() {
			var mail = $('#mail').val();
			var pass = $('#pw_mailchk').val();
			var id = $('#id_mailchk').val();
			$.ajax({
				url : "/Company?cmd=company_emailchk&email="+mail+"&id="+id+"&pass="+pass,
				type : "get",
				success : function(data){
					
				},
				error:function(jqXHR,textStatus,errorThrown ){
					 alert('Exception:'+errorThrown );
				}
	});
	});
</script>
	
    </body>
</html>