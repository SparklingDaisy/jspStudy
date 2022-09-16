<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>elTest.jsp</h1>
<h3>boolean:${true }</h3>
<h3>정수:${11}</h3>
<h3>실수:${3.14}</h3>
<h3>문자열1:${"hello!"}</h3>
<h3>문자열2:${'hi!' }</h3>
<h3>null값:${null }</h3> <!-- 개발자 입장에서는 굉장히 편해진 부분, null을 화면에서 그냥 빈공간으로 나타내줌 -->
<h3>3+5=${3+5 }</h3>
<h3>'3'+5=${'3'+5 }</h3>
<h3>'삼'</h3><!-- 산술연산으로 생각하기 때문에 파싱을 하는데, 삼도 파싱을 하다가 안되기때문에 에러가 발생함 -->
<h3>'삼'+5=삼${5 }</h3>
<h3>null+5=${null+5 }</h3> <!-- null은 빈 문자열이지만, 산술연산시에만 0으로 계산하게 되어있다. -->
<h3>7/3=${7/3 }</h3> <!-- el의 목적은 표현하기 위함이기 때문에, 나머지 소수점 값까지 모두 표현해준다. -->
<h3>7/3=${7 div 3 }</h3>
<h3>3%2=${3%2 }</h3> <!-- 자바와 똑같이 몫만 발생한다. -->
<h3>3%2=${3 mod 2 }</h3>

<h3>7>3=${7>3}</h3>
<h3>7<3=${7<3 }</h3>
<h3>7==3=$<7=3}</h3>
<h3>result:${not true }</h3>
</body>
</html>