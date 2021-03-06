#define __SYSCALL_32BIT_ARG_BYTES 12
#include "SYS.h"

#ifndef SYS_open
#error "SYS_open not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__x86_64__)
__SYSCALL2(__open, open, 3, cerror)
#endif

#if defined(__x86_64__)
	.globl	open
		open = __open
#endif

