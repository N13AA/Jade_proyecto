<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrito.aspx.cs" Inherits="Proyecto_QR.carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Carrito</title>
    <style>
        #CheckOut{
            text-align:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Jade</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.aspx">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"> Contactanos </a></li>
                        <li class="nav-item"><a class="nav-link" href="login.aspx">Iniciar sesion</a></li>
                              <li class="nav-item dropdown">
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
                        </li>
                        <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle"  id="navbarDropdown2" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Idioma</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">Español</a></li>
                                <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="carrito-eng.aspx">English</a></li>
                                </ul>
                        </li>
                         </ul>
                                     
                        <div class="navbar-nav">
                    <a class="btn btn-outline-dark" href="carrito">Carrito</a>
                    <a class="btn btn-outline-dark" href="logout">Cerrar Sesión</a>
              </div>
               
                </div>
            </div>
        </nav>
          <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Carrito de compras</h1>

                </div>
            </div>
        </header>
        <div class=" container my-5">
            <asp:GridView ID="ShoppingCart" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-bordered" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="ID Producto">
                        <ItemTemplate>
                             <%# Eval ("ProductId") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Imagen">
                        <ItemTemplate>
                             <%# Eval ("Image") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Producto">
                        <ItemTemplate>
                             <%# Eval ("Name") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio">
                        <ItemTemplate>
                             <%# "$" + Eval ("UnitPrice") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cantidad">
                        <ItemTemplate>
                             <%# Eval ("Quantity") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                             <%# "$" + Convert.ToDouble(Eval("Quantity")) * Convert.ToDouble(Eval("UnitPrice"))  %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                             <a href='deletefromcart.aspx?productId=<%# Eval ("ProductId") %>' class="btn btn-danger">Eliminar</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div class="row">
                <div class="col-sm-12 col-lg-11 col-md-11">
                    <asp:Label ID="Total" CssClass="form-label" runat="server" Text="" Font-Bold="True"></asp:Label>
                </div>
                <div class="col-sm-12 col-md-1 col-lg-1">
                    <asp:Button ID="CheckOut" CssClass="btn btn-primary" runat="server" Text="Comprar" OnClick="CheckOut_Click" />
                </div>
            </div>
            
            <asp:HyperLink ID="QRUrl"  title="Click aquí para descargar el código" download runat="server"  >
                <asp:Image ID="QRImage" runat="server" />
            </asp:HyperLink>
           
        </div>
    </form>
</body>
</html>
