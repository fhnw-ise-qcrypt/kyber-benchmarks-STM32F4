/*
 * test_xtea.c
 *
 *  Created on: 16.12.2021
 *      Author: simon
 */

#include "csp/crypto/csp_xtea.h"
#include "kem.h"
#include <stdlib.h>
#include "main.h"
#include "cpucycles.h"
#include "speed_print.h"

#define NTESTS 1000

uint64_t t[NTESTS];

int test_xtea_speed() {
	unsigned int i;
	uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
	uint32_t key[XTEA_KEY_LENGTH];
	const uint32_t nonce = (uint32_t) rand();
	uint32_t iv[2] = { nonce, 1 };

	printf("CRYPTO_CIPHERTEXTBYTES: %d\n", CRYPTO_CIPHERTEXTBYTES);
	printf("XTEA_KEY_LENGTH: %d (uint32_t)\n", XTEA_KEY_LENGTH);

	perf_counter_reset();
	perf_counter_start();
	for (i = 0; i < NTESTS; i++) {
		t[i] = cpucycles();
		csp_xtea_set_key(key, XTEA_KEY_LENGTH);
	}
	print_results("xtea_set_key: ", t, NTESTS);

	perf_counter_reset();
	perf_counter_start();
	for (i = 0; i < NTESTS; i++) {
		t[i] = cpucycles();
		csp_xtea_encrypt(ct, CRYPTO_CIPHERTEXTBYTES, iv);
	}
	print_results("xtea_enc: ", t, NTESTS);

	perf_counter_reset();
	perf_counter_start();
	for (i = 0; i < NTESTS; i++) {
		t[i] = cpucycles();
		csp_xtea_decrypt(ct, CRYPTO_CIPHERTEXTBYTES, iv); //(ct, CRYPTO_CIPHERTEXTBYTES, iv);
	}
	print_results("xtea_dec: ", t, NTESTS);

	return 0;
}
