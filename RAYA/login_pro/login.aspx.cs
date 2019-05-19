using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HW3.Noorkhzaimiah
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
                Response.Redirect("search.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                DataView view1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                if (view1.Count == 1)
                {
                    DataRowView row1 = view1[0];
                    Session["email"] = row1[0];
                    Response.Redirect("search.aspx");
                }
                else
                    Label1.Text = " Error !! TryAgain";
            }
            catch(Exception exx)
            {
                Label1.Text = exx.Message;
            }
            

        }
        }
    }
