#ifndef MYCONSOLE
#define MYCONSOLE
#include "consoleBuffer.hpp"


class myConsole {
public:

    static void init();

    static char getc();
    static void recieveFromKeyboard(char);

    static char sendToMonitor();
    static void putc(char);

    static void monitorOutput();

    static bool isBuffInFull() {return buffIn->isFull();}

private:
    static ConsoleBuffer* buffIn;
    static ConsoleBuffer* buffOut;
    myConsole() {};

};


#endif //MYCONSOLE