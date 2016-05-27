using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NipaRMGManagement.Models
{
    public class Designation
    {
        public int DesignationId { get; set; }
        public string DesignationName { get; set; }
        public int GrossSalary { get; set; }
        public int BasicSalary { get; set; }
        public int HouseRentSupport { get; set; }
        public int MedicalSupport { get; set; }
        public int ConvanceSupport { get; set; }
        public int FoodSupport { get; set; }

    }
}