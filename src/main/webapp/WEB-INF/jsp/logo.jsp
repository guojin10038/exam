<%@page pageEncoding="utf-8" %>
    <img src="images/logo.png" alt="logo" class="left"/>
    <!-- EL默认从四个隐含对象中取值:
    	page->request->session->application
    	不包含cookie，且cookie就不是隐含对象。
    	要想用EL访问cookie，其语法是固定的，如下: -->
    <%-- <span>${cookie.adminCode.value }</span>--%>
    <span>${adminCode }</span>
    <a href="#">[退出]</a>            
