
CXX = g++
CXX_FLAGS = --std=c++17 `wx-config --cxxflags` $F
LD_FLAGS = `wx-config --libs` $F

all: doodle

doodle: Doodle.o DoodleFrame.o DoodlePanel.o
	$(CXX) $(LD_FLAGS) Doodle.o DoodleFrame.o DoodlePanel.o -o doodle

Doodle.o: Doodle.cpp precompile.h.gch
	$(CXX) $(CXX_FLAGS) -c Doodle.cpp -o Doodle.o

DoodleFrame.o: DoodleFrame.cpp precompile.h.gch
	$(CXX) $(CXX_FLAGS) -c DoodleFrame.cpp -o DoodleFrame.o

DoodlePanel.o: DoodlePanel.cpp precompile.h.gch
	$(CXX) $(CXX_FLAGS) -c DoodlePanel.cpp -o DoodlePanel.o

precompile.h.gch: precompile.h Doodle.h DoodleFrame.h DoodlePanel.h
	$(CXX) $(CXX_FLAGS) -c precompile.h -o precompile.h.gch

clean:
	rm -f *.o *.h.gch doodle
