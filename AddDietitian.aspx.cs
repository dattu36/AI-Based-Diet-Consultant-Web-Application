using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddDietitian : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ROHITHSAIDATTA-\SQLEXPRESS;Initial Catalog=Diet;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Success. Dietitian Added');", true);
            Session["Add"] = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text != "")
        {
            string ins = "insert into dietitian values('" + TextBoxName.Text + "','" + TextBoxMob.Text + "','" + TextBoxEmail.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBoxPass.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            con.Open();
            cmd.ExecuteReader();
            con.Close();
            Session["Add"] = "Data";
            Response.Redirect("AddDietitian.aspx");
        }
        else
        {
            LabelErr.Visible = true;
        }
    }
}