/*
Girilen 4 ve 4 den az basamakli sayilari cözümleyen program...

12253067-Muhammed Ali Yaman-Algoritma ödev-2
*/



#include <stdio.h>
#include <conio.h>

void main(){

	int sayi,binlik=0,yuzluk=0,onluk=0,birlik=0,basamak=0;   //basamak sayilarini tanımlıyoruz.
	int sayi1=0,sayi2=0,sayi3=0;                         //her basamaktan sonraki isleme aktarilan sayiyi atamak icin degiskenler tanimlıyoruz.
	printf("Cozumleme programina hosgeldiniz...\n");
	printf("Cozumlenecek sayiyi giriniz :");
	scanf_s("%d",&sayi,1);       //sayimizi aliyoruz :)

	if(sayi>=1000){                   //sayi 4 basamaklımı denetliyoruz 
		binlik=sayi/1000;             //kaç binlik oldugunu bulmak icin 1000 e bölüyoruz.
		sayi1=sayi%1000;             //yüzlükleri bulmak için sayimizin 1000 den kalanini alıyorum sonraki işlemde kullanmak icin
		basamak++;                      //kullanicinin kac basamaklı sayi girdigini denetlemek icin basamak degiskenini kullaniyorum.
		printf("Binlik :%d",binlik);
	}
	
		
	if(sayi>=100){
		if(basamak==1){
		yuzluk=sayi1/100;                    //basamak degiskenini kullanma sebebim yukardaki % dan cıkan sayiyimi kullacam yoksa
		sayi2=sayi%100;                       //kullanicidan aldigimimi yani dolaylı yoldan girdigi basamak sayisina göre degisken 
		basamak++;                           //degistiriyorum :) Biraz kafa karıstırsada bir çok bugdan programı kurtarir.
		printf("\nYuzluk :%d",yuzluk);
		}else{
			yuzluk=sayi/100;
		sayi2=sayi%100;
		basamak++;
		printf("\nYuzluk :%d",yuzluk);
		}
	}
	if(sayi>=10){
		if(basamak==2){
		onluk=sayi2/10;
		sayi3=sayi%10;
		basamak++;
		printf("\nOnluk :%d",onluk);
		}else if(basamak==1){
			onluk=sayi2/10;
		sayi3=sayi%10;
		basamak++;
		printf("\nOnluk :%d",onluk);
		}else if(basamak==0){
			onluk=sayi/10;
		sayi3=sayi%10;                                   //burdaki kodların hepsinde yukarda açıkladıgım şeyler denenip ona göre 
		basamak++;                                      //girilen basamak sayisina göre bölme ve mod alma islemleri yapılarak
		printf("\nOnluk :%d",onluk);                     //cozumleme islemi gerceklesmektedir.
		 
		}
	}if(sayi>=1){
		if(basamak==3){
		birlik=sayi3/1;
		basamak++;
		printf("\nBirlik :%d",birlik);
		}else if(basamak==2){
			birlik=sayi3/1;
		basamak++;
		printf("\nBirlik :%d",birlik);
		}else if(basamak==1){
			birlik=sayi3/1;
		basamak++;
		printf("\nBirlik :%d",birlik);
		}else if(basamak==0){
			birlik=sayi/1;
		basamak++;
		printf("\nBirlik :%d",birlik);
		}
	

	
	
	printf("\n\tSayiniz %d basamakli ",basamak);
	                                                   //sayi nin kac basamakli oldugunu gösterir.
	if(sayi<=0){
		printf("Sayi 0 dan buyuk olmalidir !!!");       //0 dan buyuk tüm sayilari cozumleye bilir ... :)

	}

	_getche();

}
}
