#include <iostream>
#include <fstream>
#include "funcTemplate.h"
using namespace std;

int main()
{
	double x,y;
	cout<<"Input a Number: ";
	cin>>x;
	cout<<"Input another Number: ";	
	cin>>y;
	cout<<sum(x,y)<<endl;
	return 0;
}
