<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 登陆 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>S'inscrit</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">

		<div class="login-bg" style="background-image: url();"></div>

		<div class="login-container">
			<!-- 标题 -->
			<h2 class="index-title" style="width: 480px;"> Utilisateur inscription</h2>
			<div class="line-container">
				<p class="line"> S'inscrit </p>
			</div>
			<!-- 标题 -->
			<form class="layui-form login-form">
				<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">Le compte:</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" name="username" required lay-verify="required" placeholder="entrez le compte" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">mot de passe:</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="password" name="mima" required lay-verify="required" placeholder="entrez le mot de passe" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">Nom et prénom:</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" name="name" lay-verify="" placeholder="entrez nom et prénom" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">âge:</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="number" name="age" lay-verify="number" placeholder="entrez vôtre âge" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">sexe</label>
					<div class="layui-input-inline" style="width: 300px;text-align: left;">
						<input type="radio" name="sex" value="homme" title="homme">
						<input type="radio" name="sex" value="féminin" title="féminin" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">adresse mail:</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="email" name="email" lay-verify="email" placeholder="entrez adresse mail" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
						<button class="layui-btn btn-submit" lay-submit lay-filter="register">S'inscrit</button>
						<button type="reset" class="layui-btn layui-btn-primary">réinitialisation</button>
					</div>
				</div>
			</form>
			<div class="bottom-container">
				<a href="javascript:window.location.href='../login/login.jsp'">déjà a un compte？se connecter</a>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;

				var tablename = http.getParam('tablename');
				
				// 表单校验
				form.verify({
				  email: function(value, item){
				    if(!isEmail(value)){
						return 'entrez le bonne adresse mail'
					}
				  },
				  number: function(value, item){
				    if(!isIntNumer(value)){
						return 'entre le bonne âge'
					}
				  },
				});      
				
				// 登录
				form.on('submit(register)', function(data) {
					data = data.field;
					http.requestJson(tablename + '/register', 'post', data, function(res) {
						layer.msg('inscrit avec réussi', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
