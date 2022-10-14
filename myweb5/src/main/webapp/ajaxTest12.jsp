<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function show(){
	//var fruit={'apple':'사과','banana':'바나나','melon':'멜론'};
	//window.alert(fruit.melon);
	
	//var comBrand=['Mac','IBM','Dell','LG'];
	//window.alert(comBrand[2]);
	
	var student = {'name':'홍길동','age':'20','record':[70,40,90]};
	
	window.alert('학생이름: '+student.name+'\n나이: '+student.age+'\n두번째 시험점수: '+student.record[1]);
}
</script>
</head>
<body>
<input type="button" value="jsonTest" onclick="show()">
</body>
</html>