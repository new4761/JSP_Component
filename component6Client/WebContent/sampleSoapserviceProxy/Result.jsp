<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleSoapserviceProxyid" scope="session" class="model.SoapserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleSoapserviceProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleSoapserviceProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleSoapserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        model.Soapservice getSoapservice10mtemp = sampleSoapserviceProxyid.getSoapservice();
if(getSoapservice10mtemp == null){
%>
<%=getSoapservice10mtemp %>
<%
}else{
        if(getSoapservice10mtemp!= null){
        String tempreturnp11 = getSoapservice10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String id_1id=  request.getParameter("id22");
        int id_1idTemp  = Integer.parseInt(id_1id);
        model.Empolyee findByid13mtemp = sampleSoapserviceProxyid.findByid(id_1idTemp);
if(findByid13mtemp == null){
%>
<%=findByid13mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(findByid13mtemp != null){
java.lang.String typename16 = findByid13mtemp.getName();
        String tempResultname16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename16));
        %>
        <%= tempResultname16 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">salary:</TD>
<TD>
<%
if(findByid13mtemp != null){
%>
<%=findByid13mtemp.getSalary()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findByid13mtemp != null){
%>
<%=findByid13mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 24:
        gotMethod = true;
        String name_3id=  request.getParameter("name29");
            java.lang.String name_3idTemp = null;
        if(!name_3id.equals("")){
         name_3idTemp  = name_3id;
        }
        String salary_4id=  request.getParameter("salary31");
        double salary_4idTemp  = Double.parseDouble(salary_4id);
        String id_5id=  request.getParameter("id33");
        int id_5idTemp  = Integer.parseInt(id_5id);
        %>
        <jsp:useBean id="model1Empolyee_2id" scope="session" class="model.Empolyee" />
        <%
        model1Empolyee_2id.setName(name_3idTemp);
        model1Empolyee_2id.setSalary(salary_4idTemp);
        model1Empolyee_2id.setId(id_5idTemp);
        int updateEmp24mtemp = sampleSoapserviceProxyid.updateEmp(model1Empolyee_2id);
        String tempResultreturnp25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmp24mtemp));
        %>
        <%= tempResultreturnp25 %>
        <%
break;
case 35:
        gotMethod = true;
        String name_7id=  request.getParameter("name40");
            java.lang.String name_7idTemp = null;
        if(!name_7id.equals("")){
         name_7idTemp  = name_7id;
        }
        String salary_8id=  request.getParameter("salary42");
        double salary_8idTemp  = Double.parseDouble(salary_8id);
        String id_9id=  request.getParameter("id44");
        int id_9idTemp  = Integer.parseInt(id_9id);
        %>
        <jsp:useBean id="model1Empolyee_6id" scope="session" class="model.Empolyee" />
        <%
        model1Empolyee_6id.setName(name_7idTemp);
        model1Empolyee_6id.setSalary(salary_8idTemp);
        model1Empolyee_6id.setId(id_9idTemp);
        int insertEmp35mtemp = sampleSoapserviceProxyid.insertEmp(model1Empolyee_6id);
        String tempResultreturnp36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(insertEmp35mtemp));
        %>
        <%= tempResultreturnp36 %>
        <%
break;
case 46:
        gotMethod = true;
        String id_10id=  request.getParameter("id49");
        int id_10idTemp  = Integer.parseInt(id_10id);
        int removeEmployee46mtemp = sampleSoapserviceProxyid.removeEmployee(id_10idTemp);
        String tempResultreturnp47 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(removeEmployee46mtemp));
        %>
        <%= tempResultreturnp47 %>
        <%
break;
case 51:
        gotMethod = true;
        java.lang.Object[] findAllEmpolyee51mtemp = sampleSoapserviceProxyid.findAllEmpolyee();
if(findAllEmpolyee51mtemp == null){
%>
<%=findAllEmpolyee51mtemp %>
<%
}else{
        String tempreturnp52 = null;
        if(findAllEmpolyee51mtemp != null){
        java.util.List listreturnp52= java.util.Arrays.asList(findAllEmpolyee51mtemp);
        tempreturnp52 = listreturnp52.toString();
        }
        %>
        <%=tempreturnp52%>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>