#include "fips202.h"
#include <stdint.h>

void shake256_hw(uint8_t *out, int outlen, const uint8_t *in, int inlen) {
#pragma HLS INTERFACE m_axi port=in offset=slave bundle=gmem depth=64
#pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem depth=32
#pragma HLS INTERFACE s_axilite port=inlen bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    shake256((uint8_t*)out, outlen,(const uint8_t*)in, inlen);

}
