<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoWebCatalogos.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Catalogo de Articulos</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%
            foreach (Dominio.Articulo articulo in ListaArticulos)
            {
        %>
                <div class="col">
                    <div class="card bg-secondary">
                        <img src="<%: articulo.UrlImagen%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%: articulo.Nombre %></h5>
                            <p class="card-text"><%: articulo.Marca %></p>
                            <a href="DetallesArticulo.aspx?id=<%: articulo.Id %>" class="btn btn-info">Ver Detalles</a>
                        </div>
                    </div>
                </div>
        <%  }
        %>
    </div>
</asp:Content>
