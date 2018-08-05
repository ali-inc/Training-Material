using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace A_Day_at_the_Races
{
    class Dog
    {
        public int number;
        public PictureBox myPictureBox;
        public bool won = false;
        public static Random Rand = new Random();

        public Dog(int number, PictureBox myPictureBox)
        {
            this.number = number;
            this.myPictureBox = myPictureBox;
        }

        public bool Run()
        {
            myPictureBox.Left += Rand.Next(1, 5);
            if (myPictureBox.Left+myPictureBox.Width>=myPictureBox.Parent.Width - 15)
            {
                return true;
            }
            return false;
        }

        public void Reset()
        {
            myPictureBox.Left = 10;
        }
    }
}
