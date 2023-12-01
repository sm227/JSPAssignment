<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: hamsm
  Date: 2023-11-20
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:useBean class="Person" id="person" scope="request" />--%>
<jsp:useBean id="person" class="com.example.jspassignment.Person" scope="request">
<html>
<head>
    <title>Title</title>
</head>
<%@ page import="java.net.URLEncoder" %>
<%
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
    String pswd = request.getParameter("pswd1");
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String  birthday = request.getParameter("birthdayInput");
    String telecom = request.getParameter("telecomMenu");
    String gender = request.getParameter("identityGender");
    String foreigner = request.getParameter("foreigner");
    String phoneNum = request.getParameter("phoneNo");


    person.setId(id);
    person.setPswd(pswd);
    person.setEmail(email);
    person.setName(name);
    person.setBirthday(birthday);
    person.setTelecom(telecom);
    person.setGender(gender);
    person.setForeigner(foreigner);
    person.setPhoneNum(phoneNum);


    /*쿠키 생성 Start*/
    Cookie cookieId = new Cookie("Id" , id);
    Cookie cookiePass = new Cookie("Password" , pswd);
    Cookie cookieEmail = new Cookie("Email" , email);

    // Mac에서 한글로 쿠키 저장시 오류가 발생하여 UTF8 로 인코딩하여 저장함
    Cookie cookieName = new Cookie("Name" , URLEncoder.encode(name,"UTF-8"));
    Cookie cookieBirthday= new Cookie("Birthday" , birthday);
    Cookie cookieTelecom= new Cookie("Telecom" , telecom);
    Cookie cookieGender= new Cookie("Gender" , gender);
    Cookie cookieForeigner = new Cookie("Foreigner", foreigner);
    Cookie cookiePhoneNum= new Cookie("PhoneNumber" , phoneNum);

    response.addCookie(cookieId);
    response.addCookie(cookiePass);
    response.addCookie(cookieEmail);
    response.addCookie(cookieName);
    response.addCookie(cookieBirthday);
    response.addCookie(cookieTelecom);
    response.addCookie(cookieGender);
    response.addCookie(cookieForeigner);
    response.addCookie(cookiePhoneNum);
    /* end */
%>
<body>
<div style="text-align: center">
    <h1>회원가입 결과</h1>
    <hr>
    <h3>ID : <%= person.getId() %></h3>
    <h3>Password : <%= person.getPswd() %></h3>
    <h3>Email : <%= person.getEmail() %></h3>
    <h3>Name : <%= person.getName() %></h3>
    <h3>Birthday : <%= person.getBirthday() %></h3>
    <h3>Telecom : <%= person.getTelecom() %></h3>
    <h3>Gender : <%= person.getGender() %></h3>
    <h3>Foreigner : <%=person.getForeigner()%></h3>
    <h3>Phone Number : <%= person.getPhoneNum() %></h3>
</div>
</body>
</html>
</jsp:useBean>