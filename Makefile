# This Makefile is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

CXX=g++ -std=c++11
# Includes, cflags
INCLUDES=-I/opt/ros/hydro/include -L/opt/ros/indigo/lib -Wl,-rpath,/opt/ros/indigo/lib
CXXOPTS=-Wall -g -O2
CXXFLAGS=$(CXXOPTS) $(INCLUDES)
# Libs flags
LDLIBS=-lroscpp -lrosconsole -lrostime
# Binaries
HELLOWORLD=test/helloWorldNode

# Object
OBJS_HELLOWORLD=src/helloWorldNode.o

all: $(HELLOWORLD)

$(HELLOWORLD): $(OBJS_HELLOWORLD)
	$(CXX) $(INCLUDES) $^ -o $@ $(LDLIBS)

bin/%.o: %.cc
	$(CXX) -c $(CXXFLAGS) $< -o $@ $(LDLIBS)

clean:
	rm -f $(HELLOWORLD) $(OBJS_HELLOWORLD)