public class Program
{
    public static void Main(string[] args)
    {
        int Control = 0;
        string Key;
        while (true)
        {
            Console.WriteLine(Control);
            Key = Console.ReadKey().Key.ToString();
            Console.Clear();
            if (Key == "DownArrow")
            {
                Control++;
                Control %= 10;
            }
            if (Key == "Escape")
            {
                return;
            }
            if (Key == "Enter")
            {

            }
        }
    }
}