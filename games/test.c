#include "games.h"
#include "test.h"

#define KEY_UP    3
#define KEY_DOWN  6
#define KEY_LEFT   7
#define KEY_RIGHT  8
#define KEY_A  0xa
#define KEY_B  0
#define KEY_C  0xc
#define KEY_D  0xd

const uint8_t test_kmap[8]={KEY_A,KEY_B,KEY_C,KEY_D,KEY_RIGHT,KEY_DOWN,KEY_LEFT,KEY_UP};

const uint8_t test[TEST_SIZE] _GAME={
	0xa0,0x08,0x60,0x00,0x61,0x06,0x90,0x12,0x60,0x0a,0xe0,0x9e,0x10,0x05,0x00,0xfd,
	0x68,0x65,0x6c,0x6c,0x6f,0x20,0x77,0x6f,0x72,0x6c,0x64,0x0a,0x00,0x00,
};
