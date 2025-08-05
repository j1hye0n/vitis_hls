#include <stddef.h>
#include <stdint.h>
#include "fips202.h"

// SHA3-256 specific constants
//#define SHA3_256_RATE 136  // (1600 - 2*256)/8 = 136 bytes
#define NROUNDS 24
#define ROL(a, offset) ((a << offset) ^ (a >> (64-offset)))

/*************************************************
* Name:        load64_hls
*
* Description: Load 8 bytes into uint64_t in little-endian order (HLS optimized)
*
* Arguments:   - const uint8_t *x: pointer to input byte array
*
* Returns the loaded 64-bit unsigned integer
**************************************************/
static uint64_t load64_hls(const uint8_t x[8]) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=x complete dim=1
    uint64_t r = 0;
    
    // Unroll for better throughput
    load_bytes: for(int i = 0; i < 8; i++) {
#pragma HLS UNROLL
        r |= (uint64_t)x[i] << (8*i);
    }
    return r;
}

/*************************************************
* Name:        store64_hls
*
* Description: Store a 64-bit integer to array of 8 bytes in little-endian order (HLS optimized)
*
* Arguments:   - uint8_t *x: pointer to the output byte array (allocated)
*              - uint64_t u: input 64-bit unsigned integer
**************************************************/
static void store64_hls(uint8_t x[8], uint64_t u) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=x complete dim=1
    
    // Unroll for better performance
    store_bytes: for(int i = 0; i < 8; i++) {
#pragma HLS UNROLL
        x[i] = u >> (8*i);
    }
}

/* Keccak round constants - optimized for ROM inference */
static const uint64_t KeccakF_RoundConstants[NROUNDS] = {
    0x0000000000000001ULL, 0x0000000000008082ULL, 0x800000000000808aULL,
    0x8000000080008000ULL, 0x000000000000808bULL, 0x0000000080000001ULL,
    0x8000000080008081ULL, 0x8000000000008009ULL, 0x000000000000008aULL,
    0x0000000000000088ULL, 0x0000000080008009ULL, 0x000000008000000aULL,
    0x000000008000808bULL, 0x800000000000008bULL, 0x8000000000008089ULL,
    0x8000000000008003ULL, 0x8000000000008002ULL, 0x8000000000000080ULL,
    0x000000000000800aULL, 0x800000008000000aULL, 0x8000000080008081ULL,
    0x8000000000008080ULL, 0x0000000080000001ULL, 0x8000000080008008ULL
};

