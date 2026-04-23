#include <stdio.h>
#include "raylib.h"
#include <math.h>

#define WIDTH 900
#define HEIGHT 600

void draw_pendulum(float l, float phi, Vector2 start)
{
    Vector2 end = (Vector2){start.x + l * sinf(phi), start.y + l * cosf(phi)};

    DrawLineV(start, end, WHITE);


}


int main(void)
{
    InitWindow(WIDTH, HEIGHT, "Double Pendulum Simulation");
    
    SetTargetFPS(60);

    Vector2 start_pos = (Vector2){WIDTH / 2, 0};
    while (!WindowShouldClose())
    {
        BeginDrawing();

        draw_pendulum(150, 0, start_pos);
        EndDrawing();
    }
    
    CloseWindow();

    return 0;

}