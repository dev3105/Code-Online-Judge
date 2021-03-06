<%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>

<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="images/favicon.ico">

	<title>Login | CodeOJ</title>
	
	<!-- Bootstrap core CSS -->
	<link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

	<link rel="stylesheet" href="fonts/font-awesome-4/css/font-awesome.min.css">

	<!-- Custom styles for this template -->
	<link href="css/style.css" rel="stylesheet" />	
        <link href="assets/css/bootstrap1.css" rel="stylesheet" />	
</head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body class="texture">
    <%
    String username = (String)session.getAttribute("username");
    if(username!=null)
               {
        response.sendRedirect("index.jsp");
    }
    %>
<div id="cl-wrapper" class="login-container">

	<div class="middle-login">
		<div class="block-flat">
			<div class="header" style="background-color:#dddddd; border: 0;">							
				<h3 class="text-center" style="color: #333333;"><img class="logo-img" src="images/logo.png" alt="logo"/>CodeOJ</h3>
			</div>
			<div>
                            <form style="margin-bottom: 0px !important;" class="form-horizontal" action='loginaction.jsp' method="post">
        <div class="content">
        <h4 class="title">Login Access</h4>
                <div class="form-group">
                        <div class="col-sm-12">
                                <div class="input-group">
                                        <span class="input-group-addon"><i class="icon-user"></i></span>
                                        <input type="text" placeholder="Username" id="username" class="form-control" name="username">
                                </div>
                        </div>
                </div>
                        <div class="form-group">
                                <div class="col-sm-12">
                                        <div class="input-group">
                                                <span class="input-group-addon"><i class="icon-lock"></i></span>
                                                <input type="password" placeholder="Password" id="password" class="form-control" name="password">
                                        </div>
                                </div>
                        </div>

        </div>
        <div class="foot">
            
               <c:if test='${not empty param["Retry"]}'>
     <p style="color:red;font-weight:bold;">Wrong Username or Password.</p>

    </c:if>
          <c:if test='${not empty param["Verify"]}'>
     <p style="color:red;font-weight:bold;">Please Verify Your Account.</p>

    </c:if>
            <a href="forgotpass.jsp" class="btn btn-primary">Forgot Password</a> 
            <a href="register.jsp" class="btn btn-primary">Sign Up</a>
                <button class="btn btn-primary" data-dismiss="modal" type="submit">Log me in</button>
        </div>
</form>
			</div>
		</div>
		<div class="text-center out-links"><a href="#">&copy; 2014 code online judge</a></div>
	</div> 
	
</div>

<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/behaviour/general.js"></script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
  <script src="js/behaviour/voice-commands.js"></script>
  <script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>

</html>
