#include <iostream>
using namespace std;

/// PART 1
// TASK I
int main()
{
	// How many had passed
	int seconds;
	cout << "ENTER HOW MANY SECONDS HAD PASSED SINCE THE START OF THE DAY > " << endl;
	cin >> seconds;
	int hours = seconds / 3600;
	int minutes = (seconds % 3600) / 60;
	int sec = seconds % 60;
	cout << "TIME SINCE THE START OF THE DAY > " << hours << " : " << minutes << " : " << sec << endl;
	// How many left
	int left_seconds = 86400 - seconds;
	int left_hours = left_seconds / 3600;
	int left_minutes = (left_seconds % 3600) / 60;
	int left_sec = left_seconds % 60;
	cout << "TIME LEFT UNTIL THE MIDNIGHT > " << left_hours << " : " << left_minutes << " : " << left_sec << endl;
}

// TASK II
int main()
{
	double diameter;
	cout << "ENTER THE DIAMETER OF THE CIRCLE IN CENTIMETERS > ";
	cin >> diameter;
	double area{ 3.14 * (diameter / 2) * (diameter / 2) };
	double circumference{ 3.14 * diameter };
	cout << "THE AREA OF THE CIRCLE IS " << area << "cm" << endl;
	cout << "THE AREA OF THE CIRCLE IS " << circumference << "cm" << endl;
}

/// PART 2
// TASK I
int main()
{
	int a;
	cout << "ENTER THE FIRST NUMBER > ";
	cin >> a;
	int b;
	cout << "ENTER THE SECOND NUMBER > ";
	cin >> b;
	cout << "SUM: " << a + b << endl;
	cout << "MULTIPLICATION: " << a * b << endl;
	cout << "AVERAGE: " << (a + b) / 2.0 << endl;
}

// TASK II
int main()
{
	int a;
	cout << "ENTER THE FIRST NUMBER > ";
	cin >> a;
	int b;
	cout << "ENTER THE SECOND NUMBER > ";
	cin >> b;
	int c;
	cout << "ENTER THE THIRD NUMBER > ";
	cin >> c;
	cout << "SUM: " << a + b + c << endl;
	cout << "MULTIPLICATION: " << a * b * c << endl;
	cout << "AVERAGE: " << (a + b + c) / 3.0 << endl;
}

// TASK III
int main()
{
	int price;
	cout << "ENTER HOW MANY ONE LAPTOP COST IN DOLLARS > ";
	cin >> price;
	int quantity;
	cout << "ENTER HOW MANY LAPTOP YOU WANT TO BUY > ";
	cin >> quantity;
	int discount;
	cout << "ENTER DISCOUNT PERCENTAGE > ";
	cin >> discount;
	int total = price * quantity;
	int dis = (total * discount) / 100;
	int finalcost = total - dis;
	cout << "TOTAL COST IS $" << finalcost << endl;
}

// TASK IV
int main()
{
	int sales;
	cout << "ENTER MONTHLY SALES IN DOLLARS > ";
	cin >> sales;
	double percentage{ sales * 0.05 };
	double payment{ 100 + percentage };
	cout << "MANAGER'S PAY IS $" << payment << endl;
}

// TASK V
int main()
{
	double scale;
	cout << "ENTER HOW MANY THE FILE WEIGHTS IN GIGABYTES > ";
	cin >> scale;
	double speed;
	cout << "ENTER THE SPEED OF YOUR MODEM IN BITS PER SECOND > ";
	cin >> speed;
	int time = (scale * 1024 * 1024 * 1024 * 8) / speed;
	int hours = time / 3600;
	int minutes = (time % 3600) / 60;
	int seconds = time % 60;
	cout << "THE ESTIMATED DOWNLOAD TIME IS " << hours << " HOURS, " << minutes << " MINUTES, AND " << seconds << " SECONDS." << endl;
}

// VOLUNTEER AUTUMN, all rights reserved
