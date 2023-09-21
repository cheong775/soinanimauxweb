<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>centre personnelle</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE;">

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<h2 style="margin-top: 20px;" class="index-title">USER / CENTER</h2>
			<div class="line-container">
				<p class="line" style="background: #EEEEEE;"> centre personnelle </p>
			</div>
			<!-- 标题 -->

			<div class="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div class="right-container">
					<form class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						<div class="layui-form-item">
							<div class="layui-input-block">
								<img id="pictureImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" src="../../img/avator.png">
								<input type="hidden" id="picture" name="picture" />
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button type="button" class="layui-btn btn-theme" id="pictureUpload">
									<i class="layui-icon">&#xe67c;</i>soumis images
								</button>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">Nom de utilisateur</label>
							<div class="layui-input-block">
								<input type="text" name="username" id="username" placeholder="Nom de utilisateur" autocomplete="off" class="layui-input"
								 disabled="disabled">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">restant</label>
							<div class="layui-input-inline">
								<input type="number" name="money" id="money" placeholder="restant" autocomplete="off" class="layui-input" disabled="disabled">
							</div>
							<div class="layui-form-mid layui-word-aux">
								<i class="layui-icon" style="font-size: 20px;color: red;">&#xe65e;</i>
								<a id="btn-recharge" href="javascript:void(0)">clique ici pour recharger</a>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">points accumulés</label>
							<div class="layui-input-block">
								<input type="number" name="jifen" id="jifen" placeholder="points accumulés" autocomplete="off" class="layui-input" disabled="disabled">
							</div>
							<!-- <div class="layui-form-mid layui-word-aux">
								<i class="layui-icon" style="font-size: 20px;color: red;">&#xe64c;</i>  
								<a href="javascript:void(0)">可用于兑换商品的积分</a>
							</div> -->
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">Nom et prénom</label>
							<div class="layui-input-block">
								<input type="text" name="name" id="name" placeholder="Nom et prénom" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">sexe</label>
							<div class="layui-input-block">
								<select name="sex" id="sex">
									<option value=""></option>
									<option value="homme">homme</option>
									<option value="féminin">féminin</option>
								</select>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">âge</label>
							<div class="layui-input-block">
								<input type="number" name="age" id="age" lay-verify="age" placeholder="âge" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">numéro de téléphone</label>
							<div class="layui-input-block">
								<input type="text" name="phone" id="phone" lay-verify="phone" placeholder="numéro de téléphone" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">adresse mail</label>
							<div class="layui-input-block">
								<input type="text" name="email" id="email" lay-verify="email" placeholder="adresse mail" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">renouveler informations</button>
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button @click="logout" class="layui-btn btn-submit">se déconnecte</button>
							</div>
						</div>
					</form>
				</div>
				<!-- 个人中心 -->
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
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
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					dataList: [],
					centerMenu: centerMenu
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 200) {
								return val.substring(0, 200).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;

				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../recharge/recharge.jsp'
					});
				});

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: "none"
						});
					}
				});

				// 上传头像
				var pictureUpload = upload.render({
					//绑定元素
					elem: '#pictureUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("soumis avec réussi", {
								time: 2000,
								icon: 6
							})
							var url = http.baseurl + 'upload/' + res.file;
							jquery('#picture').val(url);
							jquery('#pictureImg').attr('src', url)
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("une exception de request d'interface", {
							time: 2000,
							icon: 5
						})
					}
				});

				// 表单校验
				form.verify({
					phone: function(value, item) {
						if (!isMobile(value)) {
							return 'entrez le bonne numéro de téléphone'
						}
					},
					age: function(value, item) {
						if (!isIntNumer(value)) {
							return 'entrez le bonne âge'
						}
					},
					email: function(value, item) {
						if (!isEmail(value)) {
							return "entre le bonne adresse mail"
						}
					},
				});

				// 查询用户信息
				let table = localStorage.getItem("userTable");
				
				if(!table){
					layer.msg("se connecter d'abord", {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}
				
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					form.val("myForm", data.data);
					// 图片赋值
					jquery("#pictureImg").attr("src", data.data.picture);
				});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('modifier avec réussi', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
