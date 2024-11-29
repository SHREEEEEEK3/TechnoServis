using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ОООТехносервис.Classes
{
    public class Helper
    {
        // Связка с БД static что объект будет в единственном экземпляре
        public static Model.ConnectDBRequest DBRequest { get; set; }
        //Пользователь активного сеанса
        public static Model.User userNow;
    }
}
