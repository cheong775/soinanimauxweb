<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Rédiger</title>
    <%@include file="common/include.jsp" %>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-8">
            <form id="form" role="form">
                <input id="id" name="id" value="${user.id}" hidden>
                <div class="form-group">
                    <label for="name">Nom et prénom</label>
                    <input type="text" class="form-control" id="name" name="name" value="${user.name}" placeholder="entrez nom et prénom">
                </div>
                <div class="form-group">
                    <label for="age">âge</label>
                    <input type="text" class="form-control" id="age" name="age" value="${user.age}" placeholder="entre âge">
                </div>
                <button type="button" onclick="save()" class="btn btn-default">enregistré</button>
                <button type="reset" class="btn btn-default">annulé</button>
            </form>
        </div>
    </div>
</div>
<script>
    function save() {
        $.ajax({
            type: 'POST',
            url: '${ctx}/save',
            data: $('#form').serialize(),
            dataType: 'json',
            success: function (data) {
                alert(data.msg);
                if (data.success) {
                    setTimeout('toIndex()', 100);
                }
            },
            error: function () {
                alert("il y a une erreur,essayer encore une fois!");
            }
        });
    }
</script>
</body>
</html>
