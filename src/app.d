import std.stdio;
import std.string;

import bindbc.sdl;

class Window {

    enum W = 480; //240;
    enum H = 640; //320;

    SDL_Window* win = null;
    SDL_Renderer* render = null;

    this(string title) {
        if (win is null)
            assert(SDL_Init(
                    SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_JOYSTICK) == 0);
        win = SDL_CreateWindow(title.toStringz, SDL_WINDOWPOS_UNDEFINED,
                SDL_WINDOWPOS_UNDEFINED, W, H, SDL_WINDOW_SHOWN);
        assert(win !is null);
        render = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED);
        assert(render !is null);
    }

    ~this() {
        SDL_DestroyRenderer(render);
        SDL_DestroyWindow(win);
        SDL_Quit();
    }

    void clear() {
        SDL_SetRenderDrawColor(render, 0x22, 0x22, 0x22, 0);
        SDL_RenderClear(render);
    }

    void blit() {
        clear;
        // SDL_RenderCopy(render, yuv, null, &fs);
        SDL_RenderPresent(render);
    }

    bool loop() {
        blit;
        SDL_Delay(222);
        SDL_Event event;
        SDL_PumpEvents;
        while (SDL_PollEvent(&event)) {
            switch (event.type) {
            case SDL_QUIT:
            case SDL_KEYDOWN:
            case SDL_MOUSEBUTTONDOWN:
                return false;
            default:
            }
        }
        return true;
    }
}

void main(string[] args) {
    writeln(args);

    auto win = new Window(args[0]);
    while (win.loop()) {
    }

}
