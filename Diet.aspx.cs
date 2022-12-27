using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Diet : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ROHITHSAIDATTA-\SQLEXPRESS;Initial Catalog=Diet;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string ftype = Session["Ftype"].ToString();
        LabelW.Text = Session["Weight"].ToString();
        LabelH.Text = Session["Height"].ToString();
        LabelID.Text = Session["Uid"].ToString();
        LabelName.Text = Session["Name"].ToString();
        SqlDataAdapter da;
        DataSet ds;
        string type = Session["type"].ToString(), s;
        if (ftype == "Veg")
        {
            if (type == "Normal" || type == "Under Weight")
            {
                s = "Select Top 2 Item,Protine,Carbo from DietChart where Veg = 'Yes' AND PCat='L' AND CCat='M' AND Type='B' Order By NewID()";
            }
            else
            {
                s = "Select Top 1 Item,Protine,Carbo from DietChart where Veg = 'Yes' AND PCat='H' AND CCat='H' AND Type='B' Order By NewID()";
            }
        }
        else
        {
            if (type == "Normal" || type == "Under Weight")
            {
                s = "Select Top 2 Item,Protine,Carbo from DietChart where Veg = 'No' and PCat='L' AND CCat='M' AND Type='B' Order By NewID()";
            }
            else
            {
                s = "Select Top 1 Item,Protine,Carbo from DietChart where Veg = 'No' and PCat='H' AND CCat='H' AND Type='B' Order By NewID()";
            }
        }
        da = new SqlDataAdapter(s, con);
        ds = new DataSet();
        da.Fill(ds);
        string cn = ds.Tables[0].Rows.Count.ToString();
        GridView1.DataSource = ds;
        GridView1.DataBind();

        if (ftype == "Veg")
        {
            if (type == "Normal" || type == "Under Weight")
            {
                s = "Select Top 4 Item,Protine,Carbo from DietChart where Veg = 'Yes' AND PCat='L' AND CCat='M' AND Type='L' Order By NewID()";
            }
            else
            {
                s = "Select Top 3 Item,Protine,Carbo from DietChart where Veg = 'Yes' AND PCat='H' AND CCat='H' AND Type='L' Order By NewID()";
            }
        }
        else
        {
            if (type == "Normal" || type == "Under Weight")
            {
                s = "Select Top 4 Item,Protine,Carbo from DietChart where Veg = 'No' and PCat='L' AND CCat='M' AND Type='L' Order By NewID()";
            }
            else
            {
                s = "Select Top 3 Item,Protine,Carbo from DietChart where Veg = 'No' and PCat='H' AND CCat='H' AND Type='L' Order By NewID()";
            }
        }
        da = new SqlDataAdapter(s, con);
        ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();

        if (ftype == "Veg")
        {
            if (type == "Normal" || type == "Under Weight")
            {
                s = "Select Top 2 Item,Protine,Carbo from DietChart where Veg = 'Yes' AND PCat='L' AND CCat='M' AND Type='S' Order By NewID()";
            }
            else
            {
                s = "Select Top 1 Item,Protine,Carbo from DietChart where Veg = 'Yes' AND PCat='H' AND CCat='H' AND Type='S' Order By NewID()";
            }
        }
        else
        {
            if (type == "Normal" || type == "Under Weight")
            {
                s = "Select Top 2 Item,Protine,Carbo from DietChart where Veg = 'No' and PCat='L' AND CCat='M' AND Type='S' Order By NewID()";
            }
            else
            {
                s = "Select Top 1 Item,Protine,Carbo from DietChart where Veg = 'No' and PCat='H' AND CCat='H' AND Type='S' Order By NewID()";
            }
        }
        da = new SqlDataAdapter(s, con);
        ds = new DataSet();
        da.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();

        if (ftype == "Veg")
        {
            if (type == "Normal" || type == "Under Weight")
            {
                s = "Select Top 2 Item,Protine,Carbo from DietChart where Veg = 'Yes' AND PCat='L' AND CCat='M' AND Type='D' Order By NewID()";
            }
            else
            {
                s = "Select Top 2 Item,Protine,Carbo from DietChart where Veg = 'Yes' AND PCat='H' AND CCat='H' AND Type='D' Order By NewID()";
            }
        }
        else
        {
            if (type == "Normal" || type == "Under Weight")
            {
                s = "Select Top 2 Item,Protine,Carbo from DietChart where Veg = 'No' and PCat='L' AND CCat='M' AND Type='D' Order By NewID()";
            }
            else
            {
                s = "Select Top 2 Item,Protine,Carbo from DietChart where Veg = 'No' and PCat='H' AND CCat='H' AND Type='D' Order By NewID()";
            }
        }
        da = new SqlDataAdapter(s, con);
        ds = new DataSet();
        da.Fill(ds);
        GridView4.DataSource = ds;
        GridView4.DataBind();

        Label3.Text = Session["Break"].ToString();
        Label5.Text = Session["Lunch"].ToString();
        Label7.Text = Session["Snacks"].ToString();
        Label9.Text = Session["Dinner"].ToString();
    }
}