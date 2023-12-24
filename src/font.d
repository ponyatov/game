module font;

class Font {
    static immutable ubyte[] ttfDroidFallback = cast(immutable(ubyte)[]) import(
            "droid/DroidSansFallbackFull.ttf");
}
