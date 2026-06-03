#ifndef ICU_COMPAT_H
#define ICU_COMPAT_H

#include <unicode/uversion.h>

#if U_ICU_VERSION_MAJOR_NUM < 73
#ifndef USET_SIMPLE_CASE_INSENSITIVE
#define USET_SIMPLE_CASE_INSENSITIVE USET_CASE_INSENSITIVE
#endif
#endif

#endif