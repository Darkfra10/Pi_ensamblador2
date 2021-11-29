//Gabriel Bermejo C01103//
#ifndef UNIT_TEST

#include <iostream>

using namespace std;
extern "C" int NegativeCalc(int data);
extern "C" int WidthCalc(int data);
extern "C" int HeightCalc(int data);
extern "C" int BlurCalc(int data[], int width, int byte, int height);



int main() {
    int data[27];
    data[0]=20;
    data[1]=255;
    data[2]=75;
    data[3]=13;
    data[4]=84;
    data[5]=174;
    data[6]=156;
    data[7]=52;
    data[8]=111;

    data[9]=20;
    data[10]=255;
    data[11]=75;
    data[12]=13;
    data[13]=84;
    data[14]=174;
    data[15]=156;
    data[16]=52;
    data[17]=111;

    data[18]=20;
    data[19]=255;
    data[20]=75;
    data[21]=13;
    data[22]=84;
    data[23]=174;
    data[24]=156;
    data[25]=52;
    data[26]=111;
    /*for (int k = 0; k < 27; k++)
    {
        data[k]=NegativeCalc(data[k]);
        cout<<k<<": "<<data[k]<<" ";
    }*/
    cout<<endl;
    /*for (int k = 0; k < 9; k++)
    {
        data[k]=BlurCalc(data[k], 3, k, 3 );
        cout<<k<<": "<<data[k]<<" ";
    }*/
    int k=52;
    data[k]=BlurCalc(data, 3, k, 3 );
        cout<<k<<": "<<data[k]<<" ";
    cout<<endl;


    return 0;
}

#endif
