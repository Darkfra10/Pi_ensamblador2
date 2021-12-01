//Gabriel Bermejo C01103//
#ifndef UNIT_TEST

#include <iostream>
#include <cstdio>

using namespace std;
extern "C" unsigned char NegativeCalc(unsigned char data);
extern "C" unsigned char BlurCalc(unsigned char data[], int width, int byte, int height);



int main() {
    
    //FILE* f = fopen("10x10definitive.bmp", "rb");
    FILE* f = fopen("ef_ed_erbmoh.bmp", "rb");
    FILE* f2 = fopen("Negative_17.bmp", "wb");
    FILE* f3 = fopen("Albarn.bmp", "wb");
    unsigned char info[54];
    fread(info, sizeof(unsigned char), 54, f); 
    

    
    // extract image height and width from header
    int width = *(int*)&info[18];
    int height = *(int*)&info[22];
    
    int size = 3 * width * height;

    //unsigned char* byte = new unsigned char[3];
    unsigned char* byte = new unsigned char[1];
    unsigned char image[size];
    for (int i = 0; i < size; i++)
    {
        image[i]=0;
    }
    
    for (int i = 0; i < size; i++)
    {
        
        //fread(byte, sizeof(unsigned char), size, f); 

        byte[0]=(unsigned char) fgetc(f);

        if (i>54)
        {
            image[i]=NegativeCalc(byte[0]);
            //cout<<(int)image[i];
        }
        else{
            image[i]=info[i];
            
        }

    }

    fwrite(image, sizeof(int), sizeof(image), f2);
    
/*
    for (int k = 54; k < size; k++)
    {
        
        image[k]=BlurCalc(image, width, k, height );
        
    
    }
    fwrite(image, sizeof(int), sizeof(image), f3);
*/
    
    fclose(f);   
    fclose(f2); 
    return 0;
}

#endif
