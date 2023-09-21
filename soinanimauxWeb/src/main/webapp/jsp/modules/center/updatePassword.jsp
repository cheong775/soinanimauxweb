<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
<%@ include file="../../static/head.jsp"%>
<link
	href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
	rel="stylesheet">
<script type="text/javascript" charset="utf-8">
	window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
</script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
.error {
	color: red;
}
</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
			<!-- Top Navigation -->
			<%@ include file="../../static/topNav.jsp"%>
			<!-- Menu -->
			<div class="container menu-nav">
				<nav class="navbar navbar-expand-lg lochana-bg text-white">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="ti-menu text-white"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
						<ul id="navUl" class="navbar-nav mr-auto">

						</ul>
					</div>
				</nav>
			</div>
			<!-- /Menu -->
			<!-- Breadcrumb -->
			<!-- Page Title -->
			<div class="container mt-0">
				<div class="row breadcrumb-bar">
					<div class="col-md-6">
						<h3 class="block-title">modifier mots de passes</h3>
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/index.jsp"> <span
									class="ti-home"></span>
							</a></li>
							<li class="breadcrumb-item"><span>gérer mot de passe</span></li>
							<li class="breadcrumb-item active"><span>modifier mot de passe</span></li>
						</ol>
					</div>
				</div>
			</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">modifier mot depasse</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>mot de passe original</label> <input id="oldPassword" name="oldPassword"
											class="form-control" placeholder="mot de passe original">
									</div>

									<div class="form-group col-md-6">
										<label>nouvelle mot depasse</label> <input id="newPassword" name="newPassword"
											class="form-control" placeholder="nouvelle mot depasse">
									</div>

									<div class="form-group col-md-6">
										<label>confirme mot de passe</label> <input id="confirmPassword"
											name="confirmPassword" class="form-control"
											placeholder="confirme mot de passe">
									</div>


									<div class="form-group col-md-6 mb-3">
										<button id="submitBtn" type="button"
											class="btn btn-primary btn-lg">soumis</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top"> <span
		class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script
		src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
		
	<%@ include file="../../utils/menu.jsp"%>
		
	<%@ include file="../../static/setMenu.js"%>
		
	<%@ include file="../../utils/baseUrl.jsp"%>
		var tableName = "xiugaimima";
		var pageType = "add-or-update";
		var updateId = "";
		var password = '';
		var accountTableName = ''

		var ruleForm = {};


		// 表单提交
		function submit() {
			if (validform() == true) {				
				if(password == $('#oldPassword').val()){
					httpJson(accountTableName + "/update","POST",{
						id:updateId,
						mima: $('#newPassword').val(),
						password: $('#newPassword').val()
					},(res)=>{
						if(res.code == 0){
							window.location.href = '../../login.jsp';
							alert('modifier mot de passe avec réussi,reconnecter si vous plaît');
						}						
					});
				}else{
					alert('le mot deoriginal est faux')
				}
			} else {
				alert("fémininnon complète");
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({
				rules : {
					oldPassword : {
						required : true,
					},
					newPassword : {
						required : true,
					},
					confirmPassword : {
						required : true,
						equalTo: "#newPassword",
					},
				},
				messages : {
					oldPassword : {
						required : "le mot de passe original ne peut pas être vide",
					},
					newPassword : {
						required : "le nouvelle mot de passe ne peut pas être vide",
					},
					confirmPassword : {
						required : "le mot depasse de confirme ne peut pas être vide",
						equalTo: "les deux entrées sont incompatibles",
					},
				}
			}).form();
		}

		function getId() {
			var userName = window.sessionStorage.getItem('username')
			accountTableName = window.sessionStorage.getItem('accountTableName')
			http(accountTableName+'/session','GET',{},(res)=>{
				if(res.code == 0){
					updateId = res.data.id;
					if(res.data != null && res.data.mima != null && res.data.mima != ''){
						password = res.data.mima;
					} else if(res.data != null && res.data.password != null && res.data.password != ''){
						password = res.data.password;
					}
					
				}		
			});
		}
		$(document).ready(function() {
			//设置导航栏菜单
			setMenu();
			getId();
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				submit();
			});
			<%@ include file="../../static/myInfo.js"%>
		});
		// 用户登出
	<%@ include file="../../static/logout.jsp"%>
		
	</script>
</body>

</html>
