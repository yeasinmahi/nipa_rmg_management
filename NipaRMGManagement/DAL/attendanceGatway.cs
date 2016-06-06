using NipaRMGManagement.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace NipaRMGManagement.DAL
{
    public class AttendanceGatway : ConnectionGateway
    {
        public List<Attendance> GetAttendancesLSheet()
        {
            List<Attendance> attendances = new List<Attendance>();
            QueryZ = "SELECT * FROM TmpAtt";
            CommandZ.CommandText = QueryZ;
            ConnectionZ.Open();
            ReaderZ = CommandZ.ExecuteReader();

            while (ReaderZ != null && ReaderZ.Read())
            {
                Attendance attendance = new Attendance();

                attendance.UserName = ReaderZ["UsrName"].ToString();
                attendance.Date = Convert.ToDateTime(ReaderZ["TrkDate"].ToString()).ToShortDateString();
                attendance.InTime = Convert.ToDateTime(ReaderZ["STime"].ToString()).ToShortTimeString();
                attendance.OutTime = Convert.ToDateTime(ReaderZ["ETime"].ToString()).ToShortTimeString();
                attendances.Add(attendance);

            }
            try
            {
                
            }
            catch (Exception)
            {

            }
            finally
            {
                if (ReaderZ!=null)
                {
                    ReaderZ.Close();
                }
                if (ConnectionZ!=null)
                {
                    ConnectionZ.Close();
                }
            }
            
           
            return attendances;
        }
    }
}