using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using NipaRMGManagement.Models;
using NipaRMGManagement.Others;

namespace NipaRMGManagement.UI
{
    public partial class DesignationControl : System.Web.UI.Page
    {

        private Designation designation;
        private List<Designation> designations = new List<Designation>(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            designation = CreateDesignationModel();
            if (designation!=null)
            {
                designations.Add(designation);
            }
            
            designationGridView.DataSource = designations;
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