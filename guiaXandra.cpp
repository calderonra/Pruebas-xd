#include <iostream>
using namespace std;

int sumatoria(int n){
    if(n==0){
        return 0;
    }else{
        return n+sumatoria(n-1);
    }
}

int factorial(int n){
    if(n==1 || n==0){
        return 1;
    }else
    {
        return n*factorial(n-1);
    }

}


int mcd(int a, int b){
    if(b==0) {
        return a;
    }else{
    return mcd(b,a%b);
    }
}



int main(){

    //cout<<sumatoria(5)<<endl;
    cout<<mcd(5,15)<<endl;

    //cout<<factorial(5)<<endl;
    return 0;
}