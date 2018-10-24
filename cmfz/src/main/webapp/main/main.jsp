<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>持名法州主页</title>
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">   
<link rel="stylesheet" type="text/css" href="../themes/IconExtension.css">   
<script type="text/javascript" src="../js/jquery.min.js"></script>   
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>  
<script type="text/javascript" src="../js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	<!--菜单处理-->

    function getUsers(){
        //调用tabs的add方法，添加一个页签
        var isExists=$("#tt").tabs("exists","轮播图");
        if(isExists){
            //名字为abc的页签已经存在；选中该页签
            $("#tt").tabs("select","轮播图");
        }else{
            $("#tt").tabs("add",{
                selected:true,
                title:"轮播图",
                closable:true,
                content:'<iframe src="../index.jsp" height="100%" width="100%"></iframe>'
            });
        }
    }
</script>

</head>
<body class="easyui-layout">

    <div data-options="region:'north',split:true" style="height:60px;background-color:  #5C160C">
    	<div style="font-size: 24px;color: #FAF7F7;font-family: 楷体;font-weight: 900;width: 500px;float:left;padding-left: 20px;padding-top: 10px" >持名法州后台管理系统</div>
    	<div style="font-size: 16px;color: #FAF7F7;font-family: 楷体;width: 300px;float:right;padding-top:15px">欢迎您:xxxxx &nbsp;<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改密码</a>&nbsp;&nbsp;<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-01'">退出系统</a></div>
    </div>   
    <div data-options="region:'south',split:true" style="height: 40px;background: #5C160C">
    	<div style="text-align: center;font-size:15px; color: #FAF7F7;font-family: 楷体" >&copy;百知教育 htf@zparkhr.com.cn</div>
    </div>   



    <div data-options="region:'west',title:'导航菜单',split:true," style="width:220px;">
    	<div id="aa" class="easyui-accordion" data-options="fit:true">
            <div title="轮播图管理" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
                <a href="javascript:void(0)" onclick="getUsers()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">轮播图</a>
            </div>
            <div title="吉祥秒音" data-options="iconCls:'icon-reload',selected:true" style="padding:10px;">
                <a href="javascript:void(0)" onclick="getUsers()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">吉祥妙音</a>
            </div>
            <%--<h1>${requestScope.admin.name}</h1>--%>
        </div>
    </div>



    <div data-options="region:'center'">
    	<div id="tt" class="easyui-tabs" data-options="fit:true,narrow:true,pill:true">   
		     <%--一个div一个页签--%>
            <div title="主页" data-options="iconCls:'icon-neighbourhood',"  style="background-image:url(image/shouye.jpg);background-repeat: no-repeat;background-size:100% 100%;">
                    <img src="${pageContext.request.contextPath}/main/image/shouye.jpg">
            </div>

		</div>

    </div>

</body> 
</html>