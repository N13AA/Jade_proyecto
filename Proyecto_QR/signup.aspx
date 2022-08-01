<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Proyecto_QR.signup" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
     <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">        
    <link href="css2/main.css" rel="stylesheet"
        <script src="SweetAlert/sweetalert2.all.min.js"></script>
        <script src="SweetAlert/sweetalert2.js"></script>
     <script src="SweetAlert/sweetalert1.js"></script>

    <!-- Title Page-->
   

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
</head>
<body>
    <form id="form1" class="centered my-5" runat="server">
         <script type="text/javascript">
             function validar(e) { // 1
                 tecla = (document.all) ? e.keyCode : e.which; // 2
                 if (tecla == 8) return true; // 3
                 patron = /[A-Za-z\s]/; // 4
                 te = String.fromCharCode(tecla); // 5
                 return patron.test(te); // 6
             }
         </script>
            <script type="text/javascript">
                function numeros(nu) { // 1
                    tecla = (document.all) ? e.keyCode : e.which; // 2
                    if (tecla == 8) return true; // 3
                    ppatron = /\d/; // Solo acepta números// 4
                    te = String.fromCharCode(tecla); // 5
                    return patron.test(te); // 6
                }
            </script>    
        <div>
            <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Registrarse</h2>
                    <form method="POST">
                        <div class="input-group">
                            <%--<input class="input--style-1" type="text" placeholder="NAME" name="name">--%>
                            <asp:TextBox ID="txtfirst" runat="server" class="input--style-1" placeholder="Nombre" name="name" onpaste="return false"  minlength="5" maxlength="30"  onkeypress="return validar(event)"></asp:TextBox>
                        </div>
                        <div class="input-group">                           
                            <asp:TextBox ID="txtapellido" runat="server" class="input--style-1" placeholder="Apellido" onpaste="return false"  minlength="5" maxlength="30" onkeypress="return validar(event)" ></asp:TextBox>
                        </div>
                         <div class="input-group">
                             <asp:TextBox ID="txtusuario" runat="server" class="input--style-1" placeholder="Usuario" onpaste="return false" minlength="5" maxlength="15"></asp:TextBox>
                        </div>
                       <%-- <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-1 js-datepicker" type="text" placeholder="BIRTHDATE" name="birthday">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>--%>
                          <%--  <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="gender">
                                            <option disabled="disabled" selected="selected">GENDER</option>
                                            <option>Male</option>
                                            <option>Female</option>
                                            <option>Other</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                      <%--  <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="class">
                                    <option disabled="disabled" selected="selected">CLASS</option>
                                    <option>Class 1</option>
                                    <option>Class 2</option>
                                    <option>Class 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>--%>
                        <div class="input-group">
                            <asp:TextBox ID="txtgmail" runat="server"  placeholder="Gmail" type="email" class="input--style-1"  onpaste="return false" minlength="5" maxlength="30"/>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <%--<input class="input--style-1" type="text" placeholder="REGISTRATION CODE" name="res_code">--%>
                                  <asp:TextBox ID="txtclave" runat="server"  placeholder=" Contraseña" type="password" class="input--style-1"  onpaste="return false" minlength="2" maxlength="15"/>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">                                    
                                      <asp:TextBox ID="txtconfirm" runat="server"  placeholder="Repita Contraseña" type="password" class="input--style-1"  onpaste="return false" minlength="2" maxlength="15"/>
                                </div>
                        <div class="p-t-20">
                           <%-- <button class="btn btn--radius btn--green" type="submit">Submit</button>--%>
                            <asp:Button ID="Button1" runat="server" Text="Registrarse" class="btn btn--radius btn--green" OnClick="Button1_Click"/>
                        </div>
                            <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                      </form>
                </div>
            </div>
        </div>
    </div>
        </div>
         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
 <script src="js/bootstrap.min.js"></script> 
    </form>
    <%--  !-- Jquery JS-->--%>
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
    
</body>
</html>
