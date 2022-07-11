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
    public partial class Default : Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        private ArticuloNegocio articuloNegocio;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.articuloNegocio = new ArticuloNegocio();
            Session.Add("ListaArticulos", this.articuloNegocio.ListarSP());
            this.ListaArticulos = Session["ListaArticulos"] as List<Articulo>;
        }
    }
}