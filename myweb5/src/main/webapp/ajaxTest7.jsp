<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){ //이벤트 핸들러의 오버라이딩
//	window.alert("DOM Test Start!");
	
/*	var rootNode=document.documentElement;
	window.alert(rootNode.nodeName);
	var bodyNode=rootNode.lastChild;
	window.alert(bodyNode.nodeName);
	var span1Node=(bodyNode.firstChild).nextSibling;
	window.alert(span1Node.nodeName);
	var text1Node=span1Node.lastChild;
	window.alert(text1Node.nodeValue);
	
	var pNode=bodyNode.firstChild.nextSibling.nextSibling.nextSibling.lastChild.lastChild;
	window.alert(pNode.nodeValue); */
	
	/* var span2Node=document.getElementById('b');//document.all.b;
	window.alert(span2Node.nodeName);
	var text2Node=span2Node.firstChild;
	window.alert(text2Node.nodeValue); */
	
	var spanList=document.getElementsByTagName('span');
	var str='';
	for(var i=0;i<spanList.length;i++){
		var textNode=spanList[i].firstChild;
		str+=textNode.nodeValue+'\n';
	}	
	
	window.alert(spanList.length+'\n'+str);
}
</script>
</head>
<body>
<span id="a">spanTagValue:a</span>
<p>pTagString<span id="b">spanTagValue:b</span></p>
<div><p>pTagString2</p><span id="c">spanTagValue:c</span></div>
</body>
</html>