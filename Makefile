CC := gcc
TARGET := dp

UNAME := $(shell uname)
ifeq ($(UNAME),Darwin)
    FRAMEWORKS := -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo -framework CoreFoundation -framework AudioToolbox -framework CoreAudio
else
    FRAMEWORKS :=
endif

all:
	$(CC) -Iinclude -o $(TARGET) dp.c lib/libraylib.a -lm $(FRAMEWORKS)

check:
	@echo "Running tests... (none defined)"

distcheck:
	@echo "Running distribution checks... (none defined)"

clean:
	rm -f $(TARGET)