#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>

using namespace std;

class Animal{
public:
    string move(){
        return "move";
    }
};

class Dog: public Animal {
private:
    string poroda; 
    
public:
    string name;
    int weight;
    
    Dog(string names, int weights, string porodas){
        name = names;
        weight = weights;
        poroda = porodas;

    }
    
  //  Dog(string names, int weights, string porodas)
  //  : name(names), weight(weights), poroda(porodas), animal() {}
    
    string getPoroda(){
        return poroda;
    }
    
    
};

int main(){
   
    Dog dog1("Baron", 34, "Lis");
    Dog dog2("Raf", 37, "Avcharka");
   // cout<< dog2.name<< dog2.weight<< dog2.getPoroda();
    cout<< dog2.move();
    vector<Dog> dogsVector = vector<Dog> {dog1, dog2};
    
    for(int i = 0; dogsVector.size() > i; i++){
        cout<<  dogsVector[i].name;
    }
    
    return 0;
}
