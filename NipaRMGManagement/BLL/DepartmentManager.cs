using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NipaRMGManagement.DAL;
using NipaRMGManagement.Models;

namespace NipaRMGManagement.BLL
{
    
    public class DepartmentManager
    {
        DepartmentGateway aDepartmentGateway =new DepartmentGateway();
        public string SaveDepartment(Department aDepartment)
        {
            
            bool isDepCodeExists = aDepartmentGateway.IsDepCodeExists(aDepartment.DepartmentCode);
            bool isDepNameExists = aDepartmentGateway.IsDepNameExists(aDepartment.DepartmentName);
            if (isDepCodeExists == false && isDepNameExists == false)
            {
                int rowAffected = aDepartmentGateway.SaveDepartment(aDepartment);
                if (rowAffected > 0)
                {
                    return "DepartmentCode Inserted.....";
                }
                return "DepartmentCode Not Inserted???";
            }
            return "DepartmentCode Already Exists??";
        }


        public List<Department> GetAllDepartment()
        {
            return aDepartmentGateway.GetAllDepartment();
        }
    }
}