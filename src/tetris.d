module tetris;

import std.stdio;

import window;

void main(string[] args) {
    writeln(args);

    auto win = new Window(args[0]);
    while (win.loop()) {
    }

}
