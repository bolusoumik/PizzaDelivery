using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class PlaceOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("productid");
            dt.Columns.Add("Pname");
            dt.Columns.Add("price");
            dt.Columns.Add("qty");
            dt.Columns.Add("size");
            dt.Columns.Add("Pimage");
            dt.Columns.Add("Tcost");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
                    con.Open();

                    String myquery = "Select * from Product where ProductId='" + Request.QueryString["id"] + "'";
                    SqlCommand cmd = new SqlCommand(myquery, con);

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["productid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                    dr["Pname"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["Pimage"] = ds.Tables[0].Rows[0]["image"].ToString();
                    //dr["size"] = ds.Tables[0].Rows[0]["size"].ToString();
                    dr["qty"] = Request.QueryString["quantity"];
                    dr["size"] = Request.QueryString["size"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["Tcost"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[6].Text = "Total Amount";
                    GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
                    con.Open();

                    String myquery = "Select * from Product where ProductId='" + Request.QueryString["id"] + "'";
                    SqlCommand cmd = new SqlCommand(myquery, con);

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["productid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                    dr["Pname"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["Pimage"] = ds.Tables[0].Rows[0]["image"].ToString();
                    dr["size"] = ds.Tables[0].Rows[0]["size"].ToString();
                    dr["qty"] = Request.QueryString["quantity"];
                    dr["size"] = Request.QueryString["size"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["Tcost"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[6].Text = "Total Amount";
                    GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[6].Text = "Total Amount";
                    GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();

                }


            }
            // Label2.Text = GridView1.Rows.Count.ToString();

        }
        Label2.Text = DateTime.Now.ToShortDateString();
        findorderid();

    }

    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["Tcost"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        Label1.Text = orderid;



    }

    public void saveaddress()
    {
        String updatepass = "insert into OrderDetail values('" + Session["Customer_id"].ToString() + "','" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand(updatepass, con);
        cmd.ExecuteNonQuery();
        con.Close();
        //bool r = Connection.SaveData(updatepass);
        //if (r == true)
        //{
        //    Response.Write("<script>confirm('Your Order is Placed...........')</script>");
        //}
        //else
        //{
        //    Response.Write("<script>confirm('Some error occured...........')</script>");
        //}
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];



        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            String SaveOdr = "insert into Odr_Product values('" + Label1.Text + "','" + dt.Rows[i]["sno"] + "','" + dt.Rows[i]["productid"] + "','" + dt.Rows[i]["Pname"] + "','" + dt.Rows[i]["Tcost"] + "','" + dt.Rows[i]["qty"] + "','" + Label2.Text + "','"+dt.Rows[i]["size"]+"')";

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(SaveOdr, con);
            cmd.ExecuteNonQuery();
            con.Close();
            //bool r = Connection.SaveData(SaveOdr);
            //if (r == true)
            //{
            //    Response.Write("<script>confirm('Your Order is Placed...........')</script>");
            //}
            //else
            //{
            //    Response.Write("<script>confirm('Some error occured...........')</script>");
            //} 

        }
        saveaddress();
        //DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        dt.Clear();
        dt.AcceptChanges();
        Response.Redirect("AfterSuccessfulOrder.aspx?orderid="+Label1.Text);

    }
   
}