#include <iostream>
#include <io.h> // for _setmode
#include <fcntl.h> // for _O_U16TEXT
using namespace std;

/// PART 1
// TASK I
int main()
{
	cout << "Name       : \"The war and the peace\"" << endl;
	cout << "Avtor      : L.N. Tolstoj" << endl;
	cout << "Izdatelstvo: Piter" << endl;
	cout << "Pages      : 500" << endl;
}

// TASK II
int main()
{
	cout << "\"Kraj lukomor’a dub zelenyj,\nI zolotyj lancyuh na nim:\nShodnya, shonochi kit uchenyj\nNa lancyuhu kruzhl’aje tim\"" << endl; // я хз як зробити звук
}

// TASK III
int main() {
    _setmode(_fileno(stdout), _O_U16TEXT);
    wcout << L"╔════════════════════════════════════════════╗" << endl;
    wcout << L"║          Pory Roku                         ║" << endl;
    wcout << L"╠═════════╦═══════════╦═══════════╦══════════╣" << endl;
    wcout << L"║  Zyma   ║   Vesna   ║    Lito   ║   Osin   ║" << endl;
    wcout << L"╚═════════╩═══════════╩═══════════╩══════════╝" << endl;
}

/// PART 2
// TASK I
int main() {
    int year{ 0 };
    cout << "ENTER THE YEAR > ";
    cin >> year;

    int days = 365 + ((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)));
    cout << "In " << year << " year = " << days << " days" << endl;
}

// TASK II
int main() {
    int hryvnia{ 0 }, kopiyki{ 0 };
    cout << "ENTER HOW MUCH HRYVNI >> ";
    cin >> hryvnia;
    cout << "ENTER HOW MUCH KOPIYKI >> ";
    cin >> kopiyki;
    hryvnia = hryvnia + kopiyki / 100;
    kopiyki = kopiyki % 100;
    cout << "CORRECT AMOUNT: " << hryvnia << " UAH " << kopiyki << " kop" << endl;
}

// TASK III
int main() 
{
    cout << "Calculating parallelepiped volume." << endl;
    cout << "Enter the data:" << endl;
    double length{ 0 };
    cout << "\tEnter the length (cm) >> ";
    cin >> length;

    double width{ 0 };
    cout << "\tEnter the width (cm) >> ";
    cin >> width;

    double height{ 0 };
    cout << "\tEnter the height (cm) >> ";
    cin >> height;

    cout << "\tThe volume is " << length * width * height << " cm3" << endl;
}

// TASK IV
int main() 
{
    cout << "Calculating the distance between settlements." << endl;
    cout << "Enter the data:" << endl;
    int scale{ 0 };
    cout << "Enter the scale of the map (how many km in one cm) >> ";
    cin >> scale;
    double distincm{ 0 };
    cout << "Enter how much cm are there between those 2 settlements on the actual map >> ";
    cin >> distincm;

    cout << "Distance between those settlements is " << scale * distincm << " km.";
}

// TASK V
int main() 
{
    double radius{ 0 };
    cout << "Enter the sphere's radius (in cm) >> ";
    cin >> radius;
    int vol = (radius * radius * radius) * 3.14 * (4 / 3);
    cout << "The volume of the sphere is " << vol << " cm3.";
}
