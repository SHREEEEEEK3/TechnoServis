using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ОООТехносервис.Classes;

namespace ОООТехносервис
{
    public partial class Authorization : Form
    {
        public Authorization()
        {
            InitializeComponent();
            //Создали подключенике к БД
            try
            {
                Classes.Helper.DBRequest = new Model.ConnectDBRequest();
                MessageBox.Show("К БД подключились");
            }
            catch {
                MessageBox.Show("Не удалось подключиться к БД");
                Environment.Exit(-1);//Аварийный выход из приложения
            }
        }
        /// <summary>
        /// Выход из приложения
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        /// <summary>
        /// Вход в систему
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonInput_Click(object sender, EventArgs e)
        {
            String login, password;
            //Получили данные
            login = textBoxLogin.Text;
            password = textBoxPassword.Text;
            //Ещё короче
            Helper.userNow = Helper.DBRequest.User.Where(u => u.UserLogin == login && u.UserPassword == password).FirstOrDefault();

            //--------------------------------//
            ////Результат запроса на получение всех пользователей
            //List<Model.User> users = Classes.Helper.DBRequest.User.ToList();
            ////Создали отдельного пользователя
            //Model.User userNow = null;
            ////Перебор всех пользователей с помощью SQL запроса
            //List<Model.User> userWhere = users.Where(user=> user.UserLogin == login && user.UserPassword == password).ToList();
            //userNow = userWhere.FirstOrDefault();
            //--------------------------------//

            //--------------------------------//
            //Перебор всех пользователей
            //foreach (Model.User user in users)
            //{
            //    if (user.UserLogin == login && user.UserPassword == password)
            //    {
            //        userNow = user;  
            //        break;
            //    }
            //}
            //--------------------------------//

            if (Helper.userNow != null)
            {
                MessageBox.Show("Пользователь найден. Ваша роль " + Helper.userNow.Role.RoleName); 
                //Отобразить окно
                View.ListRequest listRequest = new View.ListRequest();
                this.Hide(); //Временно скрыли окно авторизации
                listRequest.ShowDialog(); //Открыть окно список заявок
                this.Show(); //Показать окно авторизации после закрытия окна список заявок
            }
            else
            {
                MessageBox.Show("Пользователь не найден");
            }
        }
    }
}
