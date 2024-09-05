using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvidencePracticeSDS_ODS.UserControls
{
    public partial class UserControlTrainee : System.Web.UI.UserControl
    {
        string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdTrainee_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSelectId.Visible = true;
            lblSelectId.Text = grdTrainee.SelectedRow.Cells[1].Text;
            txtName.Text = grdTrainee.SelectedRow.Cells[2].Text;
            txtEmail.Text = grdTrainee.SelectedRow.Cells[3].Text;
            rblGender.SelectedValue = grdTrainee.SelectedRow.Cells[4].Text;
            txtCell.Text = grdTrainee.SelectedRow.Cells[6].Text;
            ddlCourse.SelectedValue = grdTrainee.SelectedRow.Cells[8].Text;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            string imgPath = Path.GetFileName(uplImage.PostedFile.FileName);
            uplImage.SaveAs(MapPath("~/Images/" + imgPath));
            using (con = new SqlConnection (conString))
            {
                cmd = new SqlCommand("INSERT INTO Trainee VALUES (@name, @email, @gender, @dob, @cell, @imagePath, @courseId)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@gender", rblGender.SelectedValue);
                cmd.Parameters.AddWithValue("@dob", calDOB.SelectedDate);
                cmd.Parameters.AddWithValue("@cell", txtCell.Text);
                cmd.Parameters.AddWithValue("@imagePath", "~/Images/" + imgPath);
                cmd.Parameters.AddWithValue("@courseId", ddlCourse.SelectedValue);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            clearData();
        }

        void clearData ()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtCell.Text = "";
            txtCellConfirm.Text = "";

        }
    }
}