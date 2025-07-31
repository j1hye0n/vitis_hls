# 1 "/home/hyeon/workspace/array_blcokcyc/matmul_partition.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 401 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/hyeon/workspace/array_blcokcyc/matmul_partition.cpp" 2
# 19 "/home/hyeon/workspace/array_blcokcyc/matmul_partition.cpp"
# 1 "/home/hyeon/workspace/array_blcokcyc/matmul_partition.h" 1
# 20 "/home/hyeon/workspace/array_blcokcyc/matmul_partition.h"
void matmul_partition(int* in1, int* in2, int* out_r, int dim, int rep_count);
# 20 "/home/hyeon/workspace/array_blcokcyc/matmul_partition.cpp" 2


const unsigned int c_dim = 16;

void matmul_partition(int* in1, int* in2, int* out_r, int dim, int rep_count) {
#pragma HLS INTERFACE m_axi port = in1 depth = 256
#pragma HLS INTERFACE m_axi port = in2 depth = 256
#pragma HLS INTERFACE m_axi port = out_r depth = 256

    int A[16 * 16];
    int B[16 * 16];
    int C[16 * 16];


#pragma HLS ARRAY_PARTITION variable = A dim = 1 cyclic factor = 16


#pragma HLS ARRAY_PARTITION variable = B dim = 1 block factor = 16







readA:
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {
#pragma HLS LOOP_TRIPCOUNT min = c_dim* c_dim max = c_dim * c_dim
        if (j == dim) {
            j = 0;
            i++;
        }
        A[i * 16 + j] = in1[itr];
    }


readB:
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {
#pragma HLS LOOP_TRIPCOUNT min = c_dim* c_dim max = c_dim * c_dim
        if (j == dim) {
            j = 0;
            i++;
        }
        B[i * 16 + j] = in2[itr];
    }

loop2:
    for (int x = 0; x < rep_count; x++) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
    lreorder1:
        for (int i = 0; i < dim; i++) {
#pragma HLS LOOP_TRIPCOUNT min = c_dim max = c_dim


        lreorder2:
            for (int j = 0; j < dim; j++) {
#pragma HLS LOOP_TRIPCOUNT min = c_dim max = c_dim
                int result = 0;
            lreorder3:
                for (int k = 0; k < 16; k++) {

                    result += A[i * 16 + k] * B[k * 16 + j];
                }
                C[i * 16 + j] = result;
            }
        }
    }



writeC:
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {
#pragma HLS LOOP_TRIPCOUNT min = c_dim* c_dim max = c_dim * c_dim
        if (j == dim) {
            j = 0;
            i++;
        }
        out_r[itr] = C[i * 16 + j];
    }
}
