CXX=g++
CXXFLAGS=-O -Wall
LDLIBS=-lcsdr++

fm_receiver: fm_receiver.cpp pipeline.cpp
