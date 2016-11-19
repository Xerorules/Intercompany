using CAPA_NEGOCIO;
//using Microsoft.Office.Interop.Excel;
//using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DIONYS_ERP
{
    public partial class FRM_CONTROLGALERIA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["ID_EMPRESA"].ToString() != "004")
                {
                    Response.Redirect("FRM_PRINCIPAL.aspx");
                }
                    rdbLISTAGALERIAS.SelectedIndex = 0;
                    //CARGAR FILTROS
                    rdbLISTAGALERIAS_SelectedIndexChanged(sender, e);
                    // ===========================
                    //cboPROPIETARIOS.SelectedIndex=0;
                    cboPROPIETARIOS_SelectedIndexChanged(sender, e);
                    //cboTIENDAS.SelectedIndex=0;
                    //cboCONDICION.SelectedIndex = 0;
            }
        }

        #region OBJETOS_INSTANCIAR
        N_VENTA GALERIA = new N_VENTA();
        #endregion

        public void CARGAR_PROPIETARIOS(string NOMGALERIA)
        {
            DataTable dt = new DataTable();
            dt = GALERIA.LISTA_PROPIETARIOS(NOMGALERIA);
            cboPROPIETARIOS.DataSource = dt;
            cboPROPIETARIOS.DataValueField = "DESCRIPCION_D";
            cboPROPIETARIOS.DataTextField = "DESCRIPCION";
            cboPROPIETARIOS.DataBind();
        }

        public void CARGAR_TIENDAS(String GALERIA_OPC,String PROPIETARIO)
        {
            DataTable dt = new DataTable();
            dt = GALERIA.LISTA_TIENDASxPROPIETARIO(GALERIA_OPC,PROPIETARIO);
            cboTIENDAS.DataSource = dt;
            cboTIENDAS.DataValueField = "DESCRIPCION_T";
            cboTIENDAS.DataTextField = "DESCRIPCION";
            
            cboTIENDAS.DataBind();
        }


       

        protected void rdbLISTAGALERIAS_SelectedIndexChanged(object sender, EventArgs e)
        {
            CARGAR_PROPIETARIOS(rdbLISTAGALERIAS.SelectedItem.Text);
            cboPROPIETARIOS_SelectedIndexChanged(sender, e);
        }
 
        protected void cboPROPIETARIOS_SelectedIndexChanged(object sender, EventArgs e)
        {
            CARGAR_TIENDAS(rdbLISTAGALERIAS.SelectedItem.Text,cboPROPIETARIOS.SelectedValue.ToString());
        }

        protected void gvDATOSCONTROL_GALERIA_RowDataBound(object sender, GridViewRowEventArgs e) //ESTE METODO SERVIRA PARA COLOREAR LAS CELDAS DEL DATAGRIDVIEW
        {
             
            //if (e.Row.RowType==DataControlRowType.DataRow)
            //{
                
            //    Image img=(Image)e.Row.FindControl("CGESTADO");
            //    String cod = e.Row.Cells[16].Text.Trim();
            //    String ruta = String.Format("ICONOS/{OCUPADO}.png",cod);
            //    String formato = String.Format
            //}
            


            if (e.Row.RowType == DataControlRowType.DataRow) {
                e.Row.Cells[17].BackColor = System.Drawing.Color.Gold;
                String estado = gvDATOSCONTROL_GALERIA.DataKeys[e.Row.RowIndex].Value.ToString();
                //String estado = e.Row.Cells[15].Text.Trim();
                Image imgESTADO = (Image)e.Row.FindControl("imgESTADO");

                if (estado=="OCUPADO")
                {
                    imgESTADO.ImageUrl="ICONOS/VACIO.png";
                }else
                {
                    if (estado == "DISPONIBLE")
                    {
                        imgESTADO.ImageUrl = "ICONOS/OCUPADO.png";
                    }
                    else
                    {
                        if (estado == "MANTENIMIENTO")
                        {
                            imgESTADO.ImageUrl = "ICONOS/MANTENIMIENTO.png";
                        }
                    }
                }

                for (int i = 4; i < 17; i++)
                {
                    
                    int posicion = (e.Row.Cells[i].Text).IndexOf("/", 0);
                    
                    
                    //String result = (e.Row.Cells[i].Text).Substring(1,posicion);
                    
                    if (posicion == -1)
                    {
                        e.Row.Cells[i].BackColor = System.Drawing.Color.Gold;
                        e.Row.Cells[i].ForeColor = System.Drawing.Color.White;

                      
                    }
                    else
                    {
                        int posicion2 = (e.Row.Cells[i].Text).IndexOf("/", posicion+1);
                        String result = (e.Row.Cells[i].Text).Substring(0, posicion);
                        String result2 = (e.Row.Cells[i].Text).Substring(posicion+2,posicion2-(posicion+2));

                        //Display the company name in italics.
                        if (result == "0.00")
                        {
                            e.Row.Cells[i].BackColor = System.Drawing.Color.OliveDrab;
                            e.Row.Cells[i].ForeColor = System.Drawing.Color.White;
                        }
                        else
                        {
                            e.Row.Cells[i].BackColor = System.Drawing.Color.Firebrick;
                            e.Row.Cells[i].ForeColor = System.Drawing.Color.White;
                        }

                        if(result2=="0.00")
                        {
                            e.Row.Cells[i].Text = "VACIO";
                            e.Row.Cells[i].BackColor = System.Drawing.Color.DarkOrange;
                        }
                    }
                }
            }
        }

        void EXPORTAR_EXCEL(GridView tabla)
        {
            if (tabla.Rows.Count > 0)
            {
                StringBuilder sb = new StringBuilder();
                StringWriter sw = new StringWriter(sb);
                HtmlTextWriter htw = new HtmlTextWriter(sw);
                Page pagina = new Page();
                HtmlForm form = new HtmlForm();
                //GridView dg = new GridView();
                //dg.EnableViewState = false;
                //dg.DataSource = tabla;
                //dg.DataBind();
                pagina.EnableEventValidation = false;
                pagina.DesignerInitialize();
                pagina.Controls.Add(form);
                form.Controls.Add(gvDATOSCONTROL_GALERIA);
                pagina.RenderControl(htw);
                Response.Clear();                             
                Response.Buffer = true;
                Response.ContentType = "application/vnd.ms-excel";
                Response.AddHeader("Content-Disposition", "attachment;filename=REPORTE_CAJA.xls");
                Response.Charset = "UTF-8";
                Response.ContentEncoding = Encoding.Default;
                Response.Write(sb.ToString());
                Response.End();
            }
        }

        protected void imgBtnCONSULTAR_Click(object sender, ImageClickEventArgs e)
        {
            gvDATOSCONTROL_GALERIA.DataSource = GALERIA.DATOS_GALERIA(rdbLISTAGALERIAS.SelectedItem.Text, cboPROPIETARIOS.SelectedValue.ToString(), cboTIENDAS.SelectedValue.ToString(), cboESTADO.SelectedValue.ToString());
            gvDATOSCONTROL_GALERIA.DataBind();
        }

        protected void imgBtnEXCEL_Click(object sender, ImageClickEventArgs e)
        {
            EXPORTAR_EXCEL(gvDATOSCONTROL_GALERIA);
        }



    }
}