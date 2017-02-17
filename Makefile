
CXX = g++
CXX_FLAGS = --std=c++17 `wx-config --cxxflags` $F
LD_FLAGS = `wx-config --libs` $F

all: doodle

doodle: Doodle.o DoodleFrame.o DoodlePanel.o
	$(CXX) $(LD_FLAGS) Doodle.o DoodleFrame.o DoodlePanel.o -o doodle

Doodle.o: Doodle.cpp prec.h.gch
	$(CXX) $(CXX_FLAGS) -c Doodle.cpp -o Doodle.o

DoodleFrame.o: DoodleFrame.cpp prec.h.gch
	$(CXX) $(CXX_FLAGS) -c DoodleFrame.cpp -o DoodleFrame.o

DoodlePanel.o: DoodlePanel.cpp prec.h.gch
	$(CXX) $(CXX_FLAGS) -c DoodlePanel.cpp -o DoodlePanel.o

prec.h.gch: prec.h Doodle.h DoodleFrame.h DoodlePanel.h
	$(CXX) $(CXX_FLAGS) -c prec.h -o prec.h.gch

clean:
	rm -f *.o *.h.gch doodle
