using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

namespace GameLibraryDBClient
{
    internal static class DBManager
    {
        public static string IP = "";
        public static string PORT = "";
        public static string SERVICE = "";
        public static string LOGIN = "";
        public static string PASSWORD = "";
        public static OracleConnection Client = null!;
        public static string cst = "";
        public static async void Connect(Action onSuccess, Action<Exception> onFail)
        {
            cst =$"User Id={LOGIN};Password={PASSWORD};Data Source={IP}:{PORT}/{SERVICE}";
            try
            {
                Client = new OracleConnection(cst);
                await Client.OpenAsync();
                onSuccess.Invoke();
                return;
            }catch(Exception ex)
            {
                onFail.Invoke(ex);
                return;
            }

        }

    }
}
