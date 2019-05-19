using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.DirectoryServices;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Threading.Tasks;

public partial class Login : System.Web.UI.Page
{

    string _path = "";
    string _filterAttribute = "";
    NatquiceWebSer.Service Ws = new NatquiceWebSer.Service();
    DBVLDataContext dbMain = new DBVLDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //SessionManager.CurrentUserID = null;

            Session.Abandon(); // Does nothing
            Session.Clear();
            //Session.Abandon(); // Does nothing
            //SessionManager.CurrentUSerName = "";
            //Helper.HasPermission = false;


        }
    }

    string SecStr = Helper.SecStr();
    public string conString = "";
    protected void btnLogIn_Click(object sender, EventArgs e)
    {


        string userName = txtUser.Text;
        string pasword = txtPassword.Text;

        string paswordEncripted = "Nat1" + SoftexWebEngine.WebEncryptor.Encrypt(pasword);

        DataTable EmpDataTable = new DataTable();
        EmpDataTable = Ws.Login(SecStr, userName, pasword);
        if (EmpDataTable != null)
        {
            foreach (DataRow r in EmpDataTable.Rows)
            {
                // make row variable to return rows of employee table

                string Pass = r["Password"].ToString();

                //string str = Pass.Substring(0, 4);
                if (!Pass.StartsWith("Nat1"))
                    Response.Redirect("~/ResetLogin.aspx?Page=qw@#111");
            }
        }

        // var amo = Ws.GetStationName(SecStr);
        var user = (from usr in dbMain.Employees
                    where usr.UserID == userName && (usr.password == paswordEncripted || usr.password == pasword)
                    select usr).SingleOrDefault();
        if (user != null)
        {
            if (user.password == "123")
                Response.Redirect("~/ResetLogin.aspx?Page=qw@#111");

            var haspermsision = (from usrpages in dbMain.UserPages
                                 where
                                  usrpages.EmployeeID == user.ID
                                 select usrpages).ToList();
            if (haspermsision.Count() > 0)
            {
                Session["UNAME"] = user.Name;
                Session["UID"] = user.ID; ;
                Session["CurrentUserBranchID"] = user.BranchID;
                if (user.PurshasingAdmin.HasValue)
                    Session["PrAdmin"] = user.PurshasingAdmin.Value;
                else
                    Session["PrAdmin"] = false;
                Helper.HasPermission = true;

                Response.Redirect("~/Site.Master.aspx");
            }
            else
            {
                lblMsg.Text = "User Doesn't Has Permission";
            }
        }
        else
        {
            lblMsg.Text = "Incorrect user Name or Password";
        }

    }



    
}