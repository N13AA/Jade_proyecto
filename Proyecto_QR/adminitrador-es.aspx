<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminitrador-es.aspx.cs" Inherits="ptcfinal.adminitrador_es" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Jade</title>
      <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                <!-- Responsive navbar-->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Jade</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="WebForm1.aspx">Agregar productos</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"> Editar productos </a></li>
                        <li class="nav-item"><a class="nav-link" href="login.aspx">Eliminar productos</a></li>
                    <%--    <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Caballero</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="productos-h-es.aspx">Todos los productos</a></li>
                                <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="camisa-h-es.aspx">Camisas</a></li>
                                 <li><a class="dropdown-item" href="pantalones-h-es.aspx">Pantalones</a></li>
                                    <li><a class="dropdown-item" href="trajes-es.aspx">Trajes</a></li>
                                 <li><a class="dropdown-item" href="zapatos-h-es.aspx">zapatos</a></li>
                                 <li><a class="dropdown-item" href="accesorios-h-es.aspx">Accesorios</a></li>
                                </ul>
                        </li>
                    <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle"  id="navbarDropdown1" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Damas</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <li><a class="dropdown-item" href="productos-m-es.aspx">Todos los productos</a></li>
                                <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="camisa-m-es.aspx">Camisas</a></li>
                                 <li><a class="dropdown-item" href="pantalones-m-es.aspx">Pantalones</a></li>
                                    <li><a class="dropdown-item" href="Vestidos-es.aspx">Vestidos</a></li>
                                 <li><a class="dropdown-item" href="Zapatos-m-es.aspx">zapatos</a></li>
                                 <li><a class="dropdown-item" href="accesorios-m-es.aspx">Accesorios</a></li>
                                </ul>
                        </li>--%>
                        <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle"  id="navbarDropdown2" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Idioma</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">Español</a></li>
                                <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="Inicio-eng.aspx">English</a></li>
                                </ul>
                        </li>
                         </ul>
                    <form class="d-flex">
                        <asp:Button ID="Button1" runat="server" Text="Cerrar sesion" class="btn btn-outline-dark" OnClick="Button1_Click" />
                     <%--  <%-- <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>--%>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Bienvenido administrador</h1>
<%--                    <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>--%>
                </div>
            </div>
        </header>
  
        <!-- Footer-->
        <%--<footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>--%>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
                
         </form>
</body>
</html>

