C = g++
C = g++
CFLAGS = -O3
STD ?= c++23
DEFAULT_WARNINGS = -Wextra -Wall

all: part1 part2

part1: part1.cpp
	$(C) $(CFLAGS) $(WARNINGS) -std=$(STD) -o part1 part1.cpp

part2: part2.cpp
	$(C) $(CFLAGS) $(WARNINGS) -std=$(STD) -o part2 part2.cpp


clean:
	rm -f part1 part2

ifndef WARNINGS
	WARNINGS = $(DEFAULT_WARNINGS)
endif
