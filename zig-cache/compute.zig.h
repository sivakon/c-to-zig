#ifndef COMPUTE_2E_ZIG_H
#define COMPUTE_2E_ZIG_H

#include <stdint.h>

#ifdef __cplusplus
#define COMPUTE_2E_ZIG_EXTERN_C extern "C"
#else
#define COMPUTE_2E_ZIG_EXTERN_C
#endif

#if defined(_WIN32)
#define COMPUTE_2E_ZIG_EXPORT COMPUTE_2E_ZIG_EXTERN_C __declspec(dllimport)
#else
#define COMPUTE_2E_ZIG_EXPORT COMPUTE_2E_ZIG_EXTERN_C __attribute__((visibility ("default")))
#endif

COMPUTE_2E_ZIG_EXPORT uint8_t compute(uint8_t a);

#endif
