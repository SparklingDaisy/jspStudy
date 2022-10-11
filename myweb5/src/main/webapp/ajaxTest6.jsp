<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
function show(){
	sendRequest('getCSVResult.jsp',null,showResult,'POST');
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			
			var data=XHR.responseText;
			
			var strArr=data.split(',');
			var intArr=new Array(strArr.length);
			var sum=0;
			var max=0;
			for(var i=0;i<strArr.length;i++){
				intArr[i]=parseInt(strArr[i]);
				sum+=intArr[i];
				if(max<intArr[i]){
					max=intArr[i];
				}
			}
			
			var avg=sum/intArr.length;
			
			var sumNode=document.all.sumTd;
			sumNode.innerHTML=sum+'점';
			document.all.avgTd.innerHTML=avg+'점';
			document.all.maxTd.innerHTML=max+'점';
			
			//window.alert(data);
		}
	}
}
</script>
</head>
<body>
<h1>시험 성적 결과</h1>
<table border="1" cellspacing="0" width="300">
	<tr>
		<th>시험 총 점수</th>
		<td id="sumTd">--점</td>
	</tr>
	<tr>
		<th>시험 평균점수</th>
		<td id="avgTd">--점</td>
	</tr>
	<tr>
		<th>최고 점수</th>
		<td id="maxTd">--점</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="결과조회" onclick="show()">
		</td>
	</tr>
</table>
</body>
</html>