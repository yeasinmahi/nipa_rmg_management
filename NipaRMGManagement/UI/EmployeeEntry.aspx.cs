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
    public partial class EmployeeEntry : System.Web.UI.Page
    {
        EmployeeEntryManager aEmployeeEntryManager = new EmployeeEntryManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveEmployee_Click(object sender, EventArgs e)
        {
            EmployeeEntries aEmployeeEntry = new EmployeeEntries();
            aEmployeeEntry.EmployeeId = Request.Form["employeeId"];
            aEmployeeEntry.Department = Request.Form["department"];
            aEmployeeEntry.Designation = Request.Form["designation"];
            aEmployeeEntry.FirstName = Request.Form["firstName"];
            aEmployeeEntry.LastName = Request.Form["lastName"];
            aEmployeeEntry.FirstNameBangla = Request.Form["firstNameBangla"];
            aEmployeeEntry.LastNameBangla = Request.Form["lastNameBangla"];
            aEmployeeEntry.ShortName = Request.Form["shortName"];
            aEmployeeEntry.AdditionalId = Request.Form["additionalId"];
            aEmployeeEntry.FatherName = Request.Form["fathersName"];
            aEmployeeEntry.MotherName = Request.Form["mothersName"];
            aEmployeeEntry.DateOfBirth = Convert.ToDateTime(Request.Form["dateOfBirth"]);
            aEmployeeEntry.PlaceOfBirth = Request.Form["placeOfBirth"];
            aEmployeeEntry.Gender = Request.Form["gender"];
            aEmployeeEntry.BloodGroup = Request.Form["bloodGroup"];
            aEmployeeEntry.Nationality = Request.Form["nationality"];
            aEmployeeEntry.NationalIdCardNo = Request.Form["nationalIdCardNo"];
            aEmployeeEntry.Religion = Request.Form["religion"];
            aEmployeeEntry.Hobbies = Request.Form["hobbies"];
            aEmployeeEntry.MaritialStatus = Request.Form["maritialStatus"];
            aEmployeeEntry.MarrigeDate = Convert.ToDateTime(Request.Form["marrigeDate"]);
            aEmployeeEntry.PresentAddress = Request.Form["presentAddress"];
            aEmployeeEntry.ParmanentAddress = Request.Form["parmanentAddress"];
            aEmployeeEntry.OfficialPhone = Request.Form["officialPhone"];
            aEmployeeEntry.PersonalPhone = Request.Form["personalPhone"];
            aEmployeeEntry.OfficialEmail = Request.Form["officialEmail"];
            aEmployeeEntry.PersonalEmail = Request.Form["personalEmail"];
            aEmployeeEntry.AttendenceCardId = Request.Form["attendenceCardId"];
            aEmployeeEntry.FingerPrintId = Request.Form["fingerPrintId"];

            string empPic = employeePic.PostedFile.ContentType;
            byte[] fillData=new byte[employeePic.PostedFile.InputStream.Length];
            employeePic.PostedFile.InputStream.Read(fillData, 0, fillData.Length);
            aEmployeeEntry.EmployeePic = fillData;

            string digSig = digitalSignature.PostedFile.ContentType;
            byte[] fileData = new byte[digitalSignature.PostedFile.InputStream.Length];
            digitalSignature.PostedFile.InputStream.Read(fileData, 0, fileData.Length);

            aEmployeeEntry.DigitalSignature = fileData;
            
            int rowAffected = aEmployeeEntryManager.SaveAllEmployee(aEmployeeEntry);
        }

    }
}