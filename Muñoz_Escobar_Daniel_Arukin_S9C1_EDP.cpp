#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include<time.h>
#include<cmath>
#include <fstream>

using namespace std;
//En este caso voy a manejar lasa medidas en terminos de cm.

float difusion_2D(int L, float dx, float dy, float dt, float t_final, float v);

int main(){
	float d_3D=difusion_2D(100, 1.0, 1.0, 0.25, 2500, 1.0);
}

float L=100;
float v=pow(10,-4)*pow(10,4);
float dx=1;
float dy=1;
float dt=0.5*(pow(dx,2)/v);

float difusion_2D(int L, float dx, float dy, float dt, float t_final, float v){
	ofstream outfile;
	float T_Presente[L][L];
	float T_Futuro[L][L];
	float x[L];
	float y[L];
	
	for(int i=0;i<L;i++){
		for(int j=0;j<L;j++){
			if(i>=40 and i<=60 and j>=20 and j<=40){
				T_Presente[i][j]=100;
			}
			else{
				T_Presente[i][j]=50;
			}
		}
		x[i]=i;
		y[i]=i;
	}
	
	float r_x=(v*dt)/pow(dx,2);
	float r_y=(v*dt)/pow(dy,2);
	
	
	for(int t=0;t<=t_final;t++){
		for(int i=1;i<L-1;i++){
			for(int j=1;j<L-1;j++){
				T_Futuro[i][j]=T_Presente[i][j]+r_x*(T_Presente[i+1][j]-2*T_Presente[i][j]+T_Presente[i-1][j])+r_y*(T_Presente[i][j+1]-2*T_Presente[i][j]+T_Presente[i][j-1]);
				
			}
		}
		
		if(t==0){
			outfile.open("Placa de calor, t=0");
			for(int i=0;i<L;i++){
				for(int j=0;j<L;j++){
					outfile<<T_Presente[i][j]<<",";
				}
				outfile<<endl;
			}
			outfile.close();
		}
		
		if(t==100){
			outfile.open("Placa de calor, t=100");
			for(int i=0;i<L;i++){
				for(int j=0;j<L;j++){
					outfile<<T_Presente[i][j]<<",";
				}
				outfile<<endl;
			}
			outfile.close();
		}
		
		if(t==1000){
			outfile.open("Placa de calor, t=1000");
			for(int i=0;i<L;i++){
				for(int j=0;j<L;j++){
					outfile<<T_Presente[i][j]<<",";
				}
				outfile<<endl;
			}
			outfile.close();
		}
		
		if(t==2500){
			outfile.open("Placa de calor, t=2500");
			for(int i=0;i<L;i++){
				for(int j=0;j<L;j++){
					outfile<<T_Presente[i][j]<<",";
				}
				outfile<<endl;
			}
			outfile.close();
		}
		
		for(int i=1;i<L-1;i++){
			for(int j=1;j<L-1;j++){
				T_Presente[i][j]=T_Futuro[i][j];
			}
		}
	}
	
	
}
