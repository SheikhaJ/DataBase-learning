namespace advanced_indexer
{
    internal class Program
    {
        static void Main(string[] args)
        {
            FavBook book = new FavBook(2);
            book[0, "aaa"] = "bbb";
            book[1, "sss"] = "rrr";
            Console.WriteLine(book[0,"aaa"]);
        }
    }
}