/*************************************************
* Name:        KeccakF1600_StatePermute_HLS
*
* Description: The Keccak F1600 Permutation (HLS throughput optimized)
*
* Arguments:   - uint64_t *state: pointer to input/output Keccak state
**************************************************/
static void KeccakF1600_StatePermute_HLS(uint64_t state[25]) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=state cyclic factor=5 dim=1
#pragma HLS ARRAY_PARTITION variable=KeccakF_RoundConstants complete dim=1

    uint64_t Aba, Abe, Abi, Abo, Abu;
    uint64_t Aga, Age, Agi, Ago, Agu;
    uint64_t Aka, Ake, Aki, Ako, Aku;
    uint64_t Ama, Ame, Ami, Amo, Amu;
    uint64_t Asa, Ase, Asi, Aso, Asu;
    uint64_t BCa, BCe, BCi, BCo, BCu;
    uint64_t Da, De, Di, Do, Du;
    uint64_t Eba, Ebe, Ebi, Ebo, Ebu;
    uint64_t Ega, Ege, Egi, Ego, Egu;
    uint64_t Eka, Eke, Eki, Eko, Eku;
    uint64_t Ema, Eme, Emi, Emo, Emu;
    uint64_t Esa, Ese, Esi, Eso, Esu;

    // Copy from state - pipeline for better throughput
    copy_from_state: {
        Aba = state[ 0]; Abe = state[ 1]; Abi = state[ 2]; Abo = state[ 3]; Abu = state[ 4];
        Aga = state[ 5]; Age = state[ 6]; Agi = state[ 7]; Ago = state[ 8]; Agu = state[ 9];
        Aka = state[10]; Ake = state[11]; Aki = state[12]; Ako = state[13]; Aku = state[14];
        Ama = state[15]; Ame = state[16]; Ami = state[17]; Amo = state[18]; Amu = state[19];
        Asa = state[20]; Ase = state[21]; Asi = state[22]; Aso = state[23]; Asu = state[24];
    }
    
    // Main permutation loop - optimized for throughput
    state_permute: for(int round = 0; round < NROUNDS; round += 2) {
#pragma HLS PIPELINE II=2
#pragma HLS LOOP_TRIPCOUNT min=12 max=12
        
        // Round 1
        // Prepare Theta
        BCa = Aba^Aga^Aka^Ama^Asa;
        BCe = Abe^Age^Ake^Ame^Ase;
        BCi = Abi^Agi^Aki^Ami^Asi;
        BCo = Abo^Ago^Ako^Amo^Aso;
        BCu = Abu^Agu^Aku^Amu^Asu;

        // Theta Rho Pi Chi Iota
        Da = BCu^ROL(BCe, 1);
        De = BCa^ROL(BCi, 1);
        Di = BCe^ROL(BCo, 1);
        Do = BCi^ROL(BCu, 1);
        Du = BCo^ROL(BCa, 1);

        Aba ^= Da; BCa = Aba;
        Age ^= De; BCe = ROL(Age, 44);
        Aki ^= Di; BCi = ROL(Aki, 43);
        Amo ^= Do; BCo = ROL(Amo, 21);
        Asu ^= Du; BCu = ROL(Asu, 14);
        Eba = BCa ^((~BCe)& BCi); Eba ^= (uint64_t)KeccakF_RoundConstants[round];
        Ebe = BCe ^((~BCi)& BCo);
        Ebi = BCi ^((~BCo)& BCu);
        Ebo = BCo ^((~BCu)& BCa);
        Ebu = BCu ^((~BCa)& BCe);

        Abo ^= Do; BCa = ROL(Abo, 28);
        Agu ^= Du; BCe = ROL(Agu, 20);
        Aka ^= Da; BCi = ROL(Aka,  3);
        Ame ^= De; BCo = ROL(Ame, 45);
        Asi ^= Di; BCu = ROL(Asi, 61);
        Ega = BCa ^((~BCe)& BCi);
        Ege = BCe ^((~BCi)& BCo);
        Egi = BCi ^((~BCo)& BCu);
        Ego = BCo ^((~BCu)& BCa);
        Egu = BCu ^((~BCa)& BCe);

        Abe ^= De; BCa = ROL(Abe,  1);
        Agi ^= Di; BCe = ROL(Agi,  6);
        Ako ^= Do; BCi = ROL(Ako, 25);
        Amu ^= Du; BCo = ROL(Amu,  8);
        Asa ^= Da; BCu = ROL(Asa, 18);
        Eka = BCa ^((~BCe)& BCi);
        Eke = BCe ^((~BCi)& BCo);
        Eki = BCi ^((~BCo)& BCu);
        Eko = BCo ^((~BCu)& BCa);
        Eku = BCu ^((~BCa)& BCe);

        Abu ^= Du; BCa = ROL(Abu, 27);
        Aga ^= Da; BCe = ROL(Aga, 36);
        Ake ^= De; BCi = ROL(Ake, 10);
        Ami ^= Di; BCo = ROL(Ami, 15);
        Aso ^= Do; BCu = ROL(Aso, 56);
        Ema = BCa ^((~BCe)& BCi);
        Eme = BCe ^((~BCi)& BCo);
        Emi = BCi ^((~BCo)& BCu);
        Emo = BCo ^((~BCu)& BCa);
        Emu = BCu ^((~BCa)& BCe);

        Abi ^= Di; BCa = ROL(Abi, 62);
        Ago ^= Do; BCe = ROL(Ago, 55);
        Aku ^= Du; BCi = ROL(Aku, 39);
        Ama ^= Da; BCo = ROL(Ama, 41);
        Ase ^= De; BCu = ROL(Ase,  2);
        Esa = BCa ^((~BCe)& BCi);
        Ese = BCe ^((~BCi)& BCo);
        Esi = BCi ^((~BCo)& BCu);
        Eso = BCo ^((~BCu)& BCa);
        Esu = BCu ^((~BCa)& BCe);

        // Round 2
        // Prepare Theta
        BCa = Eba^Ega^Eka^Ema^Esa;
        BCe = Ebe^Ege^Eke^Eme^Ese;
        BCi = Ebi^Egi^Eki^Emi^Esi;
        BCo = Ebo^Ego^Eko^Emo^Eso;
        BCu = Ebu^Egu^Eku^Emu^Esu;

        // Theta Rho Pi Chi Iota
        Da = BCu^ROL(BCe, 1);
        De = BCa^ROL(BCi, 1);
        Di = BCe^ROL(BCo, 1);
        Do = BCi^ROL(BCu, 1);
        Du = BCo^ROL(BCa, 1);

        Eba ^= Da; BCa = Eba;
        Ege ^= De; BCe = ROL(Ege, 44);
        Eki ^= Di; BCi = ROL(Eki, 43);
        Emo ^= Do; BCo = ROL(Emo, 21);
        Esu ^= Du; BCu = ROL(Esu, 14);
        Aba = BCa ^((~BCe)& BCi); Aba ^= (uint64_t)KeccakF_RoundConstants[round+1];
        Abe = BCe ^((~BCi)& BCo);
        Abi = BCi ^((~BCo)& BCu);
        Abo = BCo ^((~BCu)& BCa);
        Abu = BCu ^((~BCa)& BCe);

        Ebo ^= Do; BCa = ROL(Ebo, 28);
        Egu ^= Du; BCe = ROL(Egu, 20);
        Eka ^= Da; BCi = ROL(Eka,  3);
        Eme ^= De; BCo = ROL(Eme, 45);
        Esi ^= Di; BCu = ROL(Esi, 61);
        Aga = BCa ^((~BCe)& BCi);
        Age = BCe ^((~BCi)& BCo);
        Agi = BCi ^((~BCo)& BCu);
        Ago = BCo ^((~BCu)& BCa);
        Agu = BCu ^((~BCa)& BCe);

        Ebe ^= De; BCa = ROL(Ebe,  1);
        Egi ^= Di; BCe = ROL(Egi,  6);
        Eko ^= Do; BCi = ROL(Eko, 25);
        Emu ^= Du; BCo = ROL(Emu,  8);
        Esa ^= Da; BCu = ROL(Esa, 18);
        Aka = BCa ^((~BCe)& BCi);
        Ake = BCe ^((~BCi)& BCo);
        Aki = BCi ^((~BCo)& BCu);
        Ako = BCo ^((~BCu)& BCa);
        Aku = BCu ^((~BCa)& BCe);

        Ebu ^= Du; BCa = ROL(Ebu, 27);
        Ega ^= Da; BCe = ROL(Ega, 36);
        Eke ^= De; BCi = ROL(Eke, 10);
        Emi ^= Di; BCo = ROL(Emi, 15);
        Eso ^= Do; BCu = ROL(Eso, 56);
        Ama = BCa ^((~BCe)& BCi);
        Ame = BCe ^((~BCi)& BCo);
        Ami = BCi ^((~BCo)& BCu);
        Amo = BCo ^((~BCu)& BCa);
        Amu = BCu ^((~BCa)& BCe);

        Ebi ^= Di; BCa = ROL(Ebi, 62);
        Ego ^= Do; BCe = ROL(Ego, 55);
        Eku ^= Du; BCi = ROL(Eku, 39);
        Ema ^= Da; BCo = ROL(Ema, 41);
        Ese ^= De; BCu = ROL(Ese,  2);
        Asa = BCa ^((~BCe)& BCi);
        Ase = BCe ^((~BCi)& BCo);
        Asi = BCi ^((~BCo)& BCu);
        Aso = BCo ^((~BCu)& BCa);
        Asu = BCu ^((~BCa)& BCe);
    }

    // Copy to state - pipeline for better throughput  
    copy_to_state: {
        state[ 0] = Aba; state[ 1] = Abe; state[ 2] = Abi; state[ 3] = Abo; state[ 4] = Abu;
        state[ 5] = Aga; state[ 6] = Age; state[ 7] = Agi; state[ 8] = Ago; state[ 9] = Agu;
        state[10] = Aka; state[11] = Ake; state[12] = Aki; state[13] = Ako; state[14] = Aku;
        state[15] = Ama; state[16] = Ame; state[17] = Ami; state[18] = Amo; state[19] = Amu;
        state[20] = Asa; state[21] = Ase; state[22] = Asi; state[23] = Aso; state[24] = Asu;
    }
}

