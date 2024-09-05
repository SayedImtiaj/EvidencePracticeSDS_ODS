using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvidencePracticeSDS_ODS.ContentPages
{
    public partial class CoursesContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            ObjectDataSourceCourse.InsertParameters["CourseName"].DefaultValue = ((TextBox)grdCourse.FooterRow.FindControl("txtName")).Text;
            ObjectDataSourceCourse.InsertParameters["CourseDuration"].DefaultValue = ((TextBox)grdCourse.FooterRow.FindControl("txtDuration")).Text;
            ObjectDataSourceCourse.Insert();
        }
    }
}