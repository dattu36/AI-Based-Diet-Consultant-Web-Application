using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Check;

public partial class CReg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ROHITHSAIDATTA-\SQLEXPRESS;Initial Catalog=Diet;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //#region System Generated . . .
        //Class1 c = new Class1();
        //bool c1 = c.checkLoad("S145", con);
        //if (!c1)
        //{
        //    Response.Redirect("Login.aspx");
        //}
        //#endregion

        SqlCommand cmd;
        string com = "select top 1 Id From Cust ORDER BY Id Desc;";
        con.Open();
        cmd = new SqlCommand(com, con);
        object count = cmd.ExecuteScalar();
        if (count != null)
        {
            int i = Convert.ToInt32(count);
            i++;
            TextBoxUid.Text = i.ToString();
        }
        else
        {
            TextBoxUid.Text = "1110";
        }
        con.Close();
    }

    public string check()
    { 
        if (TextBoxName.Text == "")
        {
            return "Name";
        }
        else if (TextBoxAdd.Text == "")
        {
            return "Address";
        }
        else if (TextBoxMob.Text == "")
        {
            return "Mobile No";
        }
        else if (TextBoxEmail.Text == "")
        {
            return "Email";
        }
        else if (TextBoxPass.Text == "")
        {
            return "Password";
        }
        return "OK";
    }

    public string passCheck()
    { 
        if(TextBoxPass.Text!=TextBoxCnPass.Text)
        {
            return "wrong";
        }
        return "OK";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (check() == "OK")
        {
            if (passCheck() == "OK")
            {
                string val="";
                for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                {
                    if (CheckBoxList1.Items[i].Selected == true)
                    {
                        val += CheckBoxList1.Items[i].Value.ToString() + ",";
                    }
                }
                string ins = "insert into cust values('" + TextBoxUid.Text + "','" + TextBoxName.Text + "','" + TextBoxAdd.Text + "','" + TextBoxEmail.Text + "','" + TextBoxMob.Text + "','" + TextBoxPass.Text + "','" + val.TrimEnd(',') + "','" + RadioButtonList1.SelectedItem.Text + "')";
                SqlCommand cmd = new SqlCommand(ins, con);
                con.Open();
                cmd.ExecuteReader();
                con.Close();
                Session["Add"] = "Data";
                Response.Redirect("Default2.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Password Not Matched ');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + check() + "');", true);
        }
    }
}