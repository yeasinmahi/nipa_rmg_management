using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NipaRMGManagement.BLL;
using NipaRMGManagement.Models;


namespace NipaRMGManagement.UI
{
    public partial class DepartmentEntry : System.Web.UI.Page
    {
        DepartmentManager aDepartmentManager = new DepartmentManager();
        //private List<DepartmentCode> departments;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["login"] == null)
                {
                    Response.Redirect("~/UI/LoginForm.aspx", false);
                    HttpContext.Current.ApplicationInstance.CompleteRequest();
                }
            }

            List<Department> departments = aDepartmentManager.GetAllDepartment();
            DepartmentGridView.DataSource = departments;
            DepartmentGridView.DataBind();



        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            string depCode = Request.Form["departmentCode"];
            string depName=Request.Form["departmentName"];
            
            if (depCode != "" && depName!="")
            {
                Department aDepartment = new Department();
                aDepartment.DepartmentCode = depCode;
                aDepartment.DepartmentName = depName;
                messageLabel.Text = aDepartmentManager.SaveDepartment(aDepartment);

                List<Department> departments = aDepartmentManager.GetAllDepartment();
                DepartmentGridView.DataSource = departments;
                DepartmentGridView.DataBind();
            }
            else
            {
                messageLabel.Text = "Insert text????";
            }

            

        }
    }
}