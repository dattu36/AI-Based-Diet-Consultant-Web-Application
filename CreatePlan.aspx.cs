using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CreatePlan : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ROHITHSAIDATTA-\SQLEXPRESS;Initial Catalog=Diet;Integrated Security=True");
    int f = 1;
    int n = 2;
    int lf1 = 9;
    int ln1 = 10;
    int ef1 = 25;
    int en1 = 26;
    int df1 = 33;
    int dn1 = 34;
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelUid.Text = Session["Id"].ToString();
        if(Session["Add"]=="Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Success. Diet Plan created');", true);
            Session["Add"] = "";
        }
        LabelDisease.Text = Session["Disease"].ToString();
        LabelFtype.Text = Session["Ftype"].ToString();
        if(LabelDisease.Text=="")
        {
            LabelDisease.Text = "None";
        }
        if (!IsPostBack)
        {
            string str = "select uid,type,fooditem,time,note from dietplan where uid='" + LabelUid.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string type = ds.Tables[0].Rows[i][1].ToString();
                    string food = ds.Tables[0].Rows[i][2].ToString();
                    string time = ds.Tables[0].Rows[i][3].ToString();
                    string note = ds.Tables[0].Rows[i][4].ToString();
                    if (type == "Breakfast")
                    {
                        TextBoxBrkTm.Text = time;
                        string txte = "TextBox" + Convert.ToString(f);
                        string txto = "TextBox" + Convert.ToString(n);
                        TextBox txt1 = Panel1.FindControl(txte) as TextBox;
                        TextBox txt2 = Panel1.FindControl(txto) as TextBox;
                        txt1.Text = food;
                        txt2.Text = note;
                        f = f + 2;
                        n = n + 2;
                    }
                    else if (type == "Lunch")
                    {
                        TextBoxLnTm.Text = time;
                        string txte = "TextBox" + Convert.ToString(lf1);
                        string txto = "TextBox" + Convert.ToString(ln1);
                        TextBox txt1 = Panel1.FindControl(txte) as TextBox;
                        TextBox txt2 = Panel1.FindControl(txto) as TextBox;
                        txt1.Text = food;
                        txt2.Text = note;
                        lf1 = lf1 + 2;
                        ln1 = ln1 + 2;
                    }
                    else if (type == "Evening Snacks")
                    {
                        TextBoxEveTm.Text = time;
                        string txte = "TextBox" + Convert.ToString(ef1);
                        string txto = "TextBox" + Convert.ToString(en1);
                        TextBox txt1 = Panel1.FindControl(txte) as TextBox;
                        TextBox txt2 = Panel1.FindControl(txto) as TextBox;
                        txt1.Text = food;
                        txt2.Text = note;
                        ef1 = ef1 + 2;
                        en1 = en1 + 2;
                    }
                    else if (type == "Dinner")
                    {
                        TextBoxDnTm.Text = time;
                        string txte = "TextBox" + Convert.ToString(df1);
                        string txto = "TextBox" + Convert.ToString(dn1);
                        TextBox txt1 = Panel1.FindControl(txte) as TextBox;
                        TextBox txt2 = Panel1.FindControl(txto) as TextBox;
                        txt1.Text = food;
                        txt2.Text = note;
                        df1 = df1 + 2;
                        dn1 = dn1 + 2;
                    }
                }
                Button1.Text = "Update Plan";
            }
            else
            {
                Button1.Text = "Create Plan";
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            LabelErr1.Visible = false;
            {
                if (TextBox3.Text != "")
                {
                    LabelErr1.Visible = false;
                    if (TextBox9.Text != "")
                    {
                        LabelErr2.Visible = false;
                        if (TextBox11.Text != "")
                        {
                            LabelErr2.Visible = false;
                            if (TextBox13.Text != "")
                            {
                                LabelErr2.Visible = false;
                                if (TextBox15.Text != "")
                                {
                                    LabelErr2.Visible = false;
                                    if (TextBox25.Text != "")
                                    {
                                        LabelErr3.Visible = false;
                                        if (TextBox27.Text != "")
                                        {
                                            LabelErr3.Visible = false;
                                            if (TextBox33.Text != "")
                                            {
                                                LabelErr4.Visible = false;
                                                if (TextBox35.Text != "")
                                                {
                                                    LabelErr4.Visible = false;
                                                    if (TextBox37.Text != "")
                                                    {
                                                        LabelErr4.Visible = false;
                                                        if (TextBox39.Text != "")
                                                        {
                                                            LabelErr4.Visible = false;
                                                            if (Button1.Text != "Update Plan")
                                                            {
                                                                for (int i = 0; i <= 3; i++)
                                                                {
                                                                    string txte = "TextBox" + Convert.ToString(f);
                                                                    string txto = "TextBox" + Convert.ToString(n);
                                                                    TextBox txt1 = Panel1.FindControl(txte) as TextBox;
                                                                    TextBox txt2 = Panel1.FindControl(txto) as TextBox;
                                                                    string id = txt1.Text;
                                                                    string id1 = txt2.Text;
                                                                    if (id != "" && id1 != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelBrk.Text + "','" + id + "','" + TextBoxBrkTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else if (id != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelBrk.Text + "','" + id + "','" + TextBoxBrkTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else
                                                                    {
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                }
                                                                for (int i = 0; i <= 7; i++)
                                                                {
                                                                    string txte = "TextBox" + Convert.ToString(f);
                                                                    string txto = "TextBox" + Convert.ToString(n);
                                                                    TextBox txt1 = Panel4.FindControl(txte) as TextBox;
                                                                    TextBox txt2 = Panel4.FindControl(txto) as TextBox;
                                                                    string id = txt1.Text;
                                                                    string id1 = txt2.Text;
                                                                    if (id != "" && id1 != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelLnh.Text + "','" + id + "','" + TextBoxLnTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else if (id != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelLnh.Text + "','" + id + "','" + TextBoxLnTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else
                                                                    {
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                }
                                                                for (int i = 0; i <= 3; i++)
                                                                {
                                                                    string txte = "TextBox" + Convert.ToString(f);
                                                                    string txto = "TextBox" + Convert.ToString(n);
                                                                    TextBox txt1 = Panel1.FindControl(txte) as TextBox;
                                                                    TextBox txt2 = Panel1.FindControl(txto) as TextBox;
                                                                    string id = txt1.Text;
                                                                    string id1 = txt2.Text;
                                                                    if (id != "" && id1 != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelEve.Text + "','" + id + "','" + TextBoxEveTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else if (id != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelEve.Text + "','" + id + "','" + TextBoxEveTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else
                                                                    {
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                }
                                                                for (int i = 0; i <= 7; i++)
                                                                {
                                                                    string txte = "TextBox" + Convert.ToString(f);
                                                                    string txto = "TextBox" + Convert.ToString(n);
                                                                    TextBox txt1 = Panel4.FindControl(txte) as TextBox;
                                                                    TextBox txt2 = Panel4.FindControl(txto) as TextBox;
                                                                    string id = txt1.Text;
                                                                    string id1 = txt2.Text;
                                                                    if (id != "" && id1 != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelDnr.Text + "','" + id + "','" + TextBoxDnTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else if (id != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelDnr.Text + "','" + id + "','" + TextBoxDnTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else
                                                                    {
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                }
                                                            }
                                                            else
                                                            {
                                                                string dele = "delete from dietplan where uid='" + LabelUid.Text + "'";
                                                                SqlCommand cmd2 = new SqlCommand(dele, con);
                                                                con.Open();
                                                                cmd2.ExecuteNonQuery();
                                                                con.Close();
                                                                int f = 1;
                                                                int n = 2;
                                                                for (int i = 0; i <= 3; i++)
                                                                {
                                                                    string txte = "TextBox" + Convert.ToString(f);
                                                                    string txto = "TextBox" + Convert.ToString(n);
                                                                    TextBox txt1 = Panel1.FindControl(txte) as TextBox;
                                                                    TextBox txt2 = Panel1.FindControl(txto) as TextBox;
                                                                    string id = txt1.Text;
                                                                    string id1 = txt2.Text;
                                                                    if (id != "" && id1 != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelBrk.Text + "','" + id + "','" + TextBoxBrkTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else if (id != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelBrk.Text + "','" + id + "','" + TextBoxBrkTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else
                                                                    {
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                }
                                                                for (int i = 0; i <= 7; i++)
                                                                {
                                                                    string txte = "TextBox" + Convert.ToString(f);
                                                                    string txto = "TextBox" + Convert.ToString(n);
                                                                    TextBox txt1 = Panel4.FindControl(txte) as TextBox;
                                                                    TextBox txt2 = Panel4.FindControl(txto) as TextBox;
                                                                    string id = txt1.Text;
                                                                    string id1 = txt2.Text;
                                                                    if (id != "" && id1 != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelLnh.Text + "','" + id + "','" + TextBoxLnTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else if (id != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelLnh.Text + "','" + id + "','" + TextBoxLnTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else
                                                                    {
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                }
                                                                for (int i = 0; i <= 3; i++)
                                                                {
                                                                    string txte = "TextBox" + Convert.ToString(f);
                                                                    string txto = "TextBox" + Convert.ToString(n);
                                                                    TextBox txt1 = Panel1.FindControl(txte) as TextBox;
                                                                    TextBox txt2 = Panel1.FindControl(txto) as TextBox;
                                                                    string id = txt1.Text;
                                                                    string id1 = txt2.Text;
                                                                    if (id != "" && id1 != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelEve.Text + "','" + id + "','" + TextBoxEveTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else if (id != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelEve.Text + "','" + id + "','" + TextBoxEveTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else
                                                                    {
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                }
                                                                for (int i = 0; i <= 7; i++)
                                                                {
                                                                    string txte = "TextBox" + Convert.ToString(f);
                                                                    string txto = "TextBox" + Convert.ToString(n);
                                                                    TextBox txt1 = Panel4.FindControl(txte) as TextBox;
                                                                    TextBox txt2 = Panel4.FindControl(txto) as TextBox;
                                                                    string id = txt1.Text;
                                                                    string id1 = txt2.Text;
                                                                    if (id != "" && id1 != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelDnr.Text + "','" + id + "','" + TextBoxDnTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else if (id != "")
                                                                    {
                                                                        string ins = "insert into dietplan values('" + LabelUid.Text + "','" + LabelDnr.Text + "','" + id + "','" + TextBoxDnTm.Text + "','" + id1 + "')";
                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                        con.Open();
                                                                        cmd.ExecuteNonQuery();
                                                                        con.Close();
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                    else
                                                                    {
                                                                        f = f + 2;
                                                                        n = n + 2;
                                                                    }
                                                                }
                                                            }
                                                            string del = "delete from dietrequest where uid='" + LabelUid.Text + "'";
                                                            SqlCommand cmd1 = new SqlCommand(del, con);
                                                            con.Open();
                                                            cmd1.ExecuteNonQuery();
                                                            con.Close();
                                                            Session["Add"] = "Data";
                                                            Response.Redirect("CreatePlan.aspx");
                                                        }
                                                        else
                                                        {
                                                            LabelErr4.Visible = true;
                                                            Panel1.BackColor = System.Drawing.Color.Empty;
                                                            Panel3.BackColor = System.Drawing.Color.Empty;
                                                            Panel5.BackColor = System.Drawing.Color.Empty;
                                                            Panel7.BackColor = System.Drawing.Color.Red;
                                                        }
                                                    }
                                                    else
                                                    {
                                                        LabelErr4.Visible = true;
                                                        Panel1.BackColor = System.Drawing.Color.Empty;
                                                        Panel3.BackColor = System.Drawing.Color.Empty;
                                                        Panel5.BackColor = System.Drawing.Color.Empty;
                                                        Panel7.BackColor = System.Drawing.Color.Red;
                                                    }
                                                }
                                                else
                                                {
                                                    LabelErr4.Visible = true;
                                                    Panel1.BackColor = System.Drawing.Color.Empty;
                                                    Panel3.BackColor = System.Drawing.Color.Empty;
                                                    Panel5.BackColor = System.Drawing.Color.Empty;
                                                    Panel7.BackColor = System.Drawing.Color.Red;
                                                }
                                            }
                                            else
                                            {
                                                LabelErr4.Visible = true;
                                                Panel1.BackColor = System.Drawing.Color.Empty;
                                                Panel3.BackColor = System.Drawing.Color.Empty;
                                                Panel5.BackColor = System.Drawing.Color.Empty;
                                                Panel7.BackColor = System.Drawing.Color.Red;
                                            }
                                        }
                                        else
                                        {
                                            LabelErr3.Visible = true;
                                            Panel1.BackColor = System.Drawing.Color.Empty;
                                            Panel3.BackColor = System.Drawing.Color.Empty;
                                            Panel5.BackColor = System.Drawing.Color.Red;
                                            Panel7.BackColor = System.Drawing.Color.Empty;
                                        }
                                    }
                                    else
                                    {
                                        LabelErr3.Visible = true;
                                        Panel1.BackColor = System.Drawing.Color.Empty;
                                        Panel3.BackColor = System.Drawing.Color.Empty;
                                        Panel5.BackColor = System.Drawing.Color.Red;
                                        Panel7.BackColor = System.Drawing.Color.Empty;
                                    }
                                }
                                else
                                {
                                    LabelErr2.Visible = true;
                                    Panel1.BackColor = System.Drawing.Color.Empty;
                                    Panel3.BackColor = System.Drawing.Color.Red;
                                    Panel5.BackColor = System.Drawing.Color.Empty;
                                    Panel7.BackColor = System.Drawing.Color.Empty;
                                }
                            }
                            else
                            {
                                LabelErr2.Visible = true;
                                Panel1.BackColor = System.Drawing.Color.Empty;
                                Panel3.BackColor = System.Drawing.Color.Red;
                                Panel5.BackColor = System.Drawing.Color.Empty;
                                Panel7.BackColor = System.Drawing.Color.Empty;
                            }
                        }
                        else
                        {
                            LabelErr2.Visible = true;
                            Panel1.BackColor = System.Drawing.Color.Empty;
                            Panel3.BackColor = System.Drawing.Color.Red;
                            Panel5.BackColor = System.Drawing.Color.Empty;
                            Panel7.BackColor = System.Drawing.Color.Empty;
                        }
                    }
                    else
                    {
                        LabelErr2.Visible = true;
                        Panel1.BackColor = System.Drawing.Color.Empty;
                        Panel3.BackColor = System.Drawing.Color.Red;
                        Panel5.BackColor = System.Drawing.Color.Empty;
                        Panel7.BackColor = System.Drawing.Color.Empty;
                    }
                }
                else
                {
                    LabelErr1.Visible = true;
                    Panel1.BackColor = System.Drawing.Color.Red;
                    Panel3.BackColor = System.Drawing.Color.Empty;
                    Panel5.BackColor = System.Drawing.Color.Empty;
                    Panel7.BackColor = System.Drawing.Color.Empty;
                }
            }
        }
        else
        {
            LabelErr1.Visible = true;
            Panel1.BackColor = System.Drawing.Color.Red;
            Panel3.BackColor = System.Drawing.Color.Empty;
            Panel5.BackColor = System.Drawing.Color.Empty;
            Panel7.BackColor = System.Drawing.Color.Empty;
        }
    }
}