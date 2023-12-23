import std.stdio;
import std.string;

import sdl;

// class Window {
//     SDL_Window* win = null;
//     SDL_Renderer* render = null;

//     this(string title) {
//         win = SDL_CreateWindow(title.toStringz, SDL_WINDOWPOS_UNDEFINED,
//                 SDL_WINDOWPOS_UNDEFINED, 320, 240, SDL_WINDOW_SHOWN);
//         assert(win !is null);
//         render = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED);
//         assert(render !is null);
//     }

// }

void main(string[] args) {
    writeln(args);
    assert(SDL_Init(SDL_INIT_AUDIO | SDL_INIT_VIDEO) == 0);
}
