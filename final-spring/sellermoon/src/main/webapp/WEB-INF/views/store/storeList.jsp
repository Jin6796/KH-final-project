<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, kh.sellermoon.admin.vo.StoreVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
List<Map<String,Object>> storeList = 
(List<Map<String,Object>>)request.getAttribute("storeList");	
out.print("storeList");
/* int STORE_NO         = 0;
int MD_NO            = 0;
String STORE_CONTACT    = "";
String STORE_MANAGER    = "";
String STORE_MEMO       = "";
String STORE_YN         = "";
String FIELD            = "";
	List<Map<String,Object>> storeList = 
			(List<Map<String,Object>>)request.getAttribute("storeList");	
	if(storeList !=null && storeList.size()>0){
		STORE_NO = storeList.get(0).get("STORE_NO").toString();
		MD_NO = storeList.get(0).get("MD_NO").toString();
		STORE_CONTACT = storeList.get(0).get("STORE_CONTACT").toString();
		STORE_MANAGER = storeList.get(0).get("STORE_MANAGER").toString();
		STORE_MEMO = storeList.get(0).get("STORE_MEMO").toString();
		STORE_YN = storeList.get(0).get("STORE_YN").toString();
		FIELD = storeList.get(0).get("FIELD").toString();
	}  */
%>  
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<title>거래처목록 view</title>
</head>

<body>
	<h2>거래처목록 view</h2>
	<table border="1px">
		<colgroup>
			<col style="width: 10%;" />
			<col style="width: 10%;" />
			<col style="width: 25%;" />
			<col style="width: 20%;" />
			<col style="width: 25%;" />
		</colgroup>
		<thead>
			<tr>
				<th>STORE_NO</th>
				<th>MD_NO</th>
				<th>STORE_CONTACT</th>
				<th>STORE_MANAGER</th>
				<th>STORE_MEMO</th>
			</tr>
		</thead>
		<tbody>

<c:forEach var="storeList" items="${storeList}"> 
				<tr id="dg_board">
					<%-- <td value="${storeList.STORE_NO}" />
			<td><c:out value="${storeList.STORE_NO}" /></td>
					<td ><a href="./storeDetail?STORE_NO=${storeList.STORE_NO}"><c:out value="${storeList.FIELD}" /></a></td>
					<td><c:out value="${storeList.STORE_YN}" /></td>
					<td><c:out value="${storeList.STORE_CONTACT}" /></td>
					<td><c:out value="${storeList.STORE_MANAGER}" /></td>
					<td><c:out value="${storeList.STORE_MEMO}" /></td> --%>
					<td>${storeList.STORE_NO}</td>
					<td><a href="./storeDetail?STORE_NO=${storeList.STORE_NO}">${storeList.FIELD}</a></td>
					<td>${storeList.STORE_YN}</td>
					<td>${storeList.STORE_CONTACT}</td>
					<td>${storeList.STORE_MANAGER}</td>
					<td>${storeList.STORE_MEMO}</td>
					<%-- <a href="./storeUpdate?STORE_NO=${storeList.STORE_NO}">${storeList.STORE_NO}수정</a>  --%>
				<%-- 	<a href="./storeDelete?STORE_NO=${storeList.STORE_NO}">${storeList.STORE_NO}삭제</a> --%>
				</tr>
		</c:forEach> 
				<a href="./create.jsp">등록</a>
		</tbody>
	</table>
</body>
</html>