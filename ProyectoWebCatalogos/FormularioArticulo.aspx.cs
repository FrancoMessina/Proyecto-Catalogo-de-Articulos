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
                    //Config si estamos modificando
                    string id = Request.QueryString["Id"] != null ? Request.QueryString["Id"].ToString() : string.Empty;
                    if (!string.IsNullOrEmpty(id))
                    {
                        //Pre cargar datos
                        ArticuloNegocio articuloNegocio = new ArticuloNegocio();
                        Articulo articuloRecibido = articuloNegocio.BuscarArticuloSP(int.Parse(id));
                        txtNombre.Text = articuloRecibido.Nombre;
                        txtCodigo.Text = articuloRecibido.Codigo;
                        txtImagen.Text = articuloRecibido.UrlImagen;
                        txtPrecio.Text = articuloRecibido.Precio.ToString();
                        txtDescripcion.Text = articuloRecibido.Descripcion;
                        this.CargarImagen(articuloRecibido.UrlImagen);
                        this.ddlCategorias.SelectedValue = articuloRecibido.Categoria.Id.ToString();
                        this.ddlMarcas.SelectedValue = articuloRecibido.Marca.Id.ToString();
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
                Articulo articulo = new Articulo();
                ArticuloNegocio articuloNegocio = new ArticuloNegocio();
                string id = Request.QueryString["Id"] != null ? Request.QueryString["Id"].ToString() : string.Empty;
                articulo.Codigo = txtCodigo.Text;
                articulo.Nombre = txtNombre.Text;
                articulo.Descripcion = txtDescripcion.Text;
                articulo.UrlImagen = txtImagen.Text;
                articulo.Precio = decimal.Parse(txtPrecio.Text);
                articulo.Marca = new Marca();
                articulo.Marca.Id = int.Parse(ddlMarcas.SelectedValue);
                articulo.Categoria = new Categoria();
                articulo.Categoria.Id = int.Parse(ddlCategorias.SelectedValue);
                articuloNegocio.AgregarArticuloSP(articulo);
                if (!string.IsNullOrEmpty(id))
                {
                    articulo.Id = int.Parse(id);
                    articuloNegocio.ModificarArticuloSP(articulo);
                }
                else
                    articuloNegocio.AgregarArticuloSP(articulo);

                
                Response.Redirect("ArticulosLista.aspx", false);

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