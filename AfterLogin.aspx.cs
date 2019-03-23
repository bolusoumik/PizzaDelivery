using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AfterLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Customer_id"] == null)
        {
            Button8.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label1.ForeColor = System.Drawing.Color.GreenYellow;
        }
        else
        {
            Button1.Visible = false;
            Button8.Visible = true;
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

               Label2.Text = "Cart Item: " + dt.Rows.Count.ToString();
                Label2.ForeColor = System.Drawing.Color.GreenYellow;
            }
            else
            {
                Label2.Text = "Cart Item: " + "0";
                Label2.ForeColor = System.Drawing.Color.GreenYellow;
            }

            Label1.Text = Session["Customer_id"].ToString();
            Label1.ForeColor = System.Drawing.Color.Red;
        }
      

    }
    
    protected void Button7_Click(object sender, EventArgs e)
    { 
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt == null)
            {
                Response.Write("<script>confirm('Your Cart is empty...........')</script>");
            }
            else
            {
                Response.Redirect("AddtoCart.aspx");
            }
    }
    
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["Customer_id"] = null;
        Response.Redirect("CustLogin.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["Customer_id"] == null)
        {
            Response.Redirect("CustLogin.aspx");
        }
        else
        {
            if (e.CommandName == "addtocart")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                DropDownList dlist1 = (DropDownList)(e.Item.FindControl("DropDownList2"));
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString() +"&size="+ dlist1.SelectedItem.ToString());

            }
        }

        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustLogin.aspx");
    }
}