using NipaRMGManagement.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace NipaRMGManagement.DAL
{
    public class EmployeeEntryGateway:ConnectionGateway
    {
        public int SaveAllEmployee(EmployeeEntries aEmployeeEntry)
        {
            Query = "INSERT INTO tbl_EmployeeEntry (EmployeeId,DepartmentId,DesignationId,FirstName,LastName," +
                    "FirstNameBangla,LastNameBangla,ShortName,AdditionalId,FatherName,MotherName," +
                    "DateOfBirth,PlaceOfBirth,Gender,BloodGroup,Nationality,NationalIdCardNo," +
                    "Religion,Hobbies,MaritialStatus,MarriageDate,PresentAddress," +
                    "ParmanentAddress,OfficialPhone,PersonalPhone,OfficialEmail,PersonalEmail," +
                    "AttendenceCardId,FingerPrintId,EmployeePicture,DigitalSignature)" +
                    " VALUES(@employeeId,@departmentId,@designationId," +
                   "@firstName,@lastName,@firstNameBangla,@lastNameBangla,@shortName," +
                   "@additionalId,@fathersName,@mothersName,@dateOfBirth,@placeOfBirth," +
                   "@gender,@bloodGroup,@nationality,@nationalIdCardNo,@religion,@hobbies," +
                   "@maritialStatus,@marrigeDate,@presentAddress,@parmanentAddress,@officialPhone," +
                   "@personalPhone,@officialEmail,@personalEmail,@attendenceCardId,@fingerPrintId," +
                   "@employeePic,@digitalSignature)";
            Command.CommandText = Query;
            Connection.Open();
            Command.Parameters.Add("@employeeId", SqlDbType.VarChar).Value = aEmployeeEntry.EmployeeId;
            Command.Parameters.Add("@departmentId", SqlDbType.Int).Value = aEmployeeEntry.DepartmentId;
            Command.Parameters.Add("@designationId", SqlDbType.Int).Value = aEmployeeEntry.DesignationId;
            Command.Parameters.Add("@firstName", SqlDbType.VarChar).Value = aEmployeeEntry.FirstName;
            Command.Parameters.Add("@lastName", SqlDbType.VarChar).Value = aEmployeeEntry.LastName;
            Command.Parameters.Add("@firstNameBangla", SqlDbType.NChar).Value = aEmployeeEntry.FirstNameBangla;
            Command.Parameters.Add("@lastNameBangla", SqlDbType.NChar).Value = aEmployeeEntry.LastNameBangla;
            Command.Parameters.Add("@shortName", SqlDbType.VarChar).Value = aEmployeeEntry.ShortName;
            Command.Parameters.Add("@additionalId", SqlDbType.VarChar).Value = aEmployeeEntry.AdditionalId;
            Command.Parameters.Add("@fathersName", SqlDbType.VarChar).Value = aEmployeeEntry.FatherName;
            Command.Parameters.Add("@mothersName", SqlDbType.VarChar).Value = aEmployeeEntry.MotherName;
            Command.Parameters.Add("@dateOfBirth", SqlDbType.Date).Value = aEmployeeEntry.DateOfBirth;
            Command.Parameters.Add("@placeOfBirth", SqlDbType.VarChar).Value = aEmployeeEntry.PlaceOfBirth;
            Command.Parameters.Add("@gender", SqlDbType.VarChar).Value = aEmployeeEntry.Gender;
            Command.Parameters.Add("@bloodGroup", SqlDbType.VarChar).Value = aEmployeeEntry.BloodGroup;
            Command.Parameters.Add("@nationality", SqlDbType.VarChar).Value = aEmployeeEntry.Nationality;
            Command.Parameters.Add("@nationalIdCardNo", SqlDbType.VarChar).Value = aEmployeeEntry.NationalIdCardNo;
            Command.Parameters.Add("@religion", SqlDbType.VarChar).Value = aEmployeeEntry.Religion;
            Command.Parameters.Add("@hobbies", SqlDbType.VarChar).Value = aEmployeeEntry.Hobbies;
            Command.Parameters.Add("@maritialStatus", SqlDbType.VarChar).Value = aEmployeeEntry.MaritialStatus;
            Command.Parameters.Add("@marrigeDate", SqlDbType.Date).Value = aEmployeeEntry.MarrigeDate;
            Command.Parameters.Add("@presentAddress", SqlDbType.VarChar).Value = aEmployeeEntry.PresentAddress;
            Command.Parameters.Add("@parmanentAddress", SqlDbType.VarChar).Value = aEmployeeEntry.ParmanentAddress;
            Command.Parameters.Add("@officialPhone", SqlDbType.VarChar).Value = aEmployeeEntry.OfficialPhone;
            Command.Parameters.Add("@personalPhone", SqlDbType.VarChar).Value = aEmployeeEntry.PersonalPhone;
            Command.Parameters.Add("@officialEmail", SqlDbType.VarChar).Value = aEmployeeEntry.OfficialEmail;
            Command.Parameters.Add("@personalEmail", SqlDbType.VarChar).Value = aEmployeeEntry.PersonalEmail;
            Command.Parameters.Add("@attendenceCardId", SqlDbType.VarChar).Value = aEmployeeEntry.AttendenceCardId;
            Command.Parameters.Add("@fingerPrintId", SqlDbType.VarChar).Value = aEmployeeEntry.FingerPrintId;
            Command.Parameters.Add("@employeePic", SqlDbType.VarBinary).Value = aEmployeeEntry.EmployeePic;
            Command.Parameters.Add("@digitalSignature", SqlDbType.VarBinary).Value = aEmployeeEntry.DigitalSignature;
            var rowAffected = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffected;

        }

        public EmployeeEntries GetEmployeeById(string employeeId)
        {
            Query = "SELECT * FROM tbl_EmployeeEntry where EmployeeId = '"+employeeId+"'";
            Command.CommandText = Query;
            Connection.Open();
            Reader = Command.ExecuteReader();
            EmployeeEntries aEmployeeEntries = new EmployeeEntries();

            while(Reader.Read())
            {
                aEmployeeEntries.EmployeeId = Reader["EmployeeId"].ToString();
                aEmployeeEntries.DepartmentId =(int) Reader["DepartmentId"];
                aEmployeeEntries.DesignationId = (int) Reader["DesignationId"];
                aEmployeeEntries.FirstName = Reader["FirstName"].ToString();
                aEmployeeEntries.LastName = Reader["LastName"].ToString();
                aEmployeeEntries.FirstNameBangla = Reader["FirstNameBangla"].ToString();
                aEmployeeEntries.LastNameBangla = Reader["LastNameBangla"].ToString();
                aEmployeeEntries.ShortName = Reader["ShortName"].ToString();
                aEmployeeEntries.AdditionalId = Reader["AdditionalId"].ToString();
                aEmployeeEntries.FatherName = Reader["FatherName"].ToString();
                aEmployeeEntries.MotherName = Reader["MotherName"].ToString();
                aEmployeeEntries.DateOfBirth = Convert.ToDateTime(Reader["DateOfBirth"]);
                aEmployeeEntries.PlaceOfBirth = Reader["PlaceOfBirth"].ToString();
                aEmployeeEntries.Gender = Reader["Gender"].ToString();
                aEmployeeEntries.BloodGroup = Reader["BloodGroup"].ToString();
                aEmployeeEntries.Nationality = Reader["Nationality"].ToString();
                aEmployeeEntries.NationalIdCardNo = Reader["NationalIdCardNo"].ToString();
                aEmployeeEntries.Religion = Reader["Religion"].ToString();
                aEmployeeEntries.Hobbies = Reader["Hobbies"].ToString();
                aEmployeeEntries.MaritialStatus = Reader["MaritialStatus"].ToString();
                aEmployeeEntries.MarrigeDate = Convert.ToDateTime(Reader["MarriageDate"]);
                aEmployeeEntries.PresentAddress = Reader["PresentAddress"].ToString();
                aEmployeeEntries.ParmanentAddress = Reader["ParmanentAddress"].ToString();
                aEmployeeEntries.OfficialPhone = Reader["OfficialPhone"].ToString();
                aEmployeeEntries.PersonalPhone = Reader["PersonalPhone"].ToString();
                aEmployeeEntries.OfficialEmail = Reader["OfficialEmail"].ToString();
                aEmployeeEntries.PersonalEmail = Reader["PersonalEmail"].ToString();
                aEmployeeEntries.AttendenceCardId = Reader["AttendenceCardId"].ToString();
                aEmployeeEntries.FingerPrintId = Reader["FingerPrintId"].ToString();
            }
            Connection.Close();
            return aEmployeeEntries;
        }

        public bool ExistEmployee(string employeeId)
        {
            Query = "SELECT * FROM tbl_EmployeeEntry where EmployeeId = '" + employeeId + "'";
            Command.CommandText = Query;
            Connection.Open();

            try
            {
                Reader = Command.ExecuteReader();
                return Reader.HasRows;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                Reader.Close();
                Connection.Close();
            }
        }

        public int UpadateEmployee(EmployeeEntries aEmployeeEntry)
        {
            Query =
                "UPDATE tbl_EmployeeEntry SET  EmployeeId=@employeeId,DepartmentCode=@department,DesignationId=@designationId," +
                "FirstName=@firstName,LastName=@lastName,FirstNameBangla=@firstNameBangla,LastNameBangla=@lastNameBangla," +
                "ShortName=@shortName,AdditionalId=@additionalId,FatherName=@fathersName,MotherName=@mothersName," +
                "DateOfBirth=@dateOfBirth,PlaceOfBirth=@placeOfBirth,Gender=@gender,BloodGroup=@bloodGroup," +
                "Nationality=@nationality,NationalIdCardNo=@nationalIdCardNo,Religion=@religion,Hobbies=@hobbies," +
                "MaritialStatus=@maritialStatus,MarriageDate=@marrigeDate,PresentAddress=@presentAddress," +
                "ParmanentAddress=@parmanentAddress,OfficialPhone=@officialPhone,PersonalPhone=@personalPhone," +
                "OfficialEmail=@officialEmail,PersonalEmail=@personalEmail,AttendenceCardId=@attendenceCardId," +
                "FingerPrintId=@fingerPrintId,EmployeePicture=@employeePic,DigitalSignature=@digitalSignature WHERE EmployeeId='" +
                aEmployeeEntry.EmployeeId + "'";
            Command.CommandText = Query;
            Connection.Open();
            Command.Parameters.Add("@employeeId", SqlDbType.VarChar).Value = aEmployeeEntry.EmployeeId;
            Command.Parameters.Add("@department", SqlDbType.VarChar).Value = aEmployeeEntry.DepartmentId;
            Command.Parameters.Add("@designationId", SqlDbType.Int).Value = aEmployeeEntry.DesignationId;
            Command.Parameters.Add("@firstName", SqlDbType.VarChar).Value = aEmployeeEntry.FirstName;
            Command.Parameters.Add("@lastName", SqlDbType.VarChar).Value = aEmployeeEntry.LastName;
            Command.Parameters.Add("@firstNameBangla", SqlDbType.NChar).Value = aEmployeeEntry.FirstNameBangla;
            Command.Parameters.Add("@lastNameBangla", SqlDbType.NChar).Value = aEmployeeEntry.LastNameBangla;
            Command.Parameters.Add("@shortName", SqlDbType.VarChar).Value = aEmployeeEntry.ShortName;
            Command.Parameters.Add("@additionalId", SqlDbType.VarChar).Value = aEmployeeEntry.AdditionalId;
            Command.Parameters.Add("@fathersName", SqlDbType.VarChar).Value = aEmployeeEntry.FatherName;
            Command.Parameters.Add("@mothersName", SqlDbType.VarChar).Value = aEmployeeEntry.MotherName;
            Command.Parameters.Add("@dateOfBirth", SqlDbType.Date).Value = aEmployeeEntry.DateOfBirth;
            Command.Parameters.Add("@placeOfBirth", SqlDbType.VarChar).Value = aEmployeeEntry.PlaceOfBirth;
            Command.Parameters.Add("@gender", SqlDbType.VarChar).Value = aEmployeeEntry.Gender;
            Command.Parameters.Add("@bloodGroup", SqlDbType.VarChar).Value = aEmployeeEntry.BloodGroup;
            Command.Parameters.Add("@nationality", SqlDbType.VarChar).Value = aEmployeeEntry.Nationality;
            Command.Parameters.Add("@nationalIdCardNo", SqlDbType.VarChar).Value = aEmployeeEntry.NationalIdCardNo;
            Command.Parameters.Add("@religion", SqlDbType.VarChar).Value = aEmployeeEntry.Religion;
            Command.Parameters.Add("@hobbies", SqlDbType.VarChar).Value = aEmployeeEntry.Hobbies;
            Command.Parameters.Add("@maritialStatus", SqlDbType.VarChar).Value = aEmployeeEntry.MaritialStatus;
            Command.Parameters.Add("@marrigeDate", SqlDbType.Date).Value = aEmployeeEntry.MarrigeDate;
            Command.Parameters.Add("@presentAddress", SqlDbType.VarChar).Value = aEmployeeEntry.PresentAddress;
            Command.Parameters.Add("@parmanentAddress", SqlDbType.VarChar).Value = aEmployeeEntry.ParmanentAddress;
            Command.Parameters.Add("@officialPhone", SqlDbType.VarChar).Value = aEmployeeEntry.OfficialPhone;
            Command.Parameters.Add("@personalPhone", SqlDbType.VarChar).Value = aEmployeeEntry.PersonalPhone;
            Command.Parameters.Add("@officialEmail", SqlDbType.VarChar).Value = aEmployeeEntry.OfficialEmail;
            Command.Parameters.Add("@personalEmail", SqlDbType.VarChar).Value = aEmployeeEntry.PersonalEmail;
            Command.Parameters.Add("@attendenceCardId", SqlDbType.VarChar).Value = aEmployeeEntry.AttendenceCardId;
            Command.Parameters.Add("@fingerPrintId", SqlDbType.VarChar).Value = aEmployeeEntry.FingerPrintId;
            Command.Parameters.Add("@employeePic", SqlDbType.VarBinary).Value = aEmployeeEntry.EmployeePic;
            Command.Parameters.Add("@digitalSignature", SqlDbType.VarBinary).Value = aEmployeeEntry.DigitalSignature;
            var rowAffected = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffected;
        }
    }
}