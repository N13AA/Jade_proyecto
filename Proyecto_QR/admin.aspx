<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Proyecto_QR.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin panel</title>
</head>
<body>
    
        <div class="container my-4">
            <div class="row">

                <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Productos</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Crear productos</h6>
                        <a class="btn btn-primary" href="crearproductos">Ir</a>
                      </div>
                    </div>
                </div>

                <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Productos</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Administrar productos</h6>
                        <a class="btn btn-primary" href="administrarproductos">Ir</a>
                      </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Carrito</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Ver carrito</h6>
                        <a class="btn btn-primary" href="carrito">Ir</a>
                      </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Ventas</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Ver Ventas</h6>
                        <a class="btn btn-primary" href="ventas">Ver</a>
                      </div>
                    </div>
                </div>
        </div>
        </div>
        
    </form>
</body>
</html>
