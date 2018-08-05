using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace A_Day_at_the_Races
{
    public partial class Form1 : Form
    {
        //#
        //declare an array of guys and an arragy of dogs
        Guy[] guys = new Guy[3];
        Dog[] dogs = new Dog[4];

        public Form1()
        {
            InitializeComponent();
            initializeBettingParlor();

            //initialise guys array
            guys[0] = new Guy("T", 50, joeRadioButton, joeBetLabel);
            guys[1] = new Guy("Steve", 75, bobRadioButton, bobBetLabel);
            guys[2] = new Guy("Seb", 45, alRadioButton, alBetLabel);

            //initialise dogs array
            dogs[0] = new Dog(1, dog1PictureBox);
            dogs[1] = new Dog(2, dog2PictureBox);
            dogs[2] = new Dog(3, dog3PictureBox);
            dogs[3] = new Dog(4, dog4PictureBox);
        }

        private void initializeBettingParlor()
        {
            nameLabel.Text = "T";
            betValueUpDown.Minimum = 5;
            betValueUpDown.Maximum = 50;
            dogNumberUpDown.Minimum = 1;
            dogNumberUpDown.Maximum = 4;
            minimumBetLabel.Text = "Minimum bet: £" + betValueUpDown.Minimum;
        }

        private void joeRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            RadioButtonChangedUpdate(0);
        }

        private void bobRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            RadioButtonChangedUpdate(1);
        }

        private void alRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            RadioButtonChangedUpdate(2);
        }

        private void RadioButtonChangedUpdate(int i)
        {
            nameLabel.Text = guys[i].Name;
            betValueUpDown.Maximum = guys[i].Money + guys[i].bet.value;
        }

        private void betButton_Click(object sender, EventArgs e)
        {
            int guyIndex;
            switch (nameLabel.Text)
            {
                case "Steve":
                    guyIndex = 1;
                    break;
                case "Seb":
                    guyIndex = 2;
                    break;
                default:
                    guyIndex = 0;
                    break;
            }
            guys[guyIndex].Money += guys[guyIndex].bet.value;
            guys[guyIndex].bet = new Bet((int)betValueUpDown.Value, dogs[(int)dogNumberUpDown.Value - 1]);
            guys[guyIndex].Money -= guys[guyIndex].bet.value;
            guys[guyIndex].UpdateBetLabel();
            guys[guyIndex].UpdateRadioButton();
        }

        private void raceButton_Click(object sender, EventArgs e)
        {
            bettingParlor.Enabled = false;
            timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            bool finished = false;

            foreach (Dog dog in dogs)
            {
               finished = finished || dog.Run();
            }

            if (finished)
                FinishAndReset();
        }

        private Dog GetWinnerDog()
        {
            Dog dog = dogs[0];
            for (int i = 1; i < dogs.Length; i++)
            {
                if (dogs[i].myPictureBox.Left > dog.myPictureBox.Left)
                    dog = dogs[i];
            }
            return dog;
        }

        private void FinishAndReset()
        {
            timer1.Stop();
            Dog winnerDog = GetWinnerDog();
            MessageBox.Show("Dog #" + winnerDog.number + " won the race!", "We have a winner");
            foreach (Dog dog in dogs)
                dog.Reset();
            foreach (Guy guy in guys)
            {
                if (guy.bet.dog == winnerDog)
                    guy.Money += 2 * guy.bet.value;
                else if (guy.Money == 0)
                {
                    guy.myRadioButton.Enabled = false;
                    guy.myBetLabel.Enabled = false;
                }
                guy.ClearBet();
                if (guy.myRadioButton.Checked)
                    betValueUpDown.Maximum = guy.Money;
            }

            if (guys[0].Money==0 && guys[1].Money==0 && guys[2].Money==0)
            {
                MessageBox.Show("All of you lost all your money!", "Game Over!");
                this.Close();
            }
            bettingParlor.Enabled = true;

        }

    }
}
