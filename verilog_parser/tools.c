#include<stdbool.h>
#include<stdio.h>
#include<stdlib.h>
#include"tools.h"
		void __up ( char* file , int line )
		{
				printf ( "----------------------------------------------------------------\n" ) ;
				printf ( "Error: File :    %s\n" , file ) ;
				printf ( "       Line      %d\n" , line ) ;
				printf ( "       Messege : ") ;
		}
		void __down ()
		{
				printf ( "\n" ) ;
				printf ( "----------------------------------------------------------------\n" ) ;
				exit ( 1 ) ;
		}
