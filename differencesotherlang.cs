// ------------------------------------------------- 1.) Verilen kelimeyi tersine çeviren program örneği. ------------------------------------------------------

namespace ProgrammingLanguageSyntax
{
    class Program
    {
        static void Main(string[] args)
        {
           
        }

        public static void mainSample()
        {
            string sentence = "alican";
            string reversedSentence = "";
            string[] arr = new string[10];
            for (int i = 0; i < sentence.Length; i++)
            {
                reversedSentence += sentence[sentence.Length - 1 - i];
                // reversedSentence[i] = sentence[sentence.Length - 1 - i]; --> c#(read only okuyabilirsin ama yazamazsın) ve dart dilinde hata verir.ikisindede kod yazım mantıgı aynı.
                // Cunku String sınıfı immutable ' dır.

            }
            Console.WriteLine(reversedSentence);
        }

        public static void secondSample()
        {
            var sentence = "alican";
            var stringBuilder = new StringBuilder(sentence);
            stringBuilder.Remove(3,2);
            stringBuilder.Insert(3, "oo");
            sentence = stringBuilder.ToString();
            Console.WriteLine(sentence);
        }

        public static void thirdSample()
        {
            var sentence = "alican";
            sentence=sentence.Replace("i", "x");
            Console.WriteLine(sentence);
        }
    }
}
// Detaylı acıklama için lütfen aşağıdaki siteyi ziyaret edin.
// https://www.arclab.com/en/kb/csharp/replace-or-remove-char-in-string-by-index.html 
// MSDN : https://social.msdn.microsoft.com/Forums/vstudio/en-US/c88581fc-645b-462b-b0f8-e20512be88ed/add-characters-to-string?forum=csharpgeneral
