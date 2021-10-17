CXX=g++
CXXFLAGS=-O -Wall
LDLIBS=-lcsdr++


all: fm_receiver dstar_receiver dmr_receiver ysf_receiver

fm_receiver: fm_receiver.cpp pipeline.cpp

dstar_receiver: dstar_receiver.cpp pipeline.cpp
	$(CXX) $(CXXFLAGS) $^ $(LDLIBS) -ldigiham -o $@

dmr_receiver: dmr_receiver.cpp pipeline.cpp
	$(CXX) $(CXXFLAGS) $^ $(LDLIBS) -ldigiham -o $@

ysf_receiver: ysf_receiver.cpp pipeline.cpp
	$(CXX) $(CXXFLAGS) $^ $(LDLIBS) -ldigiham -o $@

clean:
	rm -f fm_receiver dstar_receiver dmr_receiver ysf_receiver
