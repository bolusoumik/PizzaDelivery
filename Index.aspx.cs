using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String name = TextBox1.Text;
        String email = TextBox2.Text;
        String phone = TextBox3.Text;
        String pass = TextBox4.Text;


        String insert = "insert into Customer values ('" + email + "','" + name + "','" + pass + "','" + phone + "')";
        bool r = Connection.SaveData(insert);

        if (r == true)
        {
            Session["customer_id"] = TextBox2.Text;
            Session["customer_name"] = TextBox1.Text;
            Response.Write("<script>confirm('Data inserted successfully......')</script>");
            Response.Redirect("AfterLogin.aspx");
        }
    }
}