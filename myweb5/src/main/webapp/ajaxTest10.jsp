<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
/* [추가버튼] 
 *
 * 1번 아이템[삭제]
 * 2번 아이템[삭제]
 */ 
var count=0;
 
function show(){
	count++;
	
	var newDiv=document.createElement('div');
	newDiv.setAttribute('id','item'+count);
	var newText=document.createTextNode(count+'번째 아이템');
	newDiv.appendChild(newText);
	
	var newButton=document.createElement('input');
	newButton.setAttribute('type','button');
	newButton.setAttribute('value','삭제');
	newButton.setAttribute('onclick','showRemove('+count+')');
	newDiv.appendChild(newButton);
	
	var itemListNode=document.getElementById('itemList');
	itemListNode.appendChild(newDiv);
	
}

function showRemove(idCount){
	var removeItem=document.getElementById('item'+idCount);
	removeItem.parentNode.removeChild(removeItem);
	
}
</script>
</head>
<body>
<input type="button" value="추가" onclick="show()">
<div id="itemList"></div>
</body>
</html>