using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class My : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ROHITHSAIDATTA-\SQLEXPRESS;Initial Catalog=Diet;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Cust where Id='"+Session["Uid"].ToString()+"'",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        TextBox1.Text = dr[0].ToString();
        TextBox2.Text = dr[1].ToString();
        TextBox3.Text = dr[2].ToString();
        TextBox4.Text = dr[4].ToString();
        TextBox5.Text = dr[3].ToString();
        con.Close();
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}