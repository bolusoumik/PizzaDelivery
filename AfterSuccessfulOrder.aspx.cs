﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class AfterSuccessfulOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["orderid"];
        
        Label2.Text = Label1.Text;
        findorderdate(Label2.Text);
        findaddress(Label2.Text);
        showgrid(Label2.Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        exportpdf();
    }

    private void exportpdf()
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
    private void findorderdate(String Orderid)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
        String myquery = "Select * from Odr_Product where OdrId='" + Orderid + "'";
        SqlCommand cmd = new SqlCommand(myquery, con);
        //cmd.CommandText = myquery;
        //cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Label3.Text = ds.Tables[0].Rows[0]["dateOforder"].ToString();

        }

        con.Close();
    }
    private void findaddress(String Orderid)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
        String myquery = "Select * from OrderDetail where OdrId='" + Orderid + "'";
        SqlCommand cmd = new SqlCommand(myquery, con);
        //cmd.CommandText = myquery;
        //cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Label4.Text = ds.Tables[0].Rows[0]["address"].ToString();

        }

        con.Close();
    }
    private void showgrid(String orderid)
    {
        DataTable dt = new DataTable();
        DataRow dr;

        dt.Columns.Add("sno");
        dt.Columns.Add("productid");
        dt.Columns.Add("Pname");
        dt.Columns.Add("qty");
        dt.Columns.Add("price");
        dt.Columns.Add("Tcost");

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
        String myquery = "Select * from Odr_Product where OdrId='" + orderid + "'";
        SqlCommand cmd = new SqlCommand(myquery, con);
        //cmd.CommandText = myquery;
        //cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        int totalrows = ds.Tables[0].Rows.Count;
        int i = 0;
        int grandtotal = 0;
        while (i < totalrows)
        {
            dr = dt.NewRow();
            dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
            dr["productid"] = ds.Tables[0].Rows[i]["Pid"].ToString();
            dr["Pname"] = ds.Tables[0].Rows[i]["productname"].ToString();
            dr["qty"] = ds.Tables[0].Rows[i]["quantity"].ToString();
            dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
            int price = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
            int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
            int totalprice = price * quantity;
            dr["Tcost"] = totalprice;
            grandtotal = grandtotal + totalprice;
            dt.Rows.Add(dr);
            i = i + 1;
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();

        Label6.Text = grandtotal.ToString();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

}