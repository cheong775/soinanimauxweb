<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>listes des utilisateurs</title>
    <%@include file="common/include.jsp" %>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-8">
            <br/>
            <div class="panel panel-default">
                <div class="panel-body">
                    <button type="button" onclick="preSave()" class="btn btn-default">ajouter</button>
                </div>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nom et prénom</th>
                        <th>âge</th>
                        <th>type</th>
                        <th>temps de création</th>
                        <th>opération</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.age}</td>
                            <td>${user.type}</td>
                            <td>${user.ctime}</td>
                            <td>
                                <a href="javascript:void(0);" onclick="preSave('${user.id}')" title="rédiger">
                                    <i class="glyphicon glyphicon-edit"></i>
                                </a>
                                <a href="javascript:void(0);" onclick="del('${user.id}')" title="supprimer">
                                    <i class="glyphicon glyphicon-remove"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
    function preSave(id) {
        if (id == undefined || id == null || id == '') {
            window.location.href = '${ctx}/preSave';
        } else {
            window.location.href = '${ctx}/preSave?id=' + id;
        }
    }

    function del(id) {
        $.ajax({
            type: 'POST',
            url: '${ctx}/delete',
            data: {
                id: id
            },
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
