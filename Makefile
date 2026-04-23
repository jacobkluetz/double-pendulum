CC := gcc
TARGET := dp

all:
	$(CC) -Iinclude -Llib -o $(TARGET) dp.c -lraylib -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo -framework CoreFoundation -framework AudioToolbox -framework CoreAudio

clean:
	rm -f $(TARGET)