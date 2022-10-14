<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/httpRequest.js"></script>
<script>
function show(){
	sendRequest('getStudentsXML.jsp',null,showResult,'GET');	
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var xmlDoc=XHR.resonseXML;
			var studentList=xmlDoc.getElementsByTagName('student');
			var msg='총 학생수:'+studentList.length+'명\n';
			
			for(var i=0;i<studentList.length;i++){
				var student=studentList[i];
				var nameNode=student.getElementsByTagName('name');
				var nameValue=nameNode[0].firstChild.nodeValue;
				
				var ageValue=(student.getElementsByTagName('age'))[0].lastChild.nodeValue;
				
				var addrValue=(student.getElementsByTagName('addr'))[0].firstChild.nodeValue;
				
				msg+'이름:'+nameValue+'('+ageValue+'세)/주소:'+addrValue+'\n';
				
			}
			
			window.alert(msg);
		}
	}
}
</script>
</head>
<body>
<input type="button" value="학생정보확인" onclick="show()">
</body>
</html>