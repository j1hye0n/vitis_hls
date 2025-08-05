#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

// Include the DUT (Device Under Test)
extern void sha3_256_hls(uint8_t h[32], const uint8_t *in, size_t inlen);

// Helper function to print hex
void print_hex(const char* label, const uint8_t* data, int len) {
    printf("%s: ", label);
    for(int i = 0; i < len; i++) {
        printf("%02x", data[i]);
    }
    printf("\n");
}

// Helper function to compare arrays
int compare_arrays(const uint8_t* a, const uint8_t* b, int len) {
    for(int i = 0; i < len; i++) {
        if(a[i] != b[i]) return 0;
    }
    return 1;
}

// Test vectors from NIST
typedef struct {
    const char* name;
    const char* input_hex;
    const char* expected_hex;
    int input_len;
} test_vector_t;

// Convert hex string to byte array
int hex_to_bytes(const char* hex, uint8_t* bytes) {
    int len = strlen(hex);
    if(len % 2 != 0) return -1;
    
    for(int i = 0; i < len; i += 2) {
        char hex_byte[3] = {hex[i], hex[i+1], '\0'};
        bytes[i/2] = (uint8_t)strtol(hex_byte, NULL, 16);
    }
    return len / 2;
}

int main() {
    printf("=== SHA3-256 HLS Testbench ===\n\n");
    
    // Test vectors (from NIST test vectors)
    test_vector_t test_vectors[] = {
        {
            "Empty string",
            "",
            "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a",
            0
        },
        {
            "Single byte 'a'", 
            "61",
            "80084bf2fba02475726feb2cab2d8215eab14bc6bdd8bfb2c8151257032ecd8b",
            1
        },
        {
            "Three bytes 'abc'",
            "616263",
            "3a985da74fe225b2045c172d6bd390bd855f086e3e9d525b46bfe24511431532",
            3
        }
    };
    
    int num_tests = sizeof(test_vectors) / sizeof(test_vectors[0]);
    int passed = 0;
    int failed = 0;
    
    // Run all test vectors
    for(int i = 0; i < num_tests; i++) {
        printf("Test %d: %s\n", i+1, test_vectors[i].name);
        
        // Prepare input
        uint8_t input[2048] = {0};
        uint8_t expected[32] = {0};
        uint8_t result[32] = {0};
        
        int actual_len = hex_to_bytes(test_vectors[i].input_hex, input);
        hex_to_bytes(test_vectors[i].expected_hex, expected);
        
        if(actual_len != test_vectors[i].input_len) {
            printf("  ERROR: Input length mismatch\n");
            failed++;
            continue;
        }
        
        // Print input
        if(actual_len <= 32) {
            print_hex("  Input", input, actual_len);
        } else {
            printf("  Input: %d bytes (too long to display)\n", actual_len);
        }
        
        // Call DUT
        sha3_256_hls(result, input, actual_len);
        
        // Check result
        print_hex("  Expected", expected, 32);
        print_hex("  Got     ", result, 32);
        
        if(compare_arrays(result, expected, 32)) {
            printf("  ✓ PASS\n");
            passed++;
        } else {
            printf("  ✗ FAIL\n");
            failed++;
        }
        printf("\n");
    }
    
    // Performance test with larger inputs
    printf("=== Performance Tests ===\n");
    
    // Test with various sizes
    int perf_sizes[] = {64, 128, 256, 512, 1024};
    int num_perf_tests = sizeof(perf_sizes) / sizeof(perf_sizes[0]);
    
    for(int i = 0; i < num_perf_tests; i++) {
        int size = perf_sizes[i];
        printf("Performance test: %d bytes\n", size);
        
        uint8_t *large_input = (uint8_t*)malloc(size);
        uint8_t result[32];
        
        // Fill with pattern
        for(int j = 0; j < size; j++) {
            large_input[j] = (uint8_t)(j & 0xFF);
        }
        
        // Run the test
        sha3_256_hls(result, large_input, size);
        
        printf("  Input: %d bytes of pattern data\n", size);
        print_hex("  Result", result, 32);
        
        free(large_input);
        printf("\n");
    }
    
    // Edge cases
    printf("=== Edge Case Tests ===\n");
    
    // Test 1: Exactly one block minus one byte (135 bytes)
    printf("Edge case 1: 135 bytes (one block - 1)\n");
    uint8_t input_135[135];
    uint8_t result_135[32];
    for(int i = 0; i < 135; i++) input_135[i] = 0xAA;
    sha3_256_hls(result_135, input_135, 135);
    print_hex("  Result", result_135, 32);
    printf("\n");
    
    // Test 2: Exactly one block plus one byte (137 bytes)
    printf("Edge case 2: 137 bytes (one block + 1)\n");
    uint8_t input_137[137];
    uint8_t result_137[32];
    for(int i = 0; i < 137; i++) input_137[i] = 0x55;
    sha3_256_hls(result_137, input_137, 137);
    print_hex("  Result", result_137, 32);
    printf("\n");
    
    // Test 3: Multiple of block size (272 bytes = 2 blocks)
    printf("Edge case 3: 272 bytes (exactly 2 blocks)\n");
    uint8_t input_272[272];
    uint8_t result_272[32];
    for(int i = 0; i < 272; i++) input_272[i] = (uint8_t)(i % 256);
    sha3_256_hls(result_272, input_272, 272);
    print_hex("  Result", result_272, 32);
    printf("\n");
    
    // Final summary
    printf("=== Test Summary ===\n");
    printf("NIST Test Vectors: %d passed, %d failed\n", passed, failed);
    printf("Performance Tests: %d completed\n", num_perf_tests);
    printf("Edge Case Tests: 3 completed\n");
    
    if(failed == 0) {
        printf("\n🎉 ALL TESTS PASSED! 🎉\n");
        return 0;
    } else {
        printf("\n❌ %d TESTS FAILED ❌\n", failed);
        return 1;
    }
}

// Additional utility functions for debugging
void debug_state(const uint64_t state[25], const char* label) {
    printf("=== %s ===\n", label);
    for(int i = 0; i < 25; i++) {
        printf("state[%2d] = 0x%016lx\n", i, state[i]);
        if((i+1) % 5 == 0) printf("\n");
    }
}

// Simulation control functions (for HLS testbench)
void start_simulation() {
    printf("Starting HLS simulation...\n");
}

void end_simulation() {
    printf("HLS simulation completed.\n");
}

// Memory allocation tracker for large tests
typedef struct {
    void* ptr;
    size_t size;
    int active;
} mem_tracker_t;

static mem_tracker_t mem_tracker[100];
static int mem_count = 0;

void* tracked_malloc(size_t size) {
    void* ptr = malloc(size);
    if(ptr && mem_count < 100) {
        mem_tracker[mem_count].ptr = ptr;
        mem_tracker[mem_count].size = size;
        mem_tracker[mem_count].active = 1;
        mem_count++;
    }
    return ptr;
}

void tracked_free(void* ptr) {
    for(int i = 0; i < mem_count; i++) {
        if(mem_tracker[i].ptr == ptr && mem_tracker[i].active) {
            free(ptr);
            mem_tracker[i].active = 0;
            return;
        }
    }
}

void check_memory_leaks() {
    int leaks = 0;
    for(int i = 0; i < mem_count; i++) {
        if(mem_tracker[i].active) {
            printf("Memory leak: %p (%zu bytes)\n", 
                   mem_tracker[i].ptr, mem_tracker[i].size);
            leaks++;
        }
    }
    if(leaks == 0) {
        printf("✓ No memory leaks detected\n");
    } else {
        printf("❌ %d memory leaks detected\n", leaks);
    }
}
