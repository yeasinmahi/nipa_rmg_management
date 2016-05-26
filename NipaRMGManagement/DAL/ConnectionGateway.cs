﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace NipaRMGManagement.DAL
{
    public class ConnectionGateway
    {
        public string ConnectionString = WebConfigurationManager.ConnectionStrings["NipaRMGConnectionString"].ConnectionString;
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }
        public SqlDataReader Reader { get; set; }
        public string Query { get; set; }

        public ConnectionGateway()
        {
            Connection = new SqlConnection(ConnectionString);
            Command = new SqlCommand();
            Command.Connection = Connection;
        }
    }
}