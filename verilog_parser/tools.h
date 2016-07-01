#ifndef __TOOLS__

	#define __TOOLS__
	#include<stdbool.h>
	#include<stdio.h>
	#ifndef ASSERT_OFF
		#define check(eq, ...)do{if ((eq)==false){ __up(__FILE__,__LINE__); printf (__VA_ARGS__) ;__down();}}while(0)
		void __up ( char* file , int line ) ;
		void __down() ;
	#else
		#define check( ...) do {  } while (0)
	#endif

	#ifndef DEBUG_LEVEL
		#define DEBUG_LEVEL 0
	#endif
	#define DEBUG(level, ...)do{if ( (level) <= DEBUG_LEVEL ) { printf (__VA_ARGS__); } }while(0)
	#define PRINT(option, ...)do{if ( option ) { printf (__VA_ARGS__); } }while(0)

#endif


