using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace A_Day_at_the_Races
{
    class Bet
    {
        public int value { get; set; }
        public Dog dog { get; set; }

        public Bet(int value, Dog dog)
        {
            this.value = value;
            this.dog = dog;
        }
    }
}
