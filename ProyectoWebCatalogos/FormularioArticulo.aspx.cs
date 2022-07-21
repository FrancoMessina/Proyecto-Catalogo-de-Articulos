using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;
namespace ProyectoWebCatalogos
{
    public partial class FormularioArticulo : Page
    {
        private MarcaNegocio marcaNegocio;
        private CategoriaNegocio categoriaNegocio;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    
                    this.marcaNegocio = new MarcaNegocio();
                    this.categoriaNegocio = new CategoriaNegocio();
                    List<Marca> listaMarcas = marcaNegocio.Listar();
                    List<Categoria> listaCategorias = this.categoriaNegocio.Listar();
                    this.ddlMarcas.DataSource = listaMarcas;
                    this.ddlMarcas.DataTextField = "Descripcion";
                    this.ddlMarcas.DataValueField = "Id";
                    this.ddlMarcas.DataBind();
                    this.ddlCategorias.DataSource = listaCategorias;
                    this.ddlCategorias.DataTextField = "Descripcion";
                    this.ddlCategorias.DataValueField = "Id";
                    this.ddlCategorias.DataBind();
                    if (Request.QueryString["Id"] != null)
                    {

                    }
                }
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw;
                //Redireccion a página de error.
            }

        }


        protected void txtImagen_TextChanged(object sender, EventArgs e)
        {
            try
            {
                this.CargarImagen(txtImagen.Text);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private void CargarImagen(string imagen)
        {
            try
            {
                this.imgArticulo.ImageUrl = imagen;
            }
            catch (Exception)
            {
                this.imgArticulo.ImageUrl = "https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png";
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                    Articulo nuevo = new Articulo();
                    ArticuloNegocio articuloNegocio = new ArticuloNegocio();
                    nuevo.Codigo = txtCodigo.Text;
                    nuevo.Nombre = txtNombre.Text;
                    nuevo.Descripcion = txtDescripcion.Text;
                    nuevo.UrlImagen = txtImagen.Text;
                    nuevo.Precio = decimal.Parse(txtPrecio.Text);
                    nuevo.Marca = new Marca();
                    nuevo.Marca.Id = int.Parse(ddlMarcas.SelectedValue);
                    nuevo.Categoria = new Categoria();
                    nuevo.Categoria.Id = int.Parse(ddlCategorias.SelectedValue);
                    articuloNegocio.AgregarArticuloSP(nuevo);
                    Response.Redirect("ArticulosLista.aspx",false);
              
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw;
                //Redireccion a página de error.
            }
        }
    }
}