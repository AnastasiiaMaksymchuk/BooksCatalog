using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace BooksCatalog
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                {
                    getbookid();
                }

            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                if (FileUpload1.HasFile == true)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/ images /") + Label3.Text + ".jpg");
                    string bookimage = "images /" + Label3.Text + ".jpg";
                    String query = "insert into bookcatalog(bookid, bookname, authorname, publisher, pages, príce, bookimage) values(" + Label3.Text + ",’" + TextBox1.Text + "’,’" + TextBox2.Text + "’,’" + TextBox3.Text + "’," + TextBox4.Text + "," + TextBox5.Text + ",’" + bookimage + "’)";
                          String mycon = "Data Source=DESKTOP - ATE5HJV; Initial Catalog=BookCatalog; Integrated Security = true";
                    SqlConnection con = new SqlConnection(mycon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    Label4.Text = "Нова книга була додана успішно":
getbookid();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
   else
{ 
Label4.Text = "Виберіть зображення";
    }

}
public void getbookid()
            {
                String mycon = "Data Source=DESKTOP - ATE5HJV; Initial Catalog=BookCatalog; Integrated Security = True";
                SqlConnection scon = new SqlConnection(mycon);
                String myquery = "select bookid from BookCatalog";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = scon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                scon.Close();
                if (ds.Tables[0].Rows.Count < 1)
                {
                    Label3.Text = "1001";
                }
                else
                {
                    String mycon1 = "Data Source = DESKTOP - ATE5HJV; Initial Catalog=BookCatalog; Integrated Security = True";
                    SqlConnection scon1 = new SqlConnection(mycon1);
                    String myquery1 = "select max(bookid) from BookCatalog";
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = myquery1;
                    cmd1.Connection = scon1;
                    SqlDataAdapter da1 = new SqlDataAdapter();
                    da1.SelectCommand = cmd1;
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1);
                    Label3.Text = ds1.Tables[0].Rows[0][0].ToString();
                    int a;
                    a = Convert.ToInt16(Label3.Text);
                    a = a + 1;
                    Label3.Text = a.ToString();
                    scon1.Close();
                }
            }

        }
    } 