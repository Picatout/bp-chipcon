#ifndef FONT6X8_H_
#define FONT6X8_H_

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdint.h>

#define FONT_SIZE   (101)
#define CHAR_HEIGHT (8)
#define CHAR_WIDTH  (6)

extern const uint8_t font_6x8[FONT_SIZE*CHAR_HEIGHT];

#ifdef	__cplusplus
}
#endif

#endif //FONT6X8_H_
