<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function openLogin(){
	window.open('loginForm.do','login','width=500,height=350')
}	
</script>
</head>
<body>
<c:if test="${empty sid }">
<div><a href="javascript:openLogin();">로그인</a>|<a href="memberJoin.do">회원가입</a></div>
</c:if>
<c:if test="${not empty sid }">
${sessionScope.sname }님 로그인중..|
<a href="logout.do">로그아웃</a>
</c:if>
<h1>메인페이지입니다.</h1>
<ul>
	<li><a href="bbsList.do">마지막 게시판</a></li>
	<li><a href="emp.do">마지막 사원관리 프로그램</a></li>
	<li><a href="imgList.do">spring 이미지 게시판</a></li>
	<li><a href="fileDownList.do">파일 다운로드 리스트</a></li>
	<li><a href="fileUploadForm.do">파일 업로드 테스트</a></li>
	<li><a href="hello.do">Spring MVC</a></li>
	<li><a href="memoWrite.do">메모작성</a></li>
	<li><a href="productOrder.do">상품 발주</a></li>
	<c:url var="paramTest" value="paramTest.do">
		<c:param name="str">spring</c:param>
		<c:param name="idx">3</c:param>
	</c:url>
	<li><a href="${paramTest }">파라미터 테스트</a></li>
	<li><a href="cookieMake.do">쿠키 생성하기</a></li>
	<li><a href="cookieView.do">쿠키 확인하기</a></li>
	<li><a href="sessionMake.do">세션 생성하기</li>
	<li><a href="sessionView.do">세션 확인하기</a></li>
	<li><a href="viewTest1.do">명시적 뷰 지정방법</a></li>
	<li><a href="view/viewOk.do">묵시적 뷰 지정방법</a></li>
	<li><a href="viewTest3.do">컨트롤러에서 다른 명령어 호출</a></li>
	<li><a href="modelTest1.do">모델테스트(Map)</a></li>
	<li><a href="modelTest2.do">모델테스트(Model)</a></li>
	<li><a href="modelTest3.do">모델테스트(ModelMap)</a></li>
	<li><a href="model/modelOk.do">모델테스트(Map반환)</a></li>
	<li><a href="model/modelOk.do">모델테스트(Model반환)</a></li>
	<li><a href="animeA.do">애니메이션 검색</a></ul>
	<li><a href="joaStore_combo.do">조아스토어</a></li>
</body>

</html>