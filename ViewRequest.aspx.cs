using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewRequest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ROHITHSAIDATTA-\SQLEXPRESS;Initial Catalog=Diet;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select uid,name,email,mob,disease,date,note from dietrequest";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
            lblMsg.Visible = false;
        }
        else
        {
            GridView1.Visible = false;
            lblMsg.Visible = true;
            lblMsg.Text = "Currently, No request from User !!";
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            string i = Convert.ToString(e.CommandArgument.ToString());
            string s = "select uid,name,email,mob,disease,ftype,date,note from dietrequest where uid='" + i + "'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Session["Id"] = ds.Tables[0].Rows[0][0].ToString();
                Session["Disease"] = ds.Tables[0].Rows[0][4].ToString();
                Session["Ftype"] = ds.Tables[0].Rows[0][5].ToString();
                Response.Redirect("CreatePlan.aspx");
            }
        }
    }
}