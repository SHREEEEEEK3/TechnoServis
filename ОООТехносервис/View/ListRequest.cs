using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;

namespace ОООТехносервис.View
{
    public partial class ListRequest : Form
    {
        public ListRequest()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Метод отображения заявок с учётом фильтрации
        /// </summary>
        public void ShowRequests()
        {
            // Получить из БД все заявки
            List<Model.Request> list = Classes.Helper.DBRequest.Request.ToList();
            //
            switch (Classes.Helper.userNow.UserRoleID)
            {
                case 1:// Фильтрация по заявкам для заказчика
                    list = list.Where(r => r.RequestClientID == Classes.Helper.userNow.UserID).ToList();
                    break;
                case 2:// Фильтрация по заявкам для мастера
                    list = list.Where(r => r.RequestMasterID == Classes.Helper.userNow.UserID).ToList();
                    buttonEditRequest.Visible = true;
                    break;
                case 3: 
                    buttonAddRequest.Visible = true;
                    buttonEditRequest.Visible = true;
                    break;
                case 4:
                    buttonReport.Visible = true;
                    break;
            }
            // Фильтровать по статусу
            int numberStatus = (int)comboBoxStatus.SelectedIndex;
            if (numberStatus > 0) 
            {
                list = list.Where(r => r.RequestStatusID == numberStatus).ToList();
            }
            // Поиск по номеру
            if (textBoxNumber.Text!="")
            {
                list = list.Where(r => r.RequestID.ToString().Contains(textBoxNumber.Text)).ToList();
            }
            this.dataGridViewRequest.Rows.Clear(); // Очистили все строки
            // Цикл по перебору всех заявок
            int i = 0;
            foreach (Model.Request request in list)
            {
                this.dataGridViewRequest.Rows.Add();
                dataGridViewRequest.Rows[i].Cells[0].Value = request.RequestID;
                dataGridViewRequest.Rows[i].Cells[1].Value = request.RequestDate.ToLongDateString();
                dataGridViewRequest.Rows[i].Cells[2].Value = request.Device.DeviceName;
                dataGridViewRequest.Rows[i].Cells[3].Value = request.User.UserFullName;
                dataGridViewRequest.Rows[i].Cells[4].Value = request.Status.StatusName;
                dataGridViewRequest.Rows[i].Cells[5].Value = request.User1.UserFullName;
                dataGridViewRequest.Rows[i].Cells[6].Value = request.Stage.StageName;
                i++;
            }
        }

        /// <summary>
        /// Кнопка Выход
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        /// <summary>
        ///  При загрузке окна отобразить список заявок
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ListRequest_Load(object sender, EventArgs e)
        {
            // Заполнить ComboBox статусами из БД
            List<Model.Status> statuses = Classes.Helper.DBRequest.Status.ToList();
            // Новый статус
            Model.Status status = new Model.Status();
            status.StatusID = 0;
            status.StatusName = "Все статусы";
            // Добавить новый статус к статусам из БД
            statuses.Insert(0, status);

            comboBoxStatus.DataSource = statuses;
            // Какое поле будет видеть пользователь
            comboBoxStatus.DisplayMember = "StatusName";
            // То что мы будем получать
            comboBoxStatus.ValueMember = "StatusID";
            comboBoxStatus.SelectedIndex = 0;

            ShowRequests();
        }
        /// <summary>
        /// Выбор статуса для фильтрации
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void comboBoxStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            ShowRequests();
        }

        private void textBoxNumber_TextChanged(object sender, EventArgs e)
        {
            ShowRequests();
        }
        /// <summary>
        /// Добавить заяаку для роли опертатора
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAddRequest_Click(object sender, EventArgs e)
        {
            EditRequest editRequest = new EditRequest(0);
            this.Hide();
            editRequest.ShowDialog();
            this.Show();
        }
        /// <summary>
        /// Кнопка редактирования заявки
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonEditRequest_Click(object sender, EventArgs e)
        {
            // Проверили, что есть выбранная заявка
            if (dataGridViewRequest.SelectedRows.Count > 0) 
            {
                // Получили номер выбранной заявки
                int id = (int)dataGridViewRequest.CurrentRow.Cells[0].Value;
                // Открыли окно и передали в него номер выбранной заявки
                EditRequest editRequest = new EditRequest(id);
                this.Hide();
                editRequest.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("Не выбрана заявка для редактирования");
                
            }
            
            
        }

        
        private void ListRequest_Activated(object sender, EventArgs e)
        {
            ShowRequests();
        }
    }
}
