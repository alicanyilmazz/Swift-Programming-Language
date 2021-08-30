Dart Programlama Dilinde Array yapısı dogrudan yok Dart da array kavramının karşılığı sabit uzunluklu listelerdir. Birde Dynamic uzunluklu otomatik buyup kuculebilen listeler vardır.


@@ Array in Swift - .Net - Dart @@

// Dart - Array
List<int> number = List.filled(3,0,growable=false); // List.filled(number_of_array,default_value)
number[0]=2;
number[1]=33;
number[2]=122;

// Dart List Yapısı not Array
List<int?> numbers = [];
numbers.add(1);
numbers.add(11);

// c# - Array
int[] x;  // can store int values
string[] s; // can store string values
double[] d; // can store double values
Student[] stud1; // can store instances of Student class which is custom class
int[] intArray2 = new int[5]{1, 2, 3, 4, 5};
int[] intArray3 = {1, 2, 3, 4, 5};

// Swift - Array
// !Önemli : c# ve Dart da List yapısı vardır ve boyutu dynamic olarak değişir. ve c# da Array ler ise boyut sabittir , Dart da ise Sabit uzunluklu List ler vardır.
// Fakat List kavramının Swift tarafında karsılıgıda array lerdir.Ama Swift deki arrayler dynamic tir yani append ve Insert methodları ile eleman ekleyebiliriz.
// Yani gelişmiş list özellikleri tasıyan bir array yapısı vardır swift de.Mesela c# da array lere index değerine eleman atarsın ama tanımlanan index değerinin dışına çıkamazsın bu yüzden ve apped veya insert gibi bir methodu yoktur.
// link https://stackoverflow.com/questions/202813/adding-values-to-a-c-sharp-array
var numbers1 : [Int] = [] // Değer vermeyip tip vererek boş array olusturduk.
var numbers2 = [Int]() // tip vermeyip boş array oluşturduk (automatic cast edecek)
var numbers3 : [Int] = [10,20,39,140,50,60] // Hem değer verdik hemde tipini belirttik.
var numbers4 = [1,2,3,4,5,6,7] // Bu şekilde de tanımlama yapabiliriz xcode
var numbers5 : [Int] = Array(repeating: 0, count: 5) // 5 tane sıfır elemanı olan bir dizi olusturur.
var booleanNumbers : [Bool] = Array(repeating: true, count: 5); // 5 tane elemanı true olan dizi olusturur.

@@ object in Swift - .Net - Dart @@

// object in Dart
Object a;
// object in c#
object b;


// c# da static kullanımı

 public static void Main(string[] args)
        {
            Gamer gamer1 = new Gamer(nickName:"Kemal");
            Gamer gamer2 = new Gamer(nickName:"Cemal");
            Gamer gamer3 = new Gamer(nickName:"Ulas");
            Gamer gamer4 = new Gamer(nickName:"Murat");

            BronzLevel bronzLevel = new BronzLevel(gamer1);
            BronzLevel bronzLevel2 = new BronzLevel(gamer2);
            BronzLevel bronzLevel3 = new BronzLevel(gamer3);
            BronzLevel bronzLevel4 = new BronzLevel(gamer4);

            Console.WriteLine(BronzLevel.numberOfGamer);

            foreach (var gamer in BronzLevel.gamers)
            {
                Console.WriteLine(gamer.nickName);
            }
        }

        class Gamer
        {
            public String nickName;

            public Gamer(string nickName)
            {
                this.nickName = nickName;
            }
        }

        class BronzLevel
        {
            public static int numberOfGamer;
            public static List<Gamer> gamers = new List<Gamer>();

           public BronzLevel(Gamer gamer)
            {
                numberOfGamer++;
                gamers.Add(gamer);
            }
        }
        
        
    }
