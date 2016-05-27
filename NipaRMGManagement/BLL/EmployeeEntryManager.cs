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
        internal int SaveAllEmployee(EmployeeEntries aEmployeeEntry)
        {
            return aEmployeeEntryGateway.SaveAllEmployee(aEmployeeEntry);
        }
    }
}