#pragma once

#define USE_FORCE_INLINE 1

#if USE_FORCE_INLINE
	#define FORCE_INLINE inline __attribute__((always_inline))
#else
	#define FORCE_INLINE
#endif
