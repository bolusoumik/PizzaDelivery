using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String id = TextBox3.Text;
        string file_name = FileUpload1.FileName.ToString();
        String price= TextBox2.Text;

        string fileExtension = System.IO.Path.GetExtension(file_name);
        string fileMimeType = FileUpload1.PostedFile.ContentType;

        int file_length_kb = FileUpload1.PostedFile.ContentLength / 1024;

        string[] matchExtension = { ".jpg", ".png", ".gif",".JPG" };
        string[] matchMimeType = { "image/jpeg", "image/png", "image/gif","image/JPG"};

        if(FileUpload1.HasFile)
        {
            if((matchExtension.Contains(fileExtension)) && (matchMimeType.Contains(fileMimeType)))
            {
                if(file_length_kb <= 1024)
                {
                   
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/uploaded_img/") + file_name);
                    string file_path = ("~/uploaded_img/")+ file_name;
                    Image1.ImageUrl = file_path;
                    Image1.ImageAlign.Equals("left");
                    string img_insert = "insert into Product values('"+id+"','"+TextBox1.Text+"','"+file_path+"','"+price+"')";
                    bool r = Connection.SaveData(img_insert);

                    if(r==true)
                    {
                        Label1.Text = "Image Uploaded";
                        Label1.ForeColor = System.Drawing.Color.Green;
                    }
                }
                else
                {
                    Label1.Text="Image has not been uploaded successfully";
                }
            }
            else
            {
                Label1.Text = "Image has not been uploaded successfully";
            }
        }
    }
   
}