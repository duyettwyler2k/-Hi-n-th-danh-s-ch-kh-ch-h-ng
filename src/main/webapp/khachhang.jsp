<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Pham Duyet
  Date: 28/05/2021
  Time: 2:58 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("Mai van hoan", "Ngay sinh:1983-08-20,Dia chi:Ha noi");
    dic.put("Nguyen Van Nam", "Ngay sinh:1983-08-21,Dia chi:Bac Giang");
    dic.put("Nguyen Thai Hoa", "Ngay sinh:1983-08-22,Dia chi:Nam Dinh");
    dic.put("Tran Dang Khoa", "Ngay sinh:1983-09-22,Dia chi:Ha Tay");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {
        out.println("Nhan vien: " + search);
        out.println("Thong tin: " + result);
    } else {
        out.println("Not found");
    }

%>
</body>
</html>
