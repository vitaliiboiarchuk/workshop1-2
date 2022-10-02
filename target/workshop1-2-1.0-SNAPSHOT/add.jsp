<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div>

    <form class="user" method="post" action="/add">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="username"
                       placeholder="Username">
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="password"
                       placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <input type="email" class="form-control form-control-user" name="email"
                   placeholder="Email">
        </div>
        <input type="submit" value="Wyślij" class="btn btn-primary btn-user btn-block">


    </form>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<jsp:include page="footer.jsp"/>
