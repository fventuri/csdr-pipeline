CXX=g++
CXXFLAGS=-O -Wall
LDLIBS=-lcsdr++


all: fm_receiver dstar_receiver

fm_receiver: fm_receiver.cpp pipeline.cpp

dstar_receiver: dstar_receiver.cpp pipeline.cpp
	$(CXX) $(CXXFLAGS) $^ $(LDLIBS) -ldigiham -o $@

clean:
	rm -f fm_receiver dstar_receiver
