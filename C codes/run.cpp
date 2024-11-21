#include <iostream>
using namespace std;
int main(){
    string n;
    getline(cin, n);
    // cout<<n<<endl;

if (n.find("int") != string::npos && n.find("float")!=string::npos) {
        cout << "not matched" << endl;  
    } else if(n.find("int")!=string::npos) {
        cout << "matched" << endl;  
    
    // for(int i = 0; i < n.length(); ++i) {
    //     cout << n[i] << endl; 
    // }
}
  