AS=yasm
ASFLAGS=--oformat=elf64 --dformat=dwarf2 --machine=AMD64

LD=ld
LDFLAGS=-m elf_x86_64

SOURCES=$(wildcard *.asm)
OBJECTS=$(SOURCES:.asm=.o)

EXECUTABLE=whizzForth

# ---

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(LD) $(LDFLAGS) $(OBJECTS) --output=$@

$(OBJECTS): $(SOURCES)
	$(AS) $(ASFLAGS) $(SOURCES) --list=$*.lst

clean:
	rm -fr *.o $(EXECUTABLE)
