using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using NipaRMGManagement.BLL;
using NipaRMGManagement.Models;
using NipaRMGManagement.Others;

namespace NipaRMGManagement.UI
{
    public partial class DesignationControl : System.Web.UI.Page
    {
        
        private Designation _designation;
        private  List<Designation> _designations;
        private readonly DesignationControlManager _designationControlManager = new DesignationControlManager();
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
            designationGridView.DataSource = _designationControlManager.GetAllDesignation();
            designationGridView.DataBind();
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            _designation = CreateDesignationModel();

            bool isSave=_designationControlManager.SaveDesignation(_designation);
            successMessage.Text = isSave ? "<b><p style=color:green>successfully saved</p></b>" : "<b><p style=color:red>Designation can not saved</p></b>";

            designationGridView.DataSource = _designationControlManager.GetAllDesignation();
            designationGridView.DataBind();
        }

        private Designation CreateDesignationModel()
        {
            Designation ds= new Designation();
            
            string designationName = Request.Form["designationName"];
            string grossSalary = Request.Form["grossSalary"];
            if (!string.IsNullOrWhiteSpace(designationName))
            {
                ds.DesignationName = designationName;
                if (!string.IsNullOrWhiteSpace(grossSalary))
                {
                    ds.GrossSalary = Convert.ToInt32(grossSalary);
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }

            ds.ConvanceSupport = Provider.ConvanceSupport;
            ds.MedicalSupport = Provider.MedicalSupport;
            ds.FoodSupport = Provider.FoodSupport;
            ds.BasicSalary = Provider.GetBasicSalary(ds.GrossSalary);
            ds.HouseRentSupport = Provider.GetHouseRent(ds.GrossSalary);
            return ds;
        }

    }
}