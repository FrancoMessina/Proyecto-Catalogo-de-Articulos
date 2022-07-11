<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArticulosLista.aspx.cs" Inherits="ProyectoWebCatalogos.ArticulosLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" AutoGenerateColumns="false" ID="dgvArticulos" CssClass="table table-dark table-hover" DataKeyNames="Id" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged"  AllowPaging="true" PageSize="3" OnPageIndexChanging="dgvArticulos_PageIndexChanging">
        <PagerStyle HorizontalAlign = "Center" CssClass = "pagination-ys" />
        <Columns>
            <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
            <asp:BoundField HeaderText="Categoría" DataField="Categoria.Descripcion" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
            <asp:CommandField HeaderText="" ShowSelectButton="true" SelectText="✍" />
        </Columns>
    </asp:GridView>
    <div class="d-grid gap-2 d-md-block">
        <a href="FormularioArticulo.aspx" class="btn btn-primary">Agregar</a>
    </div>
</asp:Content>
