<%--
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
<%
    String id = request.getParameter("id");
    String pswd = request.getParameter("pswd1");
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String  birthday = request.getParameter("birthdayInput");
    String telecom = request.getParameter("telecomMenu");
    String gender = request.getParameter("identityGender");
    String phoneNum = request.getParameter("phoneNo");

    person.setId(id);
    person.setPswd(pswd);
    person.setEmail(email);
    person.setName(name);
    person.setBirthday(birthday);
    person.setTelecom(telecom);
    person.setGender(gender);
    person.setPhoneNum(phoneNum);


    Cookie cookieId = new Cookie("Id" , id);
    Cookie cookiePass = new Cookie("Password" , pswd);
    Cookie cookieEmail = new Cookie("Email" , email);
    Cookie cookieName = new Cookie("Name" , name);
    Cookie cookieBirthday= new Cookie("Birthday" , birthday);
    Cookie cookieTelecom= new Cookie("Telecom" , telecom);
    Cookie cookieGender= new Cookie("Gender" , gender);
    Cookie cookiePhoneNum= new Cookie("PhoneNumber" , phoneNum);

    response.addCookie(cookieId);
    response.addCookie(cookiePass);
    response.addCookie(cookieEmail);
    response.addCookie(cookieName);
    response.addCookie(cookieBirthday);
    response.addCookie(cookieTelecom);
    response.addCookie(cookieGender);
    response.addCookie(cookiePhoneNum);

%>
<body>

<h1>Id : <%= person.getId() %></h1>
<h1>Password : <%= person.getPswd() %></h1>
<h1>Email : <%= person.getEmail() %></h1>
<h1>Name : <%= person.getName() %></h1>
<h1>Birthday : <%= person.getBirthday() %></h1>
<h1>Telecom : <%= person.getTelecom() %></h1>
<h1>Gender : <%= person.getGender() %></h1>
<h1>Phone Number : <%= person.getPhoneNum() %></h1>

</body>
</html>
</jsp:useBean>