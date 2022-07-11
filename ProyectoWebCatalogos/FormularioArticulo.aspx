<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="ProyectoWebCatalogos.FormularioArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <div class="row g-2">
            <div class="col-md">
                <div class="form-floating">
                    <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" placeholder="Ingresar Codigo"></asp:TextBox>
                    <label for="txtCodigo">Codigo</label>
                </div>
            </div>
            <div class="col-md">
                <div class="form-floating">
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresar Nombre"></asp:TextBox>
                    <label for="txtNombre">Nombre</label>
                </div>
            </div>
            <div class="form-floating">
                <asp:DropDownList ID="ddlMarcas" runat="server" CssClass="form-select form-select"></asp:DropDownList>
                <label for="ddlMarcas" class="floatingSelect">Marca</label>
            </div>
            <div class="form-floating">
                <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-select form-select"></asp:DropDownList>
                <label for="ddlCategorias" class="floatingSelect">Categoria</label>
            </div>
            <div class="form-floating">
                <textarea class="form-control" placeholder="Descripcíon del articulo" id="txtDescripcion" style="height: 100px"></textarea>
                <label for="txtDescripcion">Descripcíon</label>
            </div>
            <div class="form-floating">
                <asp:TextBox ID="txtImagen" runat="server" CssClass="form-control" placeholder="Ingresar Url Imagen o Cargar Archivo"></asp:TextBox>
                <label for="txtImagen">Imagen</label>
            </div>
            <div class="form-floating">
                <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control" placeholder="Ingresar Precio"></asp:TextBox>
                <label for="txtPrecio">Precio</label>
            </div>
        </div>
    </div>
    <div class="container p-3">
        <div class="col-md-12 text-center">
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary btn-lg" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-warning btn-lg" />
        </div>
    </div>

</asp:Content>
