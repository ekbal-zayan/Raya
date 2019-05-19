using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_pro
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                emloyee.InsertParameters["hrId"].DefaultValue = Text1.Text;
                emloyee.InsertParameters["name"].DefaultValue = Text2.Text;
                emloyee.InsertParameters["hireDate"].DefaultValue = Text3.Text;
                emloyee.InsertParameters["salary"].DefaultValue = Text4.Text;
                emloyee.Insert();
                Label1.Text = " Inserted successfully !!";
            }
            catch (Exception exxx)
            {
                Label1.Text = exxx.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}