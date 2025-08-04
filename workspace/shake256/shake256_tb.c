#include <stdio.h>
#include <string.h>
#include "fips202.h"

void shake256_hw(uint8_t *out,size_t outlen, const uint8_t *in, size_t inlen);  // synthesized version

int main() {
    uint8_t in[4] = {0x39, 0x30, 0x00, 0x00}; // int 12345 (little endian)
    size_t len = 4;

    uint8_t sw_out[32];
    uint8_t hw_out[32];
	size_t outlen = 32;

    // SW
    shake256(sw_out, outlen, in, len);

    // HW (C Simulation or Co-Sim)
    shake256_hw(hw_out, outlen, in, len);

    // comparsion
    int error = memcmp(sw_out, hw_out, 32);
    if (error == 0)
        printf("Test Passed: HW == SW\n");
    else {
        printf("Test Failed: HW != SW\n");
        for (int i = 0; i < 32; i++) {
            printf("%02x (SW) vs %02x (HW)\n", sw_out[i], hw_out[i]);
        }
    }

    return error;
}
