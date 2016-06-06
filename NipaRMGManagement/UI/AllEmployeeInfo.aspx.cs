using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NipaRMGManagement.BLL;

namespace NipaRMGManagement.UI
{
    public partial class AllEmployeeInfo : System.Web.UI.Page
    {
        AttendanceManager attendanceManager = new AttendanceManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            employeeInfoGridView.DataSource = attendanceManager.GetAttendancesLSheet();
            employeeInfoGridView.DataBind();
        }
    }
}