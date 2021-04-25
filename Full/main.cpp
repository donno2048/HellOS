extern "C" void kmain() {
    const char* hello = "Hello!\0";
    short* vga = (short*) 0xb8000;
    for (int i = 0; i < 16; ++i) vga[i] = 0xf00 | hello[i];
}