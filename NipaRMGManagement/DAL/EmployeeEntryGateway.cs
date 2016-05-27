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
            Query = "INSERT INTO tbl_EmployeeEntry (EmployeeId,Department,Designation,FirstName,LastName," +
                    "FirstNameBangla,LastNameBangla,ShortName,AdditionalId,FatherName,MotherName," +
                    "DateOfBirth,PlaceOfBirth,Gender,BloodGroup,Nationality,NationalIdCardNo," +
                    "Religion,Hobbies,MaritialStatus,MarriageDate,PresentAddress," +
                    "ParmanentAddress,OfficialPhone,PersonalPhone,OfficialEmail,PersonalEmail," +
                    "AttendenceCardId,FingerPrintId,EmployeePicture,DigitalSignature)" +
                    " VALUES(@employeeId,@department,@designation," +
                   "@firstName,@lastName,@firstNameBangla,@lastNameBangla,@shortName," +
                   "@additionalId,@fathersName,@mothersName,@dateOfBirth,@placeOfBirth," +
                   "@gender,@bloodGroup,@nationality,@nationalIdCardNo,@religion,@hobbies," +
                   "@maritialStatus,@marrigeDate,@presentAddress,@parmanentAddress,@officialPhone," +
                   "@personalPhone,@officialEmail,@personalEmail,@attendenceCardId,@fingerPrintId," +
                   "@employeePic,@digitalSignature)";
            Command.CommandText = Query;
            Connection.Open();
            Command.Parameters.Add("@employeeId", SqlDbType.VarChar).Value = aEmployeeEntry.EmployeeId;
            Command.Parameters.Add("@department", SqlDbType.VarChar).Value = aEmployeeEntry.Department;
            Command.Parameters.Add("@designation", SqlDbType.VarChar).Value = aEmployeeEntry.Designation;
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