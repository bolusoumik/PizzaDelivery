using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class CustLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fetch_query = "select * from Customer where email=('" + TextBox1.Text + "') and password=('" + TextBox2.Text + "')";
        String fetch_name = "select name from Customer where email=('" + TextBox1.Text + "')";
        DataSet ds1 = Connection.FetchData(fetch_query);

        if (ds1.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script>confirm('Please check user Id and Password or create new Account!..')</script>");
        }
        else
        {
            //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
            //con.Open();
            //SqlCommand cmd = new SqlCommand(fetch_name, con);
            //SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    Session["customer_name"] = (dr["Name"].ToString());
            //    //Session["cust_id"] = (dr["email"].ToString());
            //}
            //con.Close();
            //if (Request.Browser.Cookies == true)
            //{
            //    if (CheckBox1.Checked == true)
            //    {
            //        Response.Cookies["log"]["email"] = TextBox1.Text;
            //        Response.Cookies["log"]["pass"] = TextBox2.Text;
            //    }
            //}
            Session["Customer_id"] = TextBox1.Text;
            Response.Redirect("AfterLogin.aspx");
        }
    }
    //protected void TextBox1_TextChanged(object sender, EventArgs e)
    //{
    //    if (Request.Browser.Cookies == true)
    //    {
    //        if (Request.Cookies["log"] != null)
    //        {
    //            if (Request.Cookies["log"]["email"].ToString() == TextBox1.Text)
    //            {
    //                TextBox2.Attributes.Add("value", Request.Cookies["log"]["pass"].ToString());
    //            }
    //        }
    //    }
    //}
}