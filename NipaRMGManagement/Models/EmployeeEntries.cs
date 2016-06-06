using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NipaRMGManagement.Models
{
    public class EmployeeEntries
    {
        public int EmpId { get; set; }
        public string EmployeeId { get; set; }
        public int DepartmentId { get; set; }
        //public string Designation { get; set; }
        public int DesignationId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FirstNameBangla { get; set; }
        public string LastNameBangla { get; set; }
        public string ShortName { get; set; }
        public string AdditionalId { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string PlaceOfBirth { get; set; }
        public string Gender { get; set; }
        public string BloodGroup { get; set; }
        public string Nationality { get; set; }
        public string NationalIdCardNo { get; set; }
        public string Religion { get; set; }
        public string Hobbies { get; set; }
        public string MaritialStatus { get; set; }
        public DateTime MarrigeDate { get; set; }
        public string PresentAddress { get; set; }
        public string ParmanentAddress { get; set; }
        public string OfficialPhone { get; set; }
        public string PersonalPhone { get; set; }
        public string OfficialEmail { get; set; }
        public string PersonalEmail { get; set; }      
        public string AttendenceCardId { get; set; }
        public string FingerPrintId { get; set; }
        public byte[] EmployeePic { get; set; }
        public byte[] DigitalSignature { get; set; }




    }
}