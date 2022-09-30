<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
window.alert('${msg}');
opener.document.memberJoin.id.value='${userid}';
window.self.close();
</script>