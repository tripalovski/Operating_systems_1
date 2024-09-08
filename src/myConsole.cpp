#include "../h/myConsole.hpp"

ConsoleBuffer* myConsole::buffIn = nullptr;
ConsoleBuffer* myConsole:: buffOut = nullptr;

void myConsole::init() {
    buffIn = new ConsoleBuffer(200);
    buffOut = new ConsoleBuffer(200);
}

char myConsole::getc() {
    return buffIn->get();
}

void myConsole::recieveFromKeyboard(char c) {
    buffIn->put(c);
}

char myConsole::sendToMonitor() {
    return buffOut->get();
}
void myConsole::putc(char c) {
    buffOut->put(c);
}

void myConsole::monitorOutput(){
    while (true){
        char status = *(char*)CONSOLE_STATUS;
        while(status &  CONSOLE_TX_STATUS_BIT) {
            *(char *) CONSOLE_TX_DATA = myConsole::sendToMonitor();
            status = *(char *) CONSOLE_STATUS;
        }

    }
};