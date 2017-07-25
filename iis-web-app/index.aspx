<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iis-web-app.aspx.cs" Inherits="iiswebapp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IIS-Web-APP</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
		Today is <%=DateTime.Now.ToString() %>
		<%=System.Web.Hosting.HostingEnvironment.SiteName %>
		<%=System.Environment.MachineName %>
		
		
		
		
		</div>
    </form>
	<div>
</body>
</html>
