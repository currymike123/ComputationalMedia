int count, loop;

void setup(){
    count = 0;
    loop = 0;
}

void draw(){
    printName(20);
    if(loop < count){
        print("Mike");
        loop++;
    }
}

void printName(int _count){
    count = _count * 10;
}

int printName1(int count){
    return count * 10;
}
