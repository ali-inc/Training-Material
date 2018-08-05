using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace A_Day_at_the_Races
{
    class Guy
    {
        public string Name { get; set; }
        public int Money { get; set; }
        public Bet bet { get; set; }
        public RadioButton myRadioButton { get; set; }
        public Label myBetLabel { get; set; }

        public Guy(string name, int money, RadioButton radioButton, Label betLabel)
        {
            Name = name;
            Money = money;
            myRadioButton = radioButton;
            myBetLabel = betLabel;
            //myBetLabel.Text = Name + " has no bet yet.";
            bet = null;
            ClearBet();
        }

        public void UpdateRadioButton()
        {
            myRadioButton.Text = Name + " has £" + Money;
        }

        public void UpdateBetLabel()
        {
            myBetLabel.Text = Name + " bets £" + bet.value + " on dog #" + bet.dog.number;
        }

        public void ClearBet()
        {
            bet = new Bet(0, null);
            myBetLabel.Text = Name + " has no bet yet.";
            UpdateRadioButton();
        }


    }
}
