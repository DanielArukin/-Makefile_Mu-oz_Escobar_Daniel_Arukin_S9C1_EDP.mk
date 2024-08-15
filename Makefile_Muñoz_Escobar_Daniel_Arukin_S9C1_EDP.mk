PLOTS_Muñoz_Escobar_Daniel_Arukin_S9C1_EDP.pdf:	plots_muñoz_escobar_daniel_arukin_s9c1_edp.py Placa_de_calor,_t=0.dat Placa_de_calor,_t=100.dat Placa_de_calor,_t=1000.dat Placa_de_calor,_t=2500.data
	python3 plots_muñoz_escobar_daniel_arukin_s9c1_edp.py

Placa_de_calor,_t=0.dat:	Muñoz_Escobar_Daniel_Arukin_S9C1_EDP.cpp
	g++ Muñoz_Escobar_Daniel_Arukin_S9C1_EDP
	./a.out>>Placa_de_calor,_t=0.dat

Placa_de_calor,_t=100.dat:	Muñoz_Escobar_Daniel_Arukin_S9C1_EDP.cpp
	g++ Muñoz_Escobar_Daniel_Arukin_S9C1_EDP
	./a.out>>Placa_de_calor,_t=100.dat

Placa_de_calor,_t=1000.dat:	Muñoz_Escobar_Daniel_Arukin_S9C1_EDP.cpp
	g++ Muñoz_Escobar_Daniel_Arukin_S9C1_EDP
	./a.out>>Placa_de_calor,_t=1000.dat

Placa_de_calor,_t=2500.dat:	Muñoz_Escobar_Daniel_Arukin_S9C1_EDP.cpp
	g++ Muñoz_Escobar_Daniel_Arukin_S9C1_EDP
	./a.out>>Placa_de_calor,_t=2500.dat
