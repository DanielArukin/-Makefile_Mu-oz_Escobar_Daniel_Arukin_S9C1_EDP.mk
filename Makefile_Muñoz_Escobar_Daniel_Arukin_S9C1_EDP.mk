PLOTS_Muñoz_Escobar_Daniel_Arukin_S9C1_EDP.pdf:	PLOTS_Muñoz_Escobar_Daniel_Arukin_S9C1_EDP.py Placa_de_calor,_t=0.dat Placa_de_calor,_t=100.dat Placa_de_calor,_t=1000.dat Placa_de_calor,_t=2500.data
	python3 PLOTS_Muñoz_Escobar_Daniel_Arukin_S9C1_EDP.py

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