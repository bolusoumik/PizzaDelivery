using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AddtoCart : System.Web.UI.Page
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
                    //con.Open();

                    String myquery = "Select * from Product where ProductId='"+Request.QueryString["id"]+"'";
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["productid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                    dr["Pname"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["Pimage"] = ds.Tables[0].Rows[0]["image"].ToString();
                   // dr["size"] = ds.Tables[0].Rows[0]["size"].ToString();
                    dr["size"] = Request.QueryString["size"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["qty"] = Request.QueryString["quantity"];

                    if (Request.QueryString["size"] == "Regular")
                    {
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["Tcost"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }
                    else if (Request.QueryString["size"] == "Small")
                    {
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = (price - 30) * quantity;
                        dr["Tcost"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }
                    else if (Request.QueryString["size"] == "Large")
                    {
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = (price + 30) * quantity;
                        dr["Tcost"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }
                    
                    
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
                    SqlCommand cmd = new SqlCommand(myquery,con);

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["productid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                    dr["Pname"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["Pimage"] = ds.Tables[0].Rows[0]["image"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["Pimage"] = ds.Tables[0].Rows[0]["image"].ToString();
                    dr["size"] = Request.QueryString["size"];
                    dr["qty"] = Request.QueryString["quantity"];
                    if (Request.QueryString["size"] == "Regular")
                    {
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["Tcost"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }
                    else if (Request.QueryString["size"] == "Small")
                    {
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = (price-30) * quantity;
                        dr["Tcost"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }
                    else if (Request.QueryString["size"] == "Large")
                    {
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = (price + 30) * quantity;
                        dr["Tcost"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }


                    

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();

                if(GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[6].Text = "Total Amount";
                    GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                }
               
            }
    }
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AfterLogin.aspx");
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text ;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("AddToCart.aspx");
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("EditOrder.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("PlaceOrder.aspx");   
    }
}