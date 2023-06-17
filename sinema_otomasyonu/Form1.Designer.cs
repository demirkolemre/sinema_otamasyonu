namespace sinema_otomasyonu
{
    partial class Form1
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.comboBox_Salon = new System.Windows.Forms.ComboBox();
            this.labelSalon = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.button_biletsat = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBox_Film = new System.Windows.Forms.ComboBox();
            this.comboBox_Seans = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label_bos = new System.Windows.Forms.Label();
            this.label_dolu = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.button_iptalet = new System.Windows.Forms.Button();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.sag_tik_bilet_sat = new System.Windows.Forms.ToolStripMenuItem();
            this.biletİptalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yenileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1.SuspendLayout();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // comboBox_Salon
            // 
            this.comboBox_Salon.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.comboBox_Salon.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox_Salon.FormattingEnabled = true;
            this.comboBox_Salon.Location = new System.Drawing.Point(843, 131);
            this.comboBox_Salon.Name = "comboBox_Salon";
            this.comboBox_Salon.Size = new System.Drawing.Size(165, 31);
            this.comboBox_Salon.TabIndex = 0;
            this.comboBox_Salon.SelectedIndexChanged += new System.EventHandler(this.comboBox_Salon_SelectedIndexChanged);
            // 
            // labelSalon
            // 
            this.labelSalon.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.labelSalon.AutoSize = true;
            this.labelSalon.BackColor = System.Drawing.Color.Transparent;
            this.labelSalon.ForeColor = System.Drawing.Color.Cornsilk;
            this.labelSalon.Location = new System.Drawing.Point(749, 134);
            this.labelSalon.Name = "labelSalon";
            this.labelSalon.Size = new System.Drawing.Size(92, 23);
            this.labelSalon.TabIndex = 1;
            this.labelSalon.Text = "Salon Seç :";
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel1.Location = new System.Drawing.Point(12, 53);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(726, 448);
            this.panel1.TabIndex = 2;
            // 
            // button_biletsat
            // 
            this.button_biletsat.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.button_biletsat.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.button_biletsat.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.button_biletsat.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.button_biletsat.Location = new System.Drawing.Point(756, 466);
            this.button_biletsat.Name = "button_biletsat";
            this.button_biletsat.Size = new System.Drawing.Size(255, 35);
            this.button_biletsat.TabIndex = 9;
            this.button_biletsat.Text = "Bilet Sat";
            this.button_biletsat.UseVisualStyleBackColor = false;
            this.button_biletsat.Click += new System.EventHandler(this.button_biletsat_Click);
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.ForeColor = System.Drawing.Color.Cornsilk;
            this.label2.Location = new System.Drawing.Point(749, 55);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(87, 23);
            this.label2.TabIndex = 10;
            this.label2.Text = "Filmi Seç :";
            // 
            // comboBox_Film
            // 
            this.comboBox_Film.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.comboBox_Film.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox_Film.FormattingEnabled = true;
            this.comboBox_Film.Location = new System.Drawing.Point(842, 52);
            this.comboBox_Film.Name = "comboBox_Film";
            this.comboBox_Film.Size = new System.Drawing.Size(165, 31);
            this.comboBox_Film.TabIndex = 11;
            this.comboBox_Film.SelectedIndexChanged += new System.EventHandler(this.comboBox_Film_SelectedIndexChanged);
            // 
            // comboBox_Seans
            // 
            this.comboBox_Seans.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.comboBox_Seans.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox_Seans.FormattingEnabled = true;
            this.comboBox_Seans.Location = new System.Drawing.Point(843, 91);
            this.comboBox_Seans.Name = "comboBox_Seans";
            this.comboBox_Seans.Size = new System.Drawing.Size(165, 31);
            this.comboBox_Seans.TabIndex = 12;
            this.comboBox_Seans.SelectedIndexChanged += new System.EventHandler(this.comboBox_Seans_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.ForeColor = System.Drawing.Color.Cornsilk;
            this.label3.Location = new System.Drawing.Point(744, 94);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(101, 23);
            this.label3.TabIndex = 13;
            this.label3.Text = "Seansı Seç :";
            // 
            // label_bos
            // 
            this.label_bos.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label_bos.AutoSize = true;
            this.label_bos.BackColor = System.Drawing.Color.Transparent;
            this.label_bos.Font = new System.Drawing.Font("Segoe UI", 15.75F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label_bos.ForeColor = System.Drawing.Color.Green;
            this.label_bos.Location = new System.Drawing.Point(774, 14);
            this.label_bos.Name = "label_bos";
            this.label_bos.Size = new System.Drawing.Size(44, 30);
            this.label_bos.TabIndex = 16;
            this.label_bos.Text = "Boş";
            // 
            // label_dolu
            // 
            this.label_dolu.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label_dolu.AutoSize = true;
            this.label_dolu.BackColor = System.Drawing.Color.Transparent;
            this.label_dolu.Font = new System.Drawing.Font("Segoe UI", 15.75F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label_dolu.ForeColor = System.Drawing.Color.Red;
            this.label_dolu.Location = new System.Drawing.Point(866, 14);
            this.label_dolu.Name = "label_dolu";
            this.label_dolu.Size = new System.Drawing.Size(56, 30);
            this.label_dolu.TabIndex = 17;
            this.label_dolu.Text = "Dolu";
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.BackColor = System.Drawing.Color.Green;
            this.label1.Location = new System.Drawing.Point(12, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(726, 38);
            this.label1.TabIndex = 18;
            this.label1.Text = "PERDE";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // listBox1
            // 
            this.listBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.listBox1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 16;
            this.listBox1.Location = new System.Drawing.Point(3, 25);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(248, 229);
            this.listBox1.TabIndex = 19;
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.groupBox1.Controls.Add(this.listBox1);
            this.groupBox1.Controls.Add(this.button_iptalet);
            this.groupBox1.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.groupBox1.Location = new System.Drawing.Point(753, 168);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(254, 292);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Satılan Biletler";
            // 
            // button_iptalet
            // 
            this.button_iptalet.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.button_iptalet.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.button_iptalet.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.button_iptalet.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.button_iptalet.Location = new System.Drawing.Point(3, 254);
            this.button_iptalet.Name = "button_iptalet";
            this.button_iptalet.Size = new System.Drawing.Size(248, 35);
            this.button_iptalet.TabIndex = 15;
            this.button_iptalet.Text = "Yenile";
            this.button_iptalet.UseVisualStyleBackColor = false;
            this.button_iptalet.Click += new System.EventHandler(this.button_iptalet_Click);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.sag_tik_bilet_sat,
            this.biletİptalToolStripMenuItem,
            this.yenileToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(124, 70);
            this.contextMenuStrip1.Opening += new System.ComponentModel.CancelEventHandler(this.contextMenuStrip1_Opening);
            // 
            // sag_tik_bilet_sat
            // 
            this.sag_tik_bilet_sat.Name = "sag_tik_bilet_sat";
            this.sag_tik_bilet_sat.Size = new System.Drawing.Size(123, 22);
            this.sag_tik_bilet_sat.Text = "Bileti sat";
            this.sag_tik_bilet_sat.Click += new System.EventHandler(this.silToolStripMenuItem_Click);
            // 
            // biletİptalToolStripMenuItem
            // 
            this.biletİptalToolStripMenuItem.Name = "biletİptalToolStripMenuItem";
            this.biletİptalToolStripMenuItem.Size = new System.Drawing.Size(123, 22);
            this.biletİptalToolStripMenuItem.Text = "Bilet iptal";
            this.biletİptalToolStripMenuItem.Click += new System.EventHandler(this.biletİptalToolStripMenuItem_Click);
            // 
            // yenileToolStripMenuItem
            // 
            this.yenileToolStripMenuItem.Name = "yenileToolStripMenuItem";
            this.yenileToolStripMenuItem.Size = new System.Drawing.Size(123, 22);
            this.yenileToolStripMenuItem.Text = "Yenile";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 23F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.BackgroundImage = global::sinema_otomasyonu.Properties.Resources._12345;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1020, 513);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label_dolu);
            this.Controls.Add(this.label_bos);
            this.Controls.Add(this.labelSalon);
            this.Controls.Add(this.comboBox_Film);
            this.Controls.Add(this.comboBox_Salon);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.comboBox_Seans);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.button_biletsat);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.ForeColor = System.Drawing.Color.Cornsilk;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 6, 4, 6);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Sinema Otomasyonu Programı";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBox_Salon;
        private System.Windows.Forms.Label labelSalon;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button button_biletsat;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBox_Film;
        private System.Windows.Forms.ComboBox comboBox_Seans;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label_bos;
        private System.Windows.Forms.Label label_dolu;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem sag_tik_bilet_sat;
        private System.Windows.Forms.ToolStripMenuItem biletİptalToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem yenileToolStripMenuItem;
        private System.Windows.Forms.Button button_iptalet;
    }
}

