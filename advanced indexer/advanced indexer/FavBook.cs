using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace advanced_indexer
{
    internal class FavBook
    {
        private string[] BookName;
        private string[] Author;
        private int len;

        public FavBook(int len)
        {
            this.len = len;
            BookName = new string[len];
            Author = new string[len];
        }
        public string this[int index, string name]
        {
            set
            {
                BookName[index] = name;
                Author[index] = value;
            }
            get {
                string res = $"{name} : {Author[index]}";
                return res ;
            }
        }
    }
}
