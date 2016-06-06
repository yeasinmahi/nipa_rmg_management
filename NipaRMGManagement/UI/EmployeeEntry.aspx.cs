using System;
using System.Collections.Generic;
using System.IO;
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
        readonly EmployeeEntryManager _aEmployeeEntryManager = new EmployeeEntryManager();
        readonly EmployeeEntries _aEmployeeEntry = new EmployeeEntries();

        protected void Page_Load(object sender, EventArgs e)
        {
                
            if (!IsPostBack)
            {
                if (Session["login"] == null)
                {
                    Response.Redirect("~/UI/LoginForm.aspx", false);
                    HttpContext.Current.ApplicationInstance.CompleteRequest();
                }
                LoadDesignationDropdown();
                LoadDepartmentDropdown();
            }
            
        }

        private void LoadDepartmentDropdown()
        {
            department.DataSource = _aEmployeeEntryManager.GetAllDepartment();
            department.DataTextField = "DepartmentName";
            department.DataValueField = "DepId";
            department.DataBind();
        }

        private void LoadDesignationDropdown()
        {
            designation.DataSource = _aEmployeeEntryManager.GetAllDesignation();
            designation.DataTextField = "DesignationName";
            designation.DataValueField = "DesignationId";
            designation.DataBind();
        }

        protected void SaveEmployee_Click(object sender, EventArgs e)
        {
            _aEmployeeEntry.EmployeeId = employeeId.Value;
            _aEmployeeEntry.DepartmentId = Convert.ToInt32(department.SelectedValue);
            _aEmployeeEntry.DesignationId = Convert.ToInt32(designation.SelectedValue);
            _aEmployeeEntry.FirstName = firstName.Value;
            _aEmployeeEntry.LastName = lastName.Value;
            _aEmployeeEntry.FirstNameBangla = firstNameBangla.Value;
            _aEmployeeEntry.LastNameBangla = lastNameBangla.Value;
            _aEmployeeEntry.ShortName = shortName.Value;
            _aEmployeeEntry.AdditionalId = additionalId.Value;
            _aEmployeeEntry.FatherName = fathersName.Value;
            _aEmployeeEntry.MotherName = mothersName.Value;
            if (!String.IsNullOrWhiteSpace(dateOfBirth.Value))
            {
                try
                {
                    _aEmployeeEntry.DateOfBirth = Convert.ToDateTime(dateOfBirth.Value);
                }
                catch (Exception)
                {
                    dateOfBirthError.InnerHtml = "Enter Correct Format";
                    return;
                }
            }
            else
            {
                _aEmployeeEntry.DateOfBirth = DateTime.MinValue;
            }
            
            _aEmployeeEntry.PlaceOfBirth = placeOfBirth.Value;
            _aEmployeeEntry.Gender = gender.SelectedItem.Text;
            _aEmployeeEntry.BloodGroup = bloodGroup.SelectedValue;
            _aEmployeeEntry.Nationality = nationality.Value;
            _aEmployeeEntry.NationalIdCardNo = nationalIdCardNo.Value;
            _aEmployeeEntry.Religion = religion.SelectedValue;
            _aEmployeeEntry.Hobbies = hobbies.Value;
            _aEmployeeEntry.MaritialStatus = maritialStatus.Value;
            if (!String.IsNullOrWhiteSpace(marrigeDate.Value))
            {
                try
                {
                    _aEmployeeEntry.MarrigeDate = Convert.ToDateTime(marrigeDate.Value);
                }
                catch (Exception)
                {
                    marrigeDateError.InnerHtml = "Enter Correct Format";
                    return;
                }
            }
            else
            {
                _aEmployeeEntry.MarrigeDate = DateTime.MinValue;
            }
            _aEmployeeEntry.PresentAddress = presentAddress.Value;
            _aEmployeeEntry.ParmanentAddress = parmanentAddress.Value;
            _aEmployeeEntry.OfficialPhone = officialPhone.Value;
            _aEmployeeEntry.PersonalPhone = personalPhone.Value;
            _aEmployeeEntry.OfficialEmail = officialEmail.Value;
            _aEmployeeEntry.PersonalEmail = personalEmail.Value;
            _aEmployeeEntry.AttendenceCardId = attendenceCardId.Value;
            _aEmployeeEntry.FingerPrintId = fingerPrintId.Value;
            if (employeePic.HasFile)
            {
                string filePath = employeePic.PostedFile.FileName;
                string filename = Path.GetFileName(filePath);
                string ext = Path.GetExtension(filename);
                string contenttype = String.Empty;
                switch (ext)
                {

                    case ".jpg":
                        contenttype = "image/jpg";
                        break;
                    case ".png":
                        contenttype = "image/png";
                        break;
                    case ".gif":
                        contenttype = "image/gif";
                        break;
                    case ".pdf":
                        contenttype = "application/pdf";
                        break;
                }
                if (contenttype != String.Empty)
                {

                    Stream fs = employeePic.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    _aEmployeeEntry.EmployeePic = bytes;
                }
            }
            else
            {
                _aEmployeeEntry.EmployeePic = new byte[0];
            }

            if (digitalSignature.HasFile)
            {
                string filePath2 = digitalSignature.PostedFile.FileName;
                string filename2 = Path.GetFileName(filePath2);
                string ext2 = Path.GetExtension(filename2);
                string contenttype2 = String.Empty;
                switch (ext2)
                {

                    case ".jpg":
                        contenttype2 = "image/jpg";
                        break;
                    case ".png":
                        contenttype2 = "image/png";
                        break;
                    case ".gif":
                        contenttype2 = "image/gif";
                        break;
                    case ".pdf":
                        contenttype2 = "application/pdf";
                        break;
                }
                if (contenttype2 != String.Empty)
                {

                    Stream fs = digitalSignature.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    Byte[] bytes2 = br.ReadBytes((Int32)fs.Length);
                    _aEmployeeEntry.DigitalSignature = bytes2;
                }
            }
            else
            {
                _aEmployeeEntry.DigitalSignature = new byte[0];
            }

            



            //string empPic = employeePic.PostedFile.ContentType;

            //byte[] fillData = new byte[employeePic.PostedFile.InputStream.Length];
            //employeePic.PostedFile.InputStream.Read(fillData, 0, fillData.Length);
            //aEmployeeEntry.EmployeePic = fillData;

            //string digSig = digitalSignature.PostedFile.ContentType;
            //byte[] fileData = new byte[digitalSignature.PostedFile.InputStream.Length];
            //digitalSignature.PostedFile.InputStream.Read(fileData, 0, fileData.Length);

            //aEmployeeEntry.DigitalSignature = fileData;

            int rowAffected = _aEmployeeEntryManager.SaveAllEmployee(_aEmployeeEntry);
            if (rowAffected>0)
            {
                successMessage.InnerHtml = "<b><p style=color:green>Successfully Saved</p></b>";
            }
            else
            {
                successMessage.InnerHtml = "<b><p style=color:red>Not Saved</p></b>";
            }
        }

        protected void empSearchButton_Click(object sender, EventArgs e)
        {
            string empId= employeeId.Value;
            if (!String.IsNullOrWhiteSpace(empId))
            {
                EmployeeEntries employee = _aEmployeeEntryManager.GetEmployeeById(empId);
                if (employee ==null || employee.EmployeeId ==null || employee.EmployeeId == "0")
                {
                    successMessage.InnerHtml = "<p style='color:red'>No employee with this id</p>";
                    return;
                }
                firstName.Value = employee.FirstName;
                lastName.Value = employee.LastName;
                firstNameBangla.Value = employee.FirstNameBangla;
                lastNameBangla.Value = employee.LastNameBangla;
                department.SelectedValue = employee.DepartmentId.ToString();
                designation.SelectedValue = employee.DesignationId.ToString();
                additionalId.Value = employee.AdditionalId;
                shortName.Value = employee.ShortName;
                fathersName.Value = employee.FatherName;
                mothersName.Value = employee.MotherName;
                dateOfBirth.Value = employee.DateOfBirth.ToShortDateString();
                placeOfBirth.Value = employee.PlaceOfBirth;
                gender.SelectedValue = employee.Gender;
                bloodGroup.SelectedValue = employee.BloodGroup;
                nationality.Value = employee.Nationality;
                nationalIdCardNo.Value = employee.NationalIdCardNo;
                religion.SelectedValue = employee.Religion;
                hobbies.Value = employee.Hobbies;
                maritialStatus.Value = employee.MaritialStatus;
                marrigeDate.Value = employee.MarrigeDate.ToShortDateString();
                parmanentAddress.Value = employee.PresentAddress;
                parmanentAddress.Value = employee.ParmanentAddress;
                officialPhone.Value = employee.OfficialPhone;
                personalPhone.Value = employee.PersonalPhone;
                officialEmail.Value = employee.OfficialEmail;
                attendenceCardId.Value = employee.AttendenceCardId;
                fingerPrintId.Value = employee.FingerPrintId;
                
            }
            else
            {
                successMessage.InnerHtml = "<p style='color:red'>No id is given</p>";
            }

        }

    }
}