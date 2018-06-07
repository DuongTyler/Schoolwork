#include <iostream>
#include <fstream>
using namespace std;
string phrase;
string line;
int main()
{
	ofstream file;
	file.open("text.txt",ios::app);
	cout<<"Input a Phrase: ";
	getline(cin, phrase);
	file<<phrase<<"\n";
	ifstream file("test.txt");
	while(getline (file,line))
	{
		cout<<line<<endl;
	}
	file.close();
	return 0;
}
