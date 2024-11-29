using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using ОООТехносервис.Classes;
using ОООТехносервис.Model;

namespace ОООТехносервис.View
{
    public partial class EditRequest : Form
    {
        Model.Request Request; // Глобальная для окна

        public EditRequest()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Конструктор с параметром 
        /// </summary>
        /// <param name="id">Номер выбранной заявки</param>
        public EditRequest(int id)
        {
            InitializeComponent();
            Request = null;
            if (id > 0)
            {
                Request = Classes.Helper.DBRequest.Request.Where(r => r.RequestID == id).FirstOrDefault();
            }           
                     
        }

        private void buttonExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void EditRequest_Load(object sender, EventArgs e)
        {
            // Настройка всех ComboBox
            // Текущая дата
            textBoxDate.Text = DateTime.Now.ToShortDateString();
            // Длительность при добавлении новой заявки равна 0
            textBoxTime.Text = "0";
            // Оборудование
            comboBoxDevice.DataSource = Helper.DBRequest.Device.ToList();
            comboBoxDevice.DisplayMember = "DeviceName";
            comboBoxDevice.ValueMember = "DeviceID";
            comboBoxDevice.SelectedIndex = -1;
            // Проблема
            comboBoxProblem.DataSource = Helper.DBRequest.Defect.ToList();
            comboBoxProblem.DisplayMember = "DefectName";
            comboBoxProblem.ValueMember = "DefectID";
            comboBoxProblem.SelectedIndex = -1;
            // Клиент
            comboBoxClient.DataSource = Helper.DBRequest.User.ToList();
            comboBoxClient.DisplayMember = "UserFullName";
            comboBoxClient.ValueMember = "UserID";
            comboBoxClient.SelectedIndex = -1;
            // Статус
            comboBoxStatus.DataSource = Helper.DBRequest.Status.ToList();
            comboBoxStatus.DisplayMember = "StatusName";
            comboBoxStatus.ValueMember = "StatusID";
            comboBoxStatus.SelectedValue = 1;
            
            // Мастер
            comboBoxMaster.DataSource = Helper.DBRequest.User.Where(r => r.UserRoleID == 2).ToList();
            comboBoxMaster.DisplayMember = "UserFullName";
            comboBoxMaster.ValueMember = "UserID";
            comboBoxMaster.SelectedIndex = -1;
            // Приоритет
            comboBoxPriory.DataSource = Helper.DBRequest.Priory.ToList();
            comboBoxPriory.DisplayMember = "PrioryName";
            comboBoxPriory.ValueMember = "PrioryID";
            comboBoxPriory.SelectedIndex = -1;
            // Этап
            comboBoxStage.DataSource = Helper.DBRequest.Stage.ToList();
            comboBoxStage.DisplayMember = "StageName";
            comboBoxStage.ValueMember = "StageID";
            comboBoxStage.SelectedValue = 3;
            

            if (Request == null)
            {                
                textBoxDate.Text = DateTime.Now.ToShortDateString();
                comboBoxStatus.SelectedValue = 1;
                comboBoxStage.SelectedValue = 3;                
                textBoxTime.Text = "0";

            } else
            {
                comboBoxDevice.SelectedValue = Request.RequestDeviceID;
                comboBoxProblem.SelectedValue = Request.RequestDefectID;
                comboBoxClient.SelectedValue = Request.RequestClientID;
                comboBoxMaster.SelectedValue = Request.RequestMasterID;
                comboBoxPriory.SelectedValue = Request.RequestPrioryID;
                textBoxDate.Text = Request.RequestDate.ToShortDateString();
                comboBoxStatus.SelectedValue = Request.RequestStatusID;
                comboBoxStage.SelectedValue = Request.RequestStageID;
                textBoxTime.Text = Request.RequestTime.ToString();
                textBoxDescription.Text = Request.RequestDescription.ToString();
                textBoxComment.Text = Request.RequestComment.ToString();
            }

            

            // В зависимости от роли пользователя включим элементы интерфейса
            if (Helper.userNow.UserRoleID == 3)
            {
                // Оператор в любом режиме может менять мастера
                comboBoxMaster.Enabled = true;
                // В режиме добавления
                if (Request == null) 
                {
                    comboBoxDevice.Enabled = comboBoxProblem.Enabled = comboBoxClient.Enabled = comboBoxPriory.Enabled = true;
                    textBoxDescription.Enabled = true;
                }   
            }

            if (Helper.userNow.UserRoleID == 2)
            {
                // Мастер может только редактировать
                textBoxTime.Enabled = comboBoxStage.Enabled = textBoxComment.Enabled = true;
            }            
        }
        /// <summary>
        /// Кнопка сформировать
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button1_Click(object sender, EventArgs e)
        {
            if (Request == null)
            {
                Request = new Request();

                Request.RequestDate = DateTime.Parse(textBoxDate.Text);
                Request.RequestDeviceID = (int)comboBoxDevice.SelectedValue;
                Request.RequestDefectID = (int)comboBoxProblem.SelectedValue;
                Request.RequestClientID = (int)comboBoxClient.SelectedValue;
                Request.RequestDescription = textBoxDescription.Text;
                Request.RequestStatusID = (int)comboBoxStatus.SelectedValue;
                Request.RequestMasterID = (int)comboBoxMaster.SelectedValue;
                Request.RequestTime = int.Parse(textBoxTime.Text);
                Request.RequestPrioryID = (int)comboBoxPriory.SelectedValue;
                Request.RequestStageID = (int)comboBoxStage.SelectedValue;
                Request.RequestComment = textBoxComment.Text;

                Helper.DBRequest.Request.Add(Request);

                try
                {
                    Helper.DBRequest.SaveChanges();
                    MessageBox.Show("Данные успешно добавлены");
                }
                catch (Exception) 
                {
                    MessageBox.Show("Данные не добавлены");
                    return;
                }
                this.Close();
            } else
            {
                Request.RequestDate = DateTime.Parse(textBoxDate.Text);
                Request.RequestDeviceID = (int)comboBoxDevice.SelectedValue;
                Request.RequestDefectID = (int)comboBoxProblem.SelectedValue;
                Request.RequestClientID = (int)comboBoxClient.SelectedValue;
                Request.RequestDescription = textBoxDescription.Text;
                Request.RequestStatusID = (int)comboBoxStatus.SelectedValue;
                Request.RequestMasterID = (int)comboBoxMaster.SelectedValue;
                Request.RequestTime = int.Parse(textBoxTime.Text);
                Request.RequestPrioryID = (int)comboBoxPriory.SelectedValue;
                Request.RequestStageID = (int)comboBoxStage.SelectedValue;
                Request.RequestComment = textBoxComment.Text;

                try
                {
                    Helper.DBRequest.SaveChanges();
                    MessageBox.Show("Данные успешно отредактированы");
                }
                catch (Exception)
                {
                    MessageBox.Show("Данные не отредактированы");
                    return;
                }
                this.Close();
            }
        }
    }
}
