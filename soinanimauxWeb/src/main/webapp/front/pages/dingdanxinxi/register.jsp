<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>S'inscrit</title>
  <link rel="stylesheet" href="../../layui/css/layui.css">
  <link rel="stylesheet" href="../../xznstatic/css/login.style.css">
</head>
<body>
  <div id="app">
    <div class="main">
      <h1 id="projectName"></h1>
      <div class="login-form">
        <h2>S'inscrit</h2>
        <div class="agileits-top">
          <form class="layui-form">
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="yaopinmingcheng" name="yaopinmingcheng" placeholder="entrez le nom de produit" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="guige" name="guige" placeholder="entrez la standard" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="shengchanshang" name="shengchanshang" placeholder="entrez le entreprise de fabrique" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="shuliang" name="shuliang" placeholder="entrez le quantité" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="jiage" name="jiage" placeholder="entrez le prix" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="yonghuming" name="yonghuming" placeholder="Nom de utilisateur" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="yonghuxingming" name="yonghuxingming" placeholder="entrez le nom et prénom" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item" style="margin-bottom: 0;">
              <div class="layui-input-block" style="margin-left: 0;">
                <button class="layui-btn btn-submit layui-btn-fluid layui-btn-primary" lay-submit lay-filter="register">s'inscrit</button>
              </div>
            </div>
            <div class="wthree-text" style="margin-top: 1em">
              <ul>
                <li><a href="javascript:window.location.href='../login/login.jsp'">déjà a un compte？se connecter</a></li>
              </ul>
              <div class="clear"></div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script src="../../layui/layui.js"></script>
  <script src="../../js/vue.js"></script>
  <script src="../../js/config.js"></script>
  <script src="../../modules/config.js"></script>
  <script src="../../js/utils.js"></script>
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

      jquery('#projectName').text(projectName);
              
      // 注册
      form.on('submit(register)', function(data) {
        data = data.field;
                                                                        if(!isIntNumer(data.shuliang)){
          layer.msg("entrez quantité une nombre entier ", {
            time: 2000,
            icon: 5
          });
          return false
        }
                                        if(!isIntNumer(data.zongjine)){
          layer.msg("entrez total montant une nombre entier", {
            time: 2000,
            icon: 5
          });
          return false
        }
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
