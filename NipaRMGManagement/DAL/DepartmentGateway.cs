using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using NipaRMGManagement.Models;

namespace NipaRMGManagement.DAL
{
    public class DepartmentGateway : ConnectionGateway
    {
        public bool IsDepCodeExists(string deptCode)
        {
            Query = "SELECT DepartmentCode From tbl_Department WHERE DepartmentCode='" + deptCode + "'";
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

        public bool IsDepNameExists(string deptName)
        {
            Query = "SELECT DepartmentName From tbl_Department WHERE DepartmentName='" + deptName + "'";
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

        public int SaveDepartment(Department aDepartment)
        {
            Query = "INSERT INTO tbl_Department(DepartmentCode,DepartmentName) VALUES (@departmentCode,@departmentName)";
            Command.CommandText = Query;
            Connection.Open();
            Command.Parameters.Add("@departmentCode", SqlDbType.VarChar).Value = aDepartment.DepartmentCode;
            Command.Parameters.Add("@departmentName", SqlDbType.VarChar).Value = aDepartment.DepartmentName;
            int rowAffected = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffected;
        }

        public List<Department> GetAllDepartment()
        {
            List<Department> departments = new List<Department>();

            Query = "select * from tbl_Department";
            Command.CommandText = Query;
            try
            {
                Connection.Open();
                Reader = Command.ExecuteReader();
                while (Reader.Read())
                {
                    Department department = new Department()
                    {
                        DepartmentCode = Reader["DepartmentCode"].ToString(),
                        DepartmentName = Reader["DepartmentName"].ToString(),

                    };
                    departments.Add(department);
                }
            }
            
            finally
            {
                if (Reader != null)
                {
                    Reader.Close();
                }

                Connection.Close();
            }

            return departments;
        }

    }
}

