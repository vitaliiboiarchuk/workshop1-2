<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <a href="/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>


    <form class="user" method="post" action="/edit">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="username"
                       value="${user.username}">
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="password">
            </div>
        </div>
        <div class="form-group">
            <input type="text" class="form-control form-control-user" name="email"
                   value="${user.email}">
        </div>

        <input type="hidden" name="id" value="${user.id}">
        <input type="submit" value="Wyślij" class="btn btn-primary btn-user btn-block">


    </form>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<jsp:include page="footer.jsp"/>