<%@ page import="com.ignateva.el_test.entity.User" %>
<%@ page import="static jdk.internal.org.jline.utils.InfoCmp.Capability.user1" %><%--
  Created by IntelliJ IDEA.
  User: Мария
  Date: 16.03.2024
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method = POST action="${pageContext.request.contextPath}/test-servlet" >
    <div class="mb-3">
        <label>Имя</label><br>
        <input type="text" id="a" name ="F_name" value="${F_name}">
    </div>
    <div class="mb-3">
        <label>Фамилия</label><br>
        <input type="text" id="b" name ="S_name" value="${S_name}">
    </div>
    <div class="mb-3">
        <label>Возраст</label><br>
        <input type="number" id="c" name ="age" value="${age}">
    </div>
<div class="mb-3 row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
        <input type="text" readonly class="form-control-plaintext" id="staticEmail" name="e_mail" value="email@yandex.ru">
    </div>
</div>
<div class="mb-3 row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
        <input type="password" class="form-control" id="inputPassword">
    </div>
</div>
<button type="submit" class="btn btn-primary">Submit</button>

</form>
<h4>вывод информации на этой же странице из самой страницы</h4>
<h2>Спасибо за регистрацию!</h2>
<h4>Ваши введённые данные:</h4>
<p><strong>Имя:</strong> ${param.F_name}</p>
<p><strong>Фамилия:</strong> ${param.S_name}</p>
<p><strong>Возраст:</strong> ${param.age}</p>
<p><strong>Email: </strong>${param.e_mail}</p>

<h4>вывод информации на этой же странице из сервлета через массив строк/Лист</h4>
<p>Имя: ${user[0]}</p>
<p>Фамилия: ${user[1]}</p>
<p>Возраст: ${user[2]}</p>
<p>Почта: ${user[3]}</p>
<h4>вывод информации на этой же странице из сервлета через объект в строку</h4>
<% if (request.getAttribute("userStr")!=null)%>
    <%=request.getAttribute("userStr")%>
<h4>вывод информации на этой же странице из сервлета через объект </h4>
<%User user1=(User)request.getAttribute("user1");%>
<p>Имя: ${user1.getF_name()}</p>
<p>Фамилия: ${user1.getS_name()}</p>
<p>Возраст: ${user1.getAge()}</p>
<p>Почта: ${user1.getE_mail()}</p>
<h4>вывод информации на этой же странице из сервлета через Cookie</h4>

<p>Имя:${cookie.userFName.getValue()}</p>
<a href="index.jsp">на главную</a>
</body>
</html>
