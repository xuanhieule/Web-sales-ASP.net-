<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BAN_HANG.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Đăng nhập</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

   <!-- <script src="js/1.js"></script>
    <script type="text/javascript" src="vendor/bootstrap.js"></script> -->
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href=" /images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>

<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form id="form1" runat="server">
					<span class="login100-form-title p-b-49">
						Đăng Ký
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Tên tài Khoản</span>&nbsp;
						
					    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtTK" runat="server" CssClass="auto-style1" Width="465px"></asp:TextBox>
					</div>
                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Họ tên</span>&nbsp;
						
					    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtHT" runat="server" CssClass="auto-style1" Width="465px"></asp:TextBox>
					</div>
                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Email</span>&nbsp;
						
					    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1" Width="465px" AutoCompleteType="Email" TextMode="Email"></asp:TextBox>
					</div>
                    

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Mật Khẩu</span>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtMK" runat="server" CssClass="auto-style1" Width="465px" TextMode="Password"></asp:TextBox>
					</div>
                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">
                        <br />
                        Nhập lại mật khẩu</span>&nbsp;
						
					    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtMk2" runat="server" CssClass="auto-style1" Width="465px" TextMode="Password"></asp:TextBox>
					</div>

					
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							
						</a>
						<div class="auto-style2">
							<asp:Button ID="btnDK" runat="server" OnClick="btnDK_Click" Text="Đăng Ký" />
						</div>
					</div>
					
					<div class="container-login100-form-btn">
						<asp:Label ID="lblTB" runat="server"></asp:Label>
					</div>
                    <div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							hoặc đăng nhập
						</span>

						<a href="DangNhap.aspx" class="txt2">
							Đăng nhập
						</a>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>

