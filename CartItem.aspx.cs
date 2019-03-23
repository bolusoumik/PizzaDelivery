using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CartItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Customer_id"] == null)
        {
            Response.Redirect("CustLogin.aspx");
        }
        else 
        {
            if (Session["choose_id"].ToString().Equals("one"))
            {
                Image1.ImageUrl = Session["product_image"].ToString();
                Label2.Text = Session["product_price"].ToString();
                Label4.Text = Session["product_name"].ToString();
            }
            else if(Session["choose_id"].ToString().Equals("two"))
            {
                Image2.ImageUrl = Session["product_image"].ToString();
                Label3.Text = Session["product_price"].ToString();
                Label5.Text = Session["product_name"].ToString();

            }
            
            //else if (Image1.ImageUrl != null && Label2.Text != null && Label4.Text != null)
            //{
            //    Image2.ImageUrl = Session["product_image"].ToString();
            //    Label3.Text = Session["product_price"].ToString();
            //    Label5.Text = Session["product_name"].ToString();
            //}
            }
           
        }
     protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AfterLogin.aspx");
    }
 }
   
