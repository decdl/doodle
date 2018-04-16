CXXFLAGS += --std=c++17 `wx-config --cxxflags`
LDFLAGS += `wx-config --libs`

all: doodle

doodle: Doodle.o DoodleFrame.o DoodlePanel.o
	$(CXX) $(LDFLAGS) Doodle.o DoodleFrame.o DoodlePanel.o -o doodle

Doodle.o: Doodle.cpp prec.h.gch
	$(CXX) $(CXXFLAGS) -c Doodle.cpp -o Doodle.o

DoodleFrame.o: DoodleFrame.cpp prec.h.gch
	$(CXX) $(CXXFLAGS) -c DoodleFrame.cpp -o DoodleFrame.o

DoodlePanel.o: DoodlePanel.cpp prec.h.gch
	$(CXX) $(CXXFLAGS) -c DoodlePanel.cpp -o DoodlePanel.o

prec.h.gch: prec.h Doodle.h DoodleFrame.h DoodlePanel.h
	$(CXX) $(CXXFLAGS) -c prec.h -o prec.h.gch

clean:
	rm -f *.o *.h.gch doodle
