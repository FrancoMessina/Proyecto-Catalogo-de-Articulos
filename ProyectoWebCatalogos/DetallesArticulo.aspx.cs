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
    public partial class DetallesArticulo : Page
    {
        public Articulo Articulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                var id = int.Parse(Request.QueryString["Id"]);
                this.Articulo = ((List<Articulo>)Session["ListaArticulos"]).Find(x => x.Id == id);
            }
        }
    }
}