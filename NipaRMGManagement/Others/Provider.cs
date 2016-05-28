using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NipaRMGManagement.Others
{
    public class Provider
    {
        public static int MedicalSupport = 250;
        public static int ConvanceSupport = 200;
        public static int FoodSupport = 650;

        private static readonly int Others = MedicalSupport + ConvanceSupport + FoodSupport;
        public static int GetBasicSalary(int gross)
        {
            return (int) Math.Round(((gross - Others)/1.4), 0);
        }

        public static int GetHouseRent(int gross)
        {
            return (gross - Others) - GetBasicSalary(gross);
        }
    }
}