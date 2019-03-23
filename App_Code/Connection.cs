using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{
	
		 public static bool SaveData(String qry)
          {
        
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
            return true;

         }

         public static DataSet FetchData(String qry)
         {
             SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Documents\Visual Studio 2013\PIZZA\App_Data\Database.mdf;Integrated Security=True");
             con.Open();
             SqlDataAdapter da = new SqlDataAdapter(qry, con);
             DataSet ds = new DataSet();
             da.Fill(ds);
             con.Close();
             return ds;
         }
	
}