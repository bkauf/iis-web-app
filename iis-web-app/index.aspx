<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iis-web-app.aspx.cs" Inherits="iiswebapp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IIS-Web-App</title>
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <!--<form id="form1" runat="server">-->
   <!--<div></div>-->
    <!--</form>-->
	
	
	<div id="wrapper">
	
		<div id="header">
			<div id="header-left">
				<h1>IIS ASP.Net Windows Container</h1>
				<h2> From Container <%=System.Environment.MachineName %></h2>
			</div>
			<div id="header-right">
					<img src="msft-docker.png", width="200px">
			</div>
		  
		 
		</div>
		<div id="main>
		Today is <%=DateTime.Now.ToString() %>
		<%=System.Web.Hosting.HostingEnvironment.SiteName %>
		</div>
	
	
	</div>
     
	
</body>
</html>
