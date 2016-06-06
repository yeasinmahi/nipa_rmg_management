using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NipaRMGManagement.DAL;
using NipaRMGManagement.Models;

namespace NipaRMGManagement.BLL
{
    public class EmployeeEntryManager
    {
        EmployeeEntryGateway aEmployeeEntryGateway=new EmployeeEntryGateway();
        DesignationControlGatway designationControlGatway = new DesignationControlGatway();

        DepartmentGateway aDepartmentGateway=new DepartmentGateway();
        internal int SaveAllEmployee(EmployeeEntries aEmployeeEntry)
        {
            if (aEmployeeEntryGateway.ExistEmployee(aEmployeeEntry.EmployeeId))
            {
                return aEmployeeEntryGateway.UpadateEmployee(aEmployeeEntry);
            }
            return aEmployeeEntryGateway.SaveAllEmployee(aEmployeeEntry);
        }

        internal EmployeeEntries GetEmployeeById(string employeeId)
        {

            return aEmployeeEntryGateway.GetEmployeeById(employeeId);
        }

        public List<Designation> GetAllDesignation()
        {
            return designationControlGatway.GetAllDesignation();
        }

        internal List<Department> GetAllDepartment()
        {
            return aDepartmentGateway.GetAllDepartment();
        }
    }
}