using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Time : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
  
    }

    //Session["Break"] = DropDownList1.Text;
    //    Session["Lunch"] = DropDownList2.Text;
    //    Session["Snacks"] = DropDownList3.Text;
    //    Session["Dinner"] = DropDownList4.Text;
    //    Response.Redirect("Diet.aspx");

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Break"] = DropDownList1.Text;
        Session["Lunch"] = DropDownList2.Text;
        Session["Snacks"] = DropDownList3.Text;
        Session["Dinner"] = DropDownList4.Text;
        Response.Redirect("Diet.aspx");
    }
}