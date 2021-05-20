<%--
  Created by IntelliJ IDEA.
  User: m
  Date: 2021/5/20
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单提交</title>
</head>
<body>
<script>
    layui.use('form', function(){
        var form = layui.form;
        //提交
        form.on('submit(articlesub)', function(data){
            $.ajax({
                url:'articlesub.php',
                method:'post',
                data:data.field,
                dataType:'JSON',
                success:function(res){
                    if(res.code=='0'){
                        layer.msg("提交成功",{icon: 1, time: 3000},function(){location.reload();}); //提交成功后刷新页面
                    }
                    else
                        alert(res.msg);
                },
                error:function (data) {

                }
            });
            return false;
        });
    });
</script>
</body>
</html>
