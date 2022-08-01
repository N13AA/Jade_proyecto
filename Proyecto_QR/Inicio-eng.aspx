﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio-eng.aspx.cs" Inherits="ptcfinal.Inicio_eng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/styles.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inicio</title>
    <style>
        
        .card-image-top{
            height:30%;
            max-height:30%;
            width:auto;
        }
    </style>
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
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="WebForm1.aspx">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"> Contact us </a></li>
                        <li class="nav-item"><a class="nav-link" href="login-eng.aspx">Log in</a></li>
                        <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Gentleman</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="productos-h-eng.aspx">All products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="camisas-h-eng.aspx">Shirts</a></li>
                                 <li><a class="dropdown-item" href="pantalones-h-eng.aspx">Trousers</a></li>
                                    <li><a class="dropdown-item" href="trajes-eng.aspx">Suits</a></li>
                                 <li><a class="dropdown-item" href="zapatos-h-eng.aspx">Shoes</a></li>
                                 <li><a class="dropdown-item" href="accesorios-h-eng.aspx">Accessories</a></li>
                                </ul>
                        </li>
                    <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle"  id="navbarDropdown1" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Ladies</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <li><a class="dropdown-item" href="productos-m-eng.aspx">All products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="camisas-m-eng.aspx">Blouses</a></li>
                                 <li><a class="dropdown-item" href="pantalones-m-eng.aspx">Trousers</a></li>
                                    <li><a class="dropdown-item" href="vestidos-eng.aspx">Dresses</a></li>
                               <li><a class="dropdown-item" href="zapatos-m-eng.aspx">Shoes</a></li>
                                 <li><a class="dropdown-item" href="accesorios-m-eng.aspx">Accessories</a></li>
                                </ul>
                        </li>
                        <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle"  id="navbarDropdown2" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Language</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="index.aspx">Español</a></li>
                                <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="#!">English</a></li>
                                </ul>
                        </li>
                         </ul>
                      <form class="d-flex">
                        <div class="navbar-nav">
                    <a class="btn btn-outline-dark" href="carrito">cart</a>
                    <a class="btn btn-outline-dark" href="logout">log out</a>
              </div>
                    </form>
                </div>
            </div>
        </nav>
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Welcome to jade</h1>

                </div>
            </div>
        </header>
        <div class="container my-4">
            <div class="row">
                <asp:Literal ID="ProductsLiteral" runat="server"></asp:Literal>
            </div>
        </div>
    </form>
</body>
</html>