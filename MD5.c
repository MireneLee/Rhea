#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
typedef union uwb {
    unsigned w;
    unsigned char b[4];
} MD5union;
typedef unsigned DigestArray[4];
unsigned func0(unsigned abcd[])
{
    return (abcd[1] & abcd[2]) | (~abcd[1] & abcd[3]);
}
unsigned func1(unsigned abcd[])
{
    return (abcd[3] & abcd[1]) | (~abcd[3] & abcd[2]);
}
unsigned func2(unsigned abcd[])
{
    return abcd[1] ^ abcd[2] ^ abcd[3];
}
unsigned func3(unsigned abcd[])
{
    return abcd[2] ^ (abcd[1] | ~abcd[3]);
}
typedef unsigned (*DgstFctn)(unsigned a[]);
unsigned *calctable(unsigned *k)
{
    double s, pwr;
    int i;
    //Chú ý: Tat ca các bien deu là bien không dau 32 bit và bao phu mô dun 2^32 khi tính toán
    pwr = pow(2, 32); //const
    for (i = 0; i < 64; i++)
    {
        //Su dung phan nguyên nhi phân cua sin caa so nguyên làm hang so:
        s = fabs(sin(1 + i));
        k[i] = (unsigned)(s * pwr); // => k là 1 mang chua các hang so
    }
    return k;
}
unsigned rol(unsigned r, short N)
{
    unsigned mask1 = (1 << N) - 1;
    return ((r >> (32 - N)) & mask1) | ((r << N) & ~mask1);
}
unsigned *md5(const char *msg, int mlen)
{
    //Khoi tao bien:
    static DigestArray h0 = {0x67452301, 0xEFCDAB89, 0x98BADCFE, 0x10325476};//(giá tri khoi tao)
    //Luu dia chi hàm cua 4 function vào mang ff[]
    static DgstFctn ff[] = {&func0, &func1, &func2, &func3};
    static short M[] = {1, 5, 3, 7};
    static short O[] = {0, 1, 5, 0};
    // rot : Xác dinh so lan dich chuyen moi vòng
    static short rot0[] = {7, 12, 17, 22};
    static short rot1[] = {5, 9, 14, 20};
    static short rot2[] = {4, 11, 16, 23};
    static short rot3[] = {6, 10, 15, 21};
    static short *rots[] = {rot0, rot1, rot2, rot3};
    static unsigned kspace[64];
    static unsigned *k;
    static DigestArray h;
    DigestArray abcd;
    DgstFctn fctn;
    short m, o, g;
    unsigned f;
    short *rotn;
    union {
        unsigned w[16];
        char b[64];
    } mm;
    int os = 0;
    int grp, grps, q, p;
    unsigned char *msg2;
    if (k == NULL)
        k = calctable(kspace); // tính mang hang so k
    for (q = 0; q < 4; q++)
        h[q] = h0[q]; //copy mang hang so h0[] qua h[]
    {
        grps = 1 + (mlen + 8) / 64;//***(?)***
        msg2 = malloc(64 * grps);
        memcpy(msg2, msg, mlen);
        msg2[mlen] = (unsigned char)0x80; // dau tiên mot bit don, 1, duoc gan vào cuoi mau tin. ***(?)*** 
		//Tai sao ko add bit 1 mà add 0x80
        q = mlen + 1;
        while (q < 64 * grps)
        {
            msg2[q] = 0; // => add bit 0 vào toi khi chieu dài cua msg chia chan cho 512
            q++;
        }
        {
            MD5union u;
            u.w = 8 * mlen; // tính so bits cua msg
            q -= 8;
            memcpy(msg2 + q, &u.w, 4);
        }
    }
    for (grp = 0; grp < grps; grp++)
    {
        memcpy(mm.b, msg2 + os, 64);// lan luot copy block, 1 block gom 64 bit tu msg2 vào mm
        for (q = 0; q < 4; q++)
            abcd[q] = h[q];
        for (p = 0; p < 4; p++)//Quá trình xu lý khoi tin bao gom bon giai doan giong nhau, goi là vòng;
        {
            fctn = ff[p];
            rotn = rots[p];
            m = M[p];
            o = O[p];
            for (q = 0; q < 16; q++)// moi vòng gom có 16 tác vu giong nhau dua trên hàm phi tuyen F, cong mô dun, và dich trái.
            {
                g = (m * q + o) % 16;
                f = abcd[1] + rol(abcd[0] + fctn(abcd) + k[q + 16 * p] + mm.w[g], rotn[q % 4]);// rol == rotate left
                 //Khoi tao giá tri bam cho doan này:
                abcd[0] = abcd[3];  //var int d:= h3
                abcd[3] = abcd[2];  //var int c:= h2
                abcd[2] = abcd[1];  //var int b:= h1
                abcd[1] = f;        //var int a:= h0
            }
        }
        for (p = 0; p < 4; p++)
            h[p] += abcd[p];// cong don giá tri h[q] = {0x67452301, 0xEFCDAB89, 0x98BADCFE, 0x10325476} theo 1 mot vòng tròn
        os += 64;// chuyen vi trí toi block tiep theo
    }
    return h;
}
int main(int argc, char *argv[])
{
    int j, k;
    const char *msg = "Hello .This is SK Telecom T1 Faker";
    printf("Input String to be Encrypted using MD5 : \n\t%s", msg);
    unsigned *d = md5(msg, strlen(msg));
    MD5union u;
    printf("\n\n\nThe MD5 code for input string is : \n");
    printf("\t= 0x");
    for (j = 0; j < 4; j++)
    {
        u.w = d[j];
        for (k = 0; k < 4; k++)
            printf("%02x", u.b[k]);
    }
    printf("\n");
    printf("\n\t MD5 Encyption Successfully Completed!!!\n\n");
    getch();
    system("pause");
    return 0;
}
