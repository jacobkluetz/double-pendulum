CC := gcc
TARGET := dp

UNAME := $(shell uname)
ifeq ($(UNAME),Darwin)
    FRAMEWORKS := -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo -framework CoreFoundation -framework AudioToolbox -framework CoreAudio
else
    FRAMEWORKS :=
endif

all:
	$(CC) -Iinclude -Llib -o $(TARGET) dp.c -lraylib $(FRAMEWORKS)

check:
	@echo "Running tests... (none defined)"

distcheck:
	@echo "Running distribution checks... (none defined)"

clean:
	rm -f $(TARGET)