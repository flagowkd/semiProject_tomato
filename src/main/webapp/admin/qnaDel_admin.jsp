<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="qdao" class="tomato.qna.QnaDAO" scope="session"></jsp:useBean>
<%
int idx=Integer.parseInt(request.getParameter("q_idx"));
int q_ref=qdao.getQref(idx);
int result=qdao.qnaDel(q_ref);
String msg=result>0?"삭제성공":"삭제실패";
%>
<script>
window.alert('<%=msg%>');
location.href='qnaListAll_admin.jsp';
</script>