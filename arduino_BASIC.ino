#include <PS2Keyboard.h>
#include <EEPROM.h>

#include "basic.h"
#include "host.h"

// Define in host.h if using an external EEPROM e.g. 24LC256
// Should be connected to the I2C pins
// SDA -> Analog Pin 4, SCL -> Analog Pin 5
// See e.g. http://www.hobbytronics.co.uk/arduino-external-eeprom

// If using an external EEPROM, you'll also have to initialise it by
// running once with the appropriate lines enabled in setup() - see below

#if EXTERNAL_EEPROM
#include <I2cMaster.h>
// Instance of class for hardware master with pullups enabled
TwiMaster rtc(true);
#endif

// Keyboard
const int DataPin = 4;
const int IRQpin = 2;
PS2Keyboard keyboard;

// buzzer pin, 0 = disabled/not present
#define BUZZER_PIN    0

// BASIC
unsigned char mem[MEMORY_SIZE];
#define TOKEN_BUF_SIZE    79
unsigned char tokenBuf[TOKEN_BUF_SIZE];

const char welcomeStr[] PROGMEM = "Arduino BASIC";
char autorun = 0;

void setup() {
#if USE_SERIAL
    Serial.begin(4800);
#endif

    DDRA  |=  B11110000; // OUTPUT
    PORTA &= ~B11110000; // LOW

    keyboard.begin(DataPin, IRQpin);
    /* NOTE: in order to use the Arduino UNO*Pro with the PS2Keyboard library, I had
       to add the lines below into the file /libraries/PS2Keyboard/utility/int_pins.h

       // Arduino UNO*Pro
       #elif defined(__AVR_ATmega1284P__)
         #define CORE_INT0_PIN  6
         #define CORE_INT1_PIN  7
         #define CORE_INT2_PIN  2
    */

    reset();
    host_init(BUZZER_PIN);
    host_cls();
    host_outputProgMemString(welcomeStr);
    // show memory size
    host_outputFreeMem(sysVARSTART - sysPROGEND);
    host_showBuffer();

    // IF USING EXTERNAL EEPROM
    // The following line 'wipes' the external EEPROM and prepares
    // it for use. Uncomment it, upload the sketch, then comment it back
    // in again and upload again, if you use a new EEPROM.
    // writeExtEEPROM(0,0); writeExtEEPROM(1,0);

    if (EEPROM.read(0) == MAGIC_AUTORUN_NUMBER)
        autorun = 1;
    else
        host_startupTone();
}

void loop() {
    int ret = ERROR_NONE;

    if (!autorun) {
        // get a line from the user
        char *input = host_readLine();
        // special editor commands
        if (input[0] == '?' && input[1] == 0) {
            host_outputFreeMem(sysVARSTART - sysPROGEND);
            host_showBuffer();
            return;
        }
        // otherwise tokenize
        ret = tokenize((unsigned char*)input, tokenBuf, TOKEN_BUF_SIZE);
    }
    else {
        host_loadProgram();
        tokenBuf[0] = TOKEN_RUN;
        tokenBuf[1] = 0;
        autorun = 0;
    }
    // execute the token buffer
    if (ret == ERROR_NONE) {
        host_newLine();
        ret = processInput(tokenBuf);
    }
    if (ret != ERROR_NONE) {
        host_newLine();
        if (lineNumber !=0) {
            host_outputInt(lineNumber);
            host_outputChar('-');
        }
        host_outputProgMemString((char *)pgm_read_word(&(errorTable[ret])));
    }
}

