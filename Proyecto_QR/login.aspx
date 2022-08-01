<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Proyecto_QR.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Log</title>
    <link href="dist/style.css" rel="stylesheet"/>
     <link href="dist/Background.css" rel="stylesheet"/>
     <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
</head>
<body>
    <form id="form1" class="centered my-5" runat="server">
         <asp:Button ID="Button2" runat="server" Text="Register"  BackColor="White" BorderColor="White" ForeColor="Black" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Home"  BackColor="White" BorderColor="White" ForeColor="Black" OnClick="Button3_Click" />
        <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Log In </h2>

    <!-- Icon -->
   <%-- <div class="fadeIn first">
      <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
    </div>--%>

    <!-- Login Form -->
    <form>
      <%--<input type="text" id="login" class="fadeIn second" name="login" placeholder="login"/>--%>
        <asp:TextBox ID="TxtUsuario" class="fadeIn second" name="login" placeholder="Username" minlength="4" MaxLength="15" runat="server"> </asp:TextBox>
      <%--<input type="text" id="password" class="fadeIn third" name="login" placeholder="password"/>--%>
        <asp:TextBox ID="TxtContra" class="fadeIn third" name="login" placeholder="Password" runat="server"></asp:TextBox>
     <%-- <input type="submit" class="fadeIn fourth" value="Log In"/>--%>
        <asp:Button ID="Button1" runat="server" class="fadeIn fourth" value="Log In" Text="Log in" OnClick="Button1_Click" BackColor="Black" />
        <%--Esto es el codigo de las alertas--%>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot password?</a>
    </div>

  </div>
</div>
<!-- partial -->
    </form>
</body>
</html>
