<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="ProyectoWebCatalogos.FormularioArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Label ID="lblFiltro" runat="server" Text="Filtrar por Nombre">
        <asp:TextBox ID="txtFiltro" runat="server" AutoPostBack="true" ></asp:TextBox>
    </asp:Label>
    <div class="row justify-content-center">
        <div class="row g-2">
            <div class="col-6">
                <div class="col-md mb-3">
                    <div class="form-floating">
                        <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" placeholder="Ingresar Codigo"></asp:TextBox>
                        <label for="txtCodigo">Codigo</label>
                    </div>
                </div>
                <div class="col-md">
                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresar Nombre"></asp:TextBox>
                        <label for="txtNombre">Nombre</label>
                    </div>
                </div>
                <div class="form-floating mb-3">
                    <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-select form-select"></asp:DropDownList>
                    <label for="ddlCategorias" class="floatingSelect">Categoria</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:DropDownList ID="ddlMarcas" runat="server" CssClass="form-select form-select"></asp:DropDownList>
                    <label for="ddlMarcas" class="floatingSelect">Marca</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" />
                    <label for="txtDescripcion">Descripción</label>
                </div>
            </div>
            <div class="col-6">
                <div class="form-floating mb-3">
                    <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control" placeholder="Ingresar Precio"></asp:TextBox>
                    <label for="txtPrecio">Precio</label>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="txtImagen" runat="server" CssClass="form-control" placeholder="Ingresar Url Imagen o Cargar Archivo" AutoPostBack="true" OnTextChanged="txtImagen_TextChanged"></asp:TextBox>
                            <label for="txtImagen">Imagen</label>
                        </div>
                        <asp:Image ImageUrl="https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png"
                            runat="server" ID="imgArticulo" Width="60%" Height="250px" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <div class="container p-3">
        <div class="col-md-12 text-center">
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary btn-lg" OnClick="btnAgregar_Click"/>
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-warning btn-lg" OnClick="btnCancelar_Click" />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger btn-lg" OnClick="btnEliminar_Click"/>
        </div>
    </div>

</asp:Content>
