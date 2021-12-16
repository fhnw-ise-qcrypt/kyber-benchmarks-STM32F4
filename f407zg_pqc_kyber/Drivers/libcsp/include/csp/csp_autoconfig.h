/* WARNING! All changes made to this file will be lost! */

#ifndef W_INCLUDE_CSP_CSP_AUTOCONFIG_H_WAF
#define W_INCLUDE_CSP_CSP_AUTOCONFIG_H_WAF

#define GIT_REV "1.6.4-0-g9391fc1"
#define CSP_FREERTOS
/* #undef CSP_POSIX */
/* #undef CSP_WINDOWS */
/* #undef CSP_MACOSX */
#define CSP_DEBUG 1
#define CSP_DEBUG_TIMESTAMP 0
#define CSP_USE_RDP 0
#define CSP_USE_RDP_FAST_CLOSE 0
#define CSP_USE_CRC32 0
#define CSP_USE_HMAC 0
#define CSP_USE_XTEA 0
#define CSP_USE_PROMISC 0
#define CSP_USE_QOS 0
#define CSP_USE_DEDUP 0
#define CSP_USE_EXTERNAL_DEBUG 0
#define CSP_LOG_LEVEL_DEBUG 1
#define CSP_LOG_LEVEL_INFO 1
#define CSP_LOG_LEVEL_WARN 1
#define CSP_LOG_LEVEL_ERROR 1
#define CSP_LITTLE_ENDIAN 1  // Cortex-M is little endian by default
/* #undef CSP_BIG_ENDIAN */
#define LIBCSP_VERSION "1.6"

#endif /* W_INCLUDE_CSP_CSP_AUTOCONFIG_H_WAF */
