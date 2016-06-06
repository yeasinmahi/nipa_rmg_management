using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NipaRMGManagement.DAL;
using NipaRMGManagement.Models;

namespace NipaRMGManagement.BLL
{
    public class DesignationControlManager
    {
        readonly DesignationControlGatway _designationControlGatway = new DesignationControlGatway();
        public bool SaveDesignation(Designation designation)
        {
            if (!_designationControlGatway.ExistDesignation(designation))
            {
                
                return _designationControlGatway.SaveDesignation(designation) > 0;
            }
            else
            {
                return false;
            }
            
        }

        public List<Designation> GetAllDesignation()
        {
            return _designationControlGatway.GetAllDesignation();
        }
    }
}