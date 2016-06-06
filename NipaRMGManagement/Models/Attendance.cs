using System;

namespace NipaRMGManagement.Models
{
    public class Attendance
    {
        public int AttendanceId { get; set; }
        public string UserName { get; set; }
        public string Date { get; set; }
        public string InTime { get; set; }
        public string OutTime { get; set; }
    }
}