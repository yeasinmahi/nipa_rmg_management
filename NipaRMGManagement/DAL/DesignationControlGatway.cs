using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using NipaRMGManagement.Models;

namespace NipaRMGManagement.DAL
{
    public class DesignationControlGatway : ConnectionGateway
    {
        public int SaveDesignation(Designation designation)
        {
            Query = "INSERT INTO tbl_Designation (DesignationName,GrossSalary,BasicSalary,HouseRentSupport,MedicalSupport,ConvanceSupport,FoodSupport)" +
                    " VALUES(@DesignationName,@GrossSalary,@BasicSalary,@HouseRentSupport,@MedicalSupport,@ConvanceSupport,@FoodSupport)";
            Command.CommandText = Query;
            Connection.Open();
            Command.Parameters.Add("@DesignationName", SqlDbType.VarChar).Value = designation.DesignationName;
            Command.Parameters.Add("@GrossSalary", SqlDbType.Int).Value = designation.GrossSalary;
            Command.Parameters.Add("@BasicSalary", SqlDbType.Int).Value = designation.BasicSalary;
            Command.Parameters.Add("@HouseRentSupport", SqlDbType.Int).Value = designation.HouseRentSupport;
            Command.Parameters.Add("@MedicalSupport", SqlDbType.Int).Value = designation.MedicalSupport;
            Command.Parameters.Add("@ConvanceSupport", SqlDbType.Int).Value = designation.ConvanceSupport;
            Command.Parameters.Add("@FoodSupport", SqlDbType.Int).Value = designation.FoodSupport;
            var rowAffected = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffected;
        }

        public List<Designation> GetAllDesignation()
        {
            List<Designation> designations = new List<Designation>();
            
            Query = "select * from tbl_Designation";
            Command.CommandText = Query;
            try
            {
                Connection.Open();
                Reader = Command.ExecuteReader();
                while (Reader.Read())
                {
                    Designation designation = new Designation
                    {
                        DesignationId = Convert.ToInt32(Reader["DesignationId"].ToString()),
                        DesignationName = Reader["DesignationName"].ToString(),
                        GrossSalary = Convert.ToInt32(Reader["GrossSalary"].ToString()),
                        BasicSalary = Convert.ToInt32(Reader["BasicSalary"].ToString()),
                        HouseRentSupport = Convert.ToInt32(Reader["HouseRentSupport"].ToString()),
                        MedicalSupport = Convert.ToInt32(Reader["MedicalSupport"].ToString()),
                        ConvanceSupport = Convert.ToInt32(Reader["ConvanceSupport"].ToString()),
                        FoodSupport = Convert.ToInt32(Reader["FoodSupport"].ToString())
                    };
                    designations.Add(designation);
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (Reader!=null)
                {
                    Reader.Close();
                }
                
                Connection.Close();
            }

            return designations;
        }

        public bool ExistDesignation(Designation designation)
        {
            List<string> designationNameList = new List<string>();
            Query = "select * from tbl_Designation";
            Command.CommandText = Query;
            try
            {
                Connection.Open();
                Reader = Command.ExecuteReader();
                while (Reader.Read())
                {
                    string designationName = Reader["DesignationName"].ToString();
                    designationNameList.Add(designationName);
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (Reader != null)
                {
                    Reader.Close();
                }
                Connection.Close();
            }

            return designationNameList.Contains(designation.DesignationName);
        }
    }
}