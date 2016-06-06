using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NipaRMGManagement.DAL;
using NipaRMGManagement.Models;

namespace NipaRMGManagement.BLL
{
    public class AttendanceManager
    {
        readonly AttendanceGatway _attendanceGatway=new AttendanceGatway();

        public List<Attendance> GetAttendancesLSheet()
        {
            return _attendanceGatway.GetAttendancesLSheet();
        }
    }
}