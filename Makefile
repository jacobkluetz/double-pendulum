CC := gcc
TARGET := dp

all:
    $(CC) -Iinclude -Llib -o $(TARGET) dp.c -lraylib

clean:
    rm -f $(TARGET)