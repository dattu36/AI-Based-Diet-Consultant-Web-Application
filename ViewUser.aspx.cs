using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ROHITHSAIDATTA-\SQLEXPRESS;Initial Catalog=Diet;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string s = "SELECT Id,Name,Address,Mobile,Email,disease FROM Cust";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.Visible = true;
                con.Close();
            }
            else
            {
                GridView1.Visible = false;
                lblMsg.Visible = true;
                lblMsg.Text = "Currently, No User Registered !!";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select Name from Cust where Name='" + TextBox1.Text + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            con.Close();
            string s = "SELECT Id,Name,Address,Mobile,Email,disease,Ftype FROM Cust where Name like '%" + TextBox1.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblMsg.Visible = false;
        }
        else
        {
            lblMsg.Text = "Name doesn't Exist !!";
            lblMsg.Visible = true;
        }
    }
}