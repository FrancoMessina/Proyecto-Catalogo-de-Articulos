<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetallesArticulo.aspx.cs" Inherits="ProyectoWebCatalogos.DetallesArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center">
        <div class="card text-dark bg-light mb-3 " style="max-width: 800px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="<%:this.Articulo.UrlImagen %>" class="img-fluid rounded-start" alt="imagen-Articulo">
                </div>
                <div class="col-md-8 card bg-light">
                    <div class="card-body">
                        <h5 class="card-title"><span class="card-text">Nombre: </span><%:this.Articulo.Nombre %></h5>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Codigo: <%:Articulo.Codigo %></li>
                            <li class="list-group-item">Categoria: <%:Articulo.Categoria %></li>
                            <li class="list-group-item">Marca: <%:Articulo.Marca %></li>
                            <li class="list-group-item">Descripcíon: <%:Articulo.Descripcion%></li>
                        </ul>
                        <div class="card-footer">
                           Precio $<%: Articulo.Precio %>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
