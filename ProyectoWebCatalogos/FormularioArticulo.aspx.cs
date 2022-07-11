using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
namespace ProyectoWebCatalogos
{
    public partial class FormularioArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ddlMarcas.DataSource = Enum.GetNames(typeof(EMarcas));
                this.ddlMarcas.DataBind();
                this.ddlCategorias.DataSource = Enum.GetNames(typeof(ECategorias));
                this.ddlCategorias.DataBind();
            }
        }
    }
}