/*************************************************
* Name:        keccak_absorb_once_hls
*
* Description: Absorb step of Keccak; optimized for SHA3-256 (HLS version)
*
* Arguments:   - uint64_t *s: pointer to (uninitialized) output Keccak state
*              - const uint8_t *in: pointer to input to be absorbed into s
*              - size_t inlen: length of input in bytes
**************************************************/
static void keccak_absorb_once_hls(uint64_t s[25], const uint8_t *in, size_t inlen) {
#pragma HLS INLINE off
#pragma HLS INTERFACE ap_memory port=in depth=2048
#pragma HLS ARRAY_PARTITION variable=s cyclic factor=5 dim=1

    // Initialize state
    init_state: for(int i = 0; i < 25; i++) {
#pragma HLS PIPELINE II=1
        s[i] = 0;
    }

    // Process full rate blocks (136 bytes each)
    const int rate_words = SHA3_256_RATE / 8;  // 17 words
    int pos = 0;
    
    absorb_blocks: while(inlen >= SHA3_256_RATE) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
        
        // Absorb one block (17 words = 136 bytes)
        absorb_word_loop: for(int i = 0; i < rate_words; i++) {
#pragma HLS PIPELINE II=1
            s[i] ^= load64_hls(&in[pos + 8*i]);
        }
        
        pos += SHA3_256_RATE;
        inlen -= SHA3_256_RATE;
        KeccakF1600_StatePermute_HLS(s);
    }

    // Process remaining bytes
    absorb_remaining: for(int i = 0; i < inlen; i++) {
#pragma HLS PIPELINE II=1
        s[i/8] ^= (uint64_t)in[pos + i] << (8*(i%8));
    }

    // SHA3-256 padding
    s[inlen/8] ^= (uint64_t)0x06 << (8*(inlen%8));
    s[(SHA3_256_RATE-1)/8] ^= 1ULL << 63;
}

/*************************************************
* Name:        sha3_256_hls
*
* Description: SHA3-256 with HLS optimization (top function)
*
* Arguments:   - uint8_t *h: pointer to output (32 bytes)
*              - const uint8_t *in: pointer to input
*              - size_t inlen: length of input in bytes
**************************************************/
void sha3_256_hls(uint8_t h[32], const uint8_t *in, size_t inlen) {
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE ap_memory port=h depth=32
#pragma HLS INTERFACE ap_memory port=in depth=2048
#pragma HLS INTERFACE ap_none port=inlen
#pragma HLS ARRAY_PARTITION variable=h complete dim=1

    uint64_t s[25];
#pragma HLS ARRAY_PARTITION variable=s cyclic factor=5 dim=1

    keccak_absorb_once_hls(s, in, inlen);
    KeccakF1600_StatePermute_HLS(s);
    
    // Extract 32-byte output (4 words)
    extract_output: for(int i = 0; i < 4; i++) {
#pragma HLS PIPELINE II=1
        store64_hls(&h[8*i], s[i]);
    }
}

///*************************************************
//* Name:        sha3_256_streaming_hls
//*
//* Description: SHA3-256 streaming version for continuous processing
//*
//* Arguments:   - uint8_t *output_buffer: pointer to output buffer
//*              - const uint8_t *input_buffer: pointer to input buffer
//*              - int *input_lengths: array of input lengths for each hash
//*              - int num_hashes: number of hashes to compute
//**************************************************/
//void sha3_256_streaming_hls(uint8_t output_buffer[1024], 
//                           const uint8_t input_buffer[2048],
//                           const int input_lengths[32],
//                           int num_hashes) {
//#pragma HLS INTERFACE ap_ctrl_hs port=return
//#pragma HLS INTERFACE ap_memory port=output_buffer depth=1024
//#pragma HLS INTERFACE ap_memory port=input_buffer depth=2048
//#pragma HLS INTERFACE ap_memory port=input_lengths depth=32
//#pragma HLS INTERFACE ap_none port=num_hashes
//#pragma HLS ARRAY_PARTITION variable=output_buffer cyclic factor=8 dim=1
//#pragma HLS ARRAY_PARTITION variable=input_buffer cyclic factor=8 dim=1
//
//    int input_offset = 0;
//    int output_offset = 0;
//    
//    // Process multiple hashes in pipeline
//    stream_hashes: for(int hash_idx = 0; hash_idx < num_hashes; hash_idx++) {
//#pragma HLS PIPELINE II=50
//#pragma HLS LOOP_TRIPCOUNT min=1 max=32
//        
//        int current_length = input_lengths[hash_idx];
//        
//        // Compute single SHA3-256 hash
//        sha3_256_hls(&output_buffer[output_offset], 
//                    &input_buffer[input_offset], 
//                    current_length);
//        
//        input_offset += current_length;
//        output_offset += 32;
//    }
//}
//
///*************************************************
//* Name:        sha3_256_fixed_input_hls  
//*
//* Description: SHA3-256 for fixed 136-byte input (optimal case)
//*
//* Arguments:   - uint8_t *h: pointer to output (32 bytes)
//*              - const uint8_t *in: pointer to input (136 bytes)
//**************************************************/
//void sha3_256_fixed_input_hls(uint8_t h[32], const uint8_t in[136]) {
//#pragma HLS INTERFACE ap_ctrl_hs port=return
//#pragma HLS INTERFACE ap_memory port=h depth=32
//#pragma HLS INTERFACE ap_memory port=in depth=136
//#pragma HLS ARRAY_PARTITION variable=h complete dim=1
//#pragma HLS ARRAY_PARTITION variable=in cyclic factor=8 dim=1
//
//    uint64_t s[25];
//#pragma HLS ARRAY_PARTITION variable=s cyclic factor=5 dim=1
//
//    // Initialize state
//    init_fixed: for(int i = 0; i < 25; i++) {
//#pragma HLS UNROLL factor=5
//        s[i] = 0;
//    }
//
//    // Absorb exactly one block (17 words = 136 bytes)
//    absorb_fixed: for(int i = 0; i < 17; i++) {
//#pragma HLS UNROLL factor=2
//        s[i] = load64_hls(&in[8*i]);
//    }
//
//    // Apply SHA3-256 padding
//    s[17] ^= 0x06;  // First padding byte at position 136
//    s[16] ^= 0x8000000000000000ULL;  // Last bit at position 135*8+7
//
//    // Single permutation
//    KeccakF1600_StatePermute_HLS(s);
//
//    // Extract output  
//    extract_fixed: for(int i = 0; i < 4; i++) {
//#pragma HLS UNROLL
//        store64_hls(&h[8*i], s[i]);
//    }
//}
