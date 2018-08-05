namespace A_Day_at_the_Races
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
            this.RacetrackPictureBox = new System.Windows.Forms.PictureBox();
            this.dog1PictureBox = new System.Windows.Forms.PictureBox();
            this.dog2PictureBox = new System.Windows.Forms.PictureBox();
            this.dog3PictureBox = new System.Windows.Forms.PictureBox();
            this.dog4PictureBox = new System.Windows.Forms.PictureBox();
            this.bettingParlor = new System.Windows.Forms.GroupBox();
            this.minimumBetLabel = new System.Windows.Forms.Label();
            this.joeRadioButton = new System.Windows.Forms.RadioButton();
            this.bobRadioButton = new System.Windows.Forms.RadioButton();
            this.alRadioButton = new System.Windows.Forms.RadioButton();
            this.betsLabel = new System.Windows.Forms.Label();
            this.joeBetLabel = new System.Windows.Forms.Label();
            this.bobBetLabel = new System.Windows.Forms.Label();
            this.alBetLabel = new System.Windows.Forms.Label();
            this.nameLabel = new System.Windows.Forms.Label();
            this.betButton = new System.Windows.Forms.Button();
            this.betValueUpDown = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.dogNumberUpDown = new System.Windows.Forms.NumericUpDown();
            this.raceButton = new System.Windows.Forms.Button();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.RacetrackPictureBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dog1PictureBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dog2PictureBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dog3PictureBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dog4PictureBox)).BeginInit();
            this.bettingParlor.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.betValueUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dogNumberUpDown)).BeginInit();
            this.SuspendLayout();
            // 
            // RacetrackPictureBox
            // 
            this.RacetrackPictureBox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.RacetrackPictureBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.RacetrackPictureBox.Image = ((System.Drawing.Image)(resources.GetObject("RacetrackPictureBox.Image")));
            this.RacetrackPictureBox.Location = new System.Drawing.Point(0, 0);
            this.RacetrackPictureBox.Margin = new System.Windows.Forms.Padding(0, 3, 0, 3);
            this.RacetrackPictureBox.Name = "RacetrackPictureBox";
            this.RacetrackPictureBox.Size = new System.Drawing.Size(584, 200);
            this.RacetrackPictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.RacetrackPictureBox.TabIndex = 0;
            this.RacetrackPictureBox.TabStop = false;
            // 
            // dog1PictureBox
            // 
            this.dog1PictureBox.Image = ((System.Drawing.Image)(resources.GetObject("dog1PictureBox.Image")));
            this.dog1PictureBox.Location = new System.Drawing.Point(12, 12);
            this.dog1PictureBox.Name = "dog1PictureBox";
            this.dog1PictureBox.Size = new System.Drawing.Size(75, 20);
            this.dog1PictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.dog1PictureBox.TabIndex = 1;
            this.dog1PictureBox.TabStop = false;
            // 
            // dog2PictureBox
            // 
            this.dog2PictureBox.Image = ((System.Drawing.Image)(resources.GetObject("dog2PictureBox.Image")));
            this.dog2PictureBox.Location = new System.Drawing.Point(12, 58);
            this.dog2PictureBox.Name = "dog2PictureBox";
            this.dog2PictureBox.Size = new System.Drawing.Size(75, 20);
            this.dog2PictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.dog2PictureBox.TabIndex = 2;
            this.dog2PictureBox.TabStop = false;
            // 
            // dog3PictureBox
            // 
            this.dog3PictureBox.Image = ((System.Drawing.Image)(resources.GetObject("dog3PictureBox.Image")));
            this.dog3PictureBox.Location = new System.Drawing.Point(12, 112);
            this.dog3PictureBox.Name = "dog3PictureBox";
            this.dog3PictureBox.Size = new System.Drawing.Size(75, 20);
            this.dog3PictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.dog3PictureBox.TabIndex = 3;
            this.dog3PictureBox.TabStop = false;
            // 
            // dog4PictureBox
            // 
            this.dog4PictureBox.Image = ((System.Drawing.Image)(resources.GetObject("dog4PictureBox.Image")));
            this.dog4PictureBox.Location = new System.Drawing.Point(12, 163);
            this.dog4PictureBox.Name = "dog4PictureBox";
            this.dog4PictureBox.Size = new System.Drawing.Size(75, 20);
            this.dog4PictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.dog4PictureBox.TabIndex = 4;
            this.dog4PictureBox.TabStop = false;
            // 
            // bettingParlor
            // 
            this.bettingParlor.Controls.Add(this.raceButton);
            this.bettingParlor.Controls.Add(this.dogNumberUpDown);
            this.bettingParlor.Controls.Add(this.label1);
            this.bettingParlor.Controls.Add(this.betValueUpDown);
            this.bettingParlor.Controls.Add(this.betButton);
            this.bettingParlor.Controls.Add(this.nameLabel);
            this.bettingParlor.Controls.Add(this.alBetLabel);
            this.bettingParlor.Controls.Add(this.bobBetLabel);
            this.bettingParlor.Controls.Add(this.joeBetLabel);
            this.bettingParlor.Controls.Add(this.betsLabel);
            this.bettingParlor.Controls.Add(this.alRadioButton);
            this.bettingParlor.Controls.Add(this.bobRadioButton);
            this.bettingParlor.Controls.Add(this.joeRadioButton);
            this.bettingParlor.Controls.Add(this.minimumBetLabel);
            this.bettingParlor.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.bettingParlor.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bettingParlor.Location = new System.Drawing.Point(0, 206);
            this.bettingParlor.Name = "bettingParlor";
            this.bettingParlor.Size = new System.Drawing.Size(584, 156);
            this.bettingParlor.TabIndex = 5;
            this.bettingParlor.TabStop = false;
            this.bettingParlor.Text = "Betting Parlor";
            // 
            // minimumBetLabel
            // 
            this.minimumBetLabel.AutoSize = true;
            this.minimumBetLabel.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.minimumBetLabel.Location = new System.Drawing.Point(3, 24);
            this.minimumBetLabel.Name = "minimumBetLabel";
            this.minimumBetLabel.Size = new System.Drawing.Size(55, 18);
            this.minimumBetLabel.TabIndex = 0;
            this.minimumBetLabel.Text = "label1";
            // 
            // joeRadioButton
            // 
            this.joeRadioButton.AutoSize = true;
            this.joeRadioButton.Checked = true;
            this.joeRadioButton.Location = new System.Drawing.Point(6, 46);
            this.joeRadioButton.Name = "joeRadioButton";
            this.joeRadioButton.Size = new System.Drawing.Size(107, 20);
            this.joeRadioButton.TabIndex = 1;
            this.joeRadioButton.TabStop = true;
            this.joeRadioButton.Text = "radioButton1";
            this.joeRadioButton.UseVisualStyleBackColor = true;
            this.joeRadioButton.CheckedChanged += new System.EventHandler(this.joeRadioButton_CheckedChanged);
            // 
            // bobRadioButton
            // 
            this.bobRadioButton.AutoSize = true;
            this.bobRadioButton.Location = new System.Drawing.Point(6, 69);
            this.bobRadioButton.Name = "bobRadioButton";
            this.bobRadioButton.Size = new System.Drawing.Size(107, 20);
            this.bobRadioButton.TabIndex = 2;
            this.bobRadioButton.Text = "radioButton2";
            this.bobRadioButton.UseVisualStyleBackColor = true;
            this.bobRadioButton.CheckedChanged += new System.EventHandler(this.bobRadioButton_CheckedChanged);
            // 
            // alRadioButton
            // 
            this.alRadioButton.AutoSize = true;
            this.alRadioButton.Location = new System.Drawing.Point(6, 92);
            this.alRadioButton.Name = "alRadioButton";
            this.alRadioButton.Size = new System.Drawing.Size(107, 20);
            this.alRadioButton.TabIndex = 3;
            this.alRadioButton.Text = "radioButton3";
            this.alRadioButton.UseVisualStyleBackColor = true;
            this.alRadioButton.CheckedChanged += new System.EventHandler(this.alRadioButton_CheckedChanged);
            // 
            // betsLabel
            // 
            this.betsLabel.AutoSize = true;
            this.betsLabel.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.betsLabel.Location = new System.Drawing.Point(228, 24);
            this.betsLabel.Name = "betsLabel";
            this.betsLabel.Size = new System.Drawing.Size(41, 18);
            this.betsLabel.TabIndex = 4;
            this.betsLabel.Text = "Bets";
            // 
            // joeBetLabel
            // 
            this.joeBetLabel.AutoSize = true;
            this.joeBetLabel.Location = new System.Drawing.Point(228, 48);
            this.joeBetLabel.Name = "joeBetLabel";
            this.joeBetLabel.Size = new System.Drawing.Size(46, 16);
            this.joeBetLabel.TabIndex = 5;
            this.joeBetLabel.Text = "label1";
            // 
            // bobBetLabel
            // 
            this.bobBetLabel.AutoSize = true;
            this.bobBetLabel.Location = new System.Drawing.Point(228, 71);
            this.bobBetLabel.Name = "bobBetLabel";
            this.bobBetLabel.Size = new System.Drawing.Size(46, 16);
            this.bobBetLabel.TabIndex = 6;
            this.bobBetLabel.Text = "label2";
            // 
            // alBetLabel
            // 
            this.alBetLabel.AutoSize = true;
            this.alBetLabel.Location = new System.Drawing.Point(228, 94);
            this.alBetLabel.Name = "alBetLabel";
            this.alBetLabel.Size = new System.Drawing.Size(46, 16);
            this.alBetLabel.TabIndex = 7;
            this.alBetLabel.Text = "label3";
            // 
            // nameLabel
            // 
            this.nameLabel.Location = new System.Drawing.Point(23, 129);
            this.nameLabel.Name = "nameLabel";
            this.nameLabel.Size = new System.Drawing.Size(35, 23);
            this.nameLabel.TabIndex = 8;
            this.nameLabel.Text = "name";
            this.nameLabel.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // betButton
            // 
            this.betButton.AutoSize = true;
            this.betButton.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.betButton.ForeColor = System.Drawing.SystemColors.ControlText;
            this.betButton.Location = new System.Drawing.Point(58, 125);
            this.betButton.Name = "betButton";
            this.betButton.Size = new System.Drawing.Size(49, 28);
            this.betButton.TabIndex = 9;
            this.betButton.Text = "bets";
            this.betButton.UseVisualStyleBackColor = true;
            this.betButton.Click += new System.EventHandler(this.betButton_Click);
            // 
            // betValueUpDown
            // 
            this.betValueUpDown.Location = new System.Drawing.Point(110, 127);
            this.betValueUpDown.Name = "betValueUpDown";
            this.betValueUpDown.Size = new System.Drawing.Size(50, 23);
            this.betValueUpDown.TabIndex = 10;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(166, 129);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(142, 16);
            this.label1.TabIndex = 11;
            this.label1.Text = "quids on dog number";
            // 
            // dogNumberUpDown
            // 
            this.dogNumberUpDown.Location = new System.Drawing.Point(314, 127);
            this.dogNumberUpDown.Name = "dogNumberUpDown";
            this.dogNumberUpDown.Size = new System.Drawing.Size(50, 23);
            this.dogNumberUpDown.TabIndex = 12;
            // 
            // raceButton
            // 
            this.raceButton.Location = new System.Drawing.Point(423, 22);
            this.raceButton.Name = "raceButton";
            this.raceButton.Size = new System.Drawing.Size(149, 128);
            this.raceButton.TabIndex = 13;
            this.raceButton.Text = "Race!";
            this.raceButton.UseVisualStyleBackColor = true;
            this.raceButton.Click += new System.EventHandler(this.raceButton_Click);
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(584, 362);
            this.Controls.Add(this.dog4PictureBox);
            this.Controls.Add(this.dog3PictureBox);
            this.Controls.Add(this.dog2PictureBox);
            this.Controls.Add(this.dog1PictureBox);
            this.Controls.Add(this.RacetrackPictureBox);
            this.Controls.Add(this.bettingParlor);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.RacetrackPictureBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dog1PictureBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dog2PictureBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dog3PictureBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dog4PictureBox)).EndInit();
            this.bettingParlor.ResumeLayout(false);
            this.bettingParlor.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.betValueUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dogNumberUpDown)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox RacetrackPictureBox;
        private System.Windows.Forms.PictureBox dog1PictureBox;
        private System.Windows.Forms.PictureBox dog2PictureBox;
        private System.Windows.Forms.PictureBox dog3PictureBox;
        private System.Windows.Forms.PictureBox dog4PictureBox;
        private System.Windows.Forms.GroupBox bettingParlor;
        private System.Windows.Forms.RadioButton alRadioButton;
        private System.Windows.Forms.RadioButton bobRadioButton;
        private System.Windows.Forms.RadioButton joeRadioButton;
        private System.Windows.Forms.Label minimumBetLabel;
        private System.Windows.Forms.Label betsLabel;
        private System.Windows.Forms.Label alBetLabel;
        private System.Windows.Forms.Label bobBetLabel;
        private System.Windows.Forms.Label joeBetLabel;
        private System.Windows.Forms.Label nameLabel;
        private System.Windows.Forms.Button betButton;
        private System.Windows.Forms.Button raceButton;
        private System.Windows.Forms.NumericUpDown dogNumberUpDown;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.NumericUpDown betValueUpDown;
        private System.Windows.Forms.Timer timer1;
    }
}

