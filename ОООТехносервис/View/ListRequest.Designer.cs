namespace ОООТехносервис.View
{
    partial class ListRequest
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ListRequest));
            this.label1 = new System.Windows.Forms.Label();
            this.buttonExit = new System.Windows.Forms.Button();
            this.dataGridViewRequest = new System.Windows.Forms.DataGridView();
            this.ColumnID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnDevice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnClient = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnStatus = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnMaster = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnStage = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBoxStatus = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBoxNumber = new System.Windows.Forms.TextBox();
            this.buttonAddRequest = new System.Windows.Forms.Button();
            this.buttonEditRequest = new System.Windows.Forms.Button();
            this.buttonReport = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewRequest)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(542, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(103, 16);
            this.label1.TabIndex = 9;
            this.label1.Text = "Список заявок";
            // 
            // buttonExit
            // 
            this.buttonExit.Location = new System.Drawing.Point(1024, 39);
            this.buttonExit.Name = "buttonExit";
            this.buttonExit.Size = new System.Drawing.Size(103, 34);
            this.buttonExit.TabIndex = 8;
            this.buttonExit.Text = "Назад";
            this.buttonExit.UseVisualStyleBackColor = true;
            this.buttonExit.Click += new System.EventHandler(this.buttonExit_Click);
            // 
            // dataGridViewRequest
            // 
            this.dataGridViewRequest.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewRequest.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColumnID,
            this.ColumnDate,
            this.ColumnDevice,
            this.ColumnClient,
            this.ColumnStatus,
            this.ColumnMaster,
            this.ColumnStage});
            this.dataGridViewRequest.Location = new System.Drawing.Point(12, 174);
            this.dataGridViewRequest.Name = "dataGridViewRequest";
            this.dataGridViewRequest.RowHeadersWidth = 51;
            this.dataGridViewRequest.RowTemplate.Height = 24;
            this.dataGridViewRequest.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridViewRequest.Size = new System.Drawing.Size(1178, 350);
            this.dataGridViewRequest.TabIndex = 11;
            // 
            // ColumnID
            // 
            this.ColumnID.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.ColumnID.HeaderText = "ID";
            this.ColumnID.MinimumWidth = 6;
            this.ColumnID.Name = "ColumnID";
            this.ColumnID.ReadOnly = true;
            this.ColumnID.Width = 49;
            // 
            // ColumnDate
            // 
            this.ColumnDate.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.ColumnDate.HeaderText = "Дата подачи";
            this.ColumnDate.MinimumWidth = 6;
            this.ColumnDate.Name = "ColumnDate";
            this.ColumnDate.ReadOnly = true;
            this.ColumnDate.Width = 119;
            // 
            // ColumnDevice
            // 
            this.ColumnDevice.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnDevice.HeaderText = "Оборудование";
            this.ColumnDevice.MinimumWidth = 6;
            this.ColumnDevice.Name = "ColumnDevice";
            this.ColumnDevice.ReadOnly = true;
            // 
            // ColumnClient
            // 
            this.ColumnClient.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnClient.HeaderText = "ФИО клиента";
            this.ColumnClient.MinimumWidth = 6;
            this.ColumnClient.Name = "ColumnClient";
            this.ColumnClient.ReadOnly = true;
            // 
            // ColumnStatus
            // 
            this.ColumnStatus.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.ColumnStatus.HeaderText = "Статус";
            this.ColumnStatus.MinimumWidth = 6;
            this.ColumnStatus.Name = "ColumnStatus";
            this.ColumnStatus.ReadOnly = true;
            this.ColumnStatus.Width = 82;
            // 
            // ColumnMaster
            // 
            this.ColumnMaster.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnMaster.HeaderText = "ФИО мастера";
            this.ColumnMaster.MinimumWidth = 6;
            this.ColumnMaster.Name = "ColumnMaster";
            this.ColumnMaster.ReadOnly = true;
            // 
            // ColumnStage
            // 
            this.ColumnStage.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.ColumnStage.HeaderText = "Этап";
            this.ColumnStage.MinimumWidth = 6;
            this.ColumnStage.Name = "ColumnStage";
            this.ColumnStage.Width = 69;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(806, 118);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(130, 16);
            this.label2.TabIndex = 12;
            this.label2.Text = "Фильтр по статусу";
            // 
            // comboBoxStatus
            // 
            this.comboBoxStatus.FormattingEnabled = true;
            this.comboBoxStatus.Location = new System.Drawing.Point(962, 115);
            this.comboBoxStatus.Name = "comboBoxStatus";
            this.comboBoxStatus.Size = new System.Drawing.Size(202, 24);
            this.comboBoxStatus.TabIndex = 13;
            this.comboBoxStatus.SelectedIndexChanged += new System.EventHandler(this.comboBoxStatus_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(34, 118);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(118, 16);
            this.label3.TabIndex = 14;
            this.label3.Text = "Поиск по номеру";
            // 
            // textBoxNumber
            // 
            this.textBoxNumber.Location = new System.Drawing.Point(192, 115);
            this.textBoxNumber.Name = "textBoxNumber";
            this.textBoxNumber.Size = new System.Drawing.Size(181, 22);
            this.textBoxNumber.TabIndex = 15;
            this.textBoxNumber.TextChanged += new System.EventHandler(this.textBoxNumber_TextChanged);
            // 
            // buttonAddRequest
            // 
            this.buttonAddRequest.Location = new System.Drawing.Point(54, 559);
            this.buttonAddRequest.Name = "buttonAddRequest";
            this.buttonAddRequest.Size = new System.Drawing.Size(300, 50);
            this.buttonAddRequest.TabIndex = 16;
            this.buttonAddRequest.Text = "Добавить новую заявку";
            this.buttonAddRequest.UseVisualStyleBackColor = true;
            this.buttonAddRequest.Visible = false;
            this.buttonAddRequest.Click += new System.EventHandler(this.buttonAddRequest_Click);
            // 
            // buttonEditRequest
            // 
            this.buttonEditRequest.Location = new System.Drawing.Point(462, 559);
            this.buttonEditRequest.Name = "buttonEditRequest";
            this.buttonEditRequest.Size = new System.Drawing.Size(300, 50);
            this.buttonEditRequest.TabIndex = 17;
            this.buttonEditRequest.Text = "Редактировать заявку";
            this.buttonEditRequest.UseVisualStyleBackColor = true;
            this.buttonEditRequest.Visible = false;
            this.buttonEditRequest.Click += new System.EventHandler(this.buttonEditRequest_Click);
            // 
            // buttonReport
            // 
            this.buttonReport.Location = new System.Drawing.Point(864, 559);
            this.buttonReport.Name = "buttonReport";
            this.buttonReport.Size = new System.Drawing.Size(300, 50);
            this.buttonReport.TabIndex = 18;
            this.buttonReport.Text = "Отчёты";
            this.buttonReport.UseVisualStyleBackColor = true;
            this.buttonReport.Visible = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::ОООТехносервис.Properties.Resources.repair_tools_logo;
            this.pictureBox1.Location = new System.Drawing.Point(54, 13);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(60, 60);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 10;
            this.pictureBox1.TabStop = false;
            // 
            // ListRequest
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1202, 662);
            this.Controls.Add(this.buttonReport);
            this.Controls.Add(this.buttonEditRequest);
            this.Controls.Add(this.buttonAddRequest);
            this.Controls.Add(this.textBoxNumber);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.comboBoxStatus);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridViewRequest);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.buttonExit);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "ListRequest";
            this.Text = "Список заявок";
            this.Activated += new System.EventHandler(this.ListRequest_Activated);
            this.Load += new System.EventHandler(this.ListRequest_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewRequest)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button buttonExit;
        private System.Windows.Forms.DataGridView dataGridViewRequest;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnID;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnDevice;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnClient;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnStatus;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnMaster;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnStage;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBoxStatus;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBoxNumber;
        private System.Windows.Forms.Button buttonAddRequest;
        private System.Windows.Forms.Button buttonEditRequest;
        private System.Windows.Forms.Button buttonReport;
    }
}