#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<String>
#include"tools.c"
#include<map>
#include<String>
#include<iostream>
#include <utility>
#include<vector>

using namespace std;


map<string,struct Wire>input_gate; //input
map<string,struct Wire>output_gate; //output
map<string,struct Gate>intermediate_gate; //gate
map<string,struct Wire>wire_gate; //link

string find_link( string link_name );

struct Gate{
    int gate_type; // 0:input 1:inter 2:output 3:wire
    int gate_name; // 0:and 1:nand 2:or 3:nor 4:xor 5:xnor 6:buf 7:not
    string name;
    string output_port;
    vector<string> input_port;
};

struct Wire{
    string name;
    string input;
    string output;
};

string find_gate( string gate_name ){
    map<string, struct Wire>::iterator iter_wire;
    map<string, struct Gate>::iterator iter_gate;

    iter_gate = intermediate_gate.find(gate_name);
    //gate founded
	if(iter_gate != intermediate_gate.end()){
           // printf("\tthis find gate\n");

    }
	//determine how many inputs
    int input_num = iter_gate->second.input_port.size();

    //printf("input_num = %d\n",input_num);
    string name = "";
    string op;

    if(iter_gate->second.gate_name == 0){
        op.assign("&");
    }else if(iter_gate->second.gate_name == 1){
        op.assign("nand");
    }else if(iter_gate->second.gate_name == 2){
        op.assign("or");
    }else if(iter_gate->second.gate_name == 3){
        op.assign("nor");
    }else if(iter_gate->second.gate_name == 4){
        op.assign("xor");
    }else if(iter_gate->second.gate_name == 5){
        op.assign("xnor");
    }else if(iter_gate->second.gate_name == 6){
        op.assign("buf");
    }else if(iter_gate->second.gate_name == 7){
        op.assign("not");
    }

    for(int i=0; i<input_num; i++){
        if(i == 0){
            name = find_link( iter_gate->second.input_port[i]);
        }else{
            name = name + " " + op + " " +find_link( iter_gate->second.input_port [i]);
        }
    }

    return "( " + name + " )";

}

string find_link( string link_name ){

   // cout << "Find_link : " << link_name << "\n";
    map<string, struct Wire>::iterator iter_wire;
    map<string, struct Gate>::iterator iter_gate;
    iter_wire = wire_gate.find(link_name); //find link
    if(iter_wire != wire_gate.end()){
       // printf("\tfind links\n");

        string tem = iter_wire->second.input;

        iter_wire = input_gate.find(tem);
        if(iter_wire != input_gate.end()){
            //printf("\tthis connect to input\n");
           return iter_wire->second.name;
        }

        iter_gate = intermediate_gate.find(tem);
        if(iter_gate != intermediate_gate.end()){
            //printf("\tthis connect to gate\n");
           return find_gate( tem );
        }

    }

    iter_wire = input_gate.find(link_name); //find link
    if(iter_wire != input_gate.end()){
            //printf("\tthis connect to input\n");
           // cout << "name = " <<  iter_wire->second.name << "\n";

           return iter_wire->second.name;
    }

    iter_wire = output_gate.find(link_name); //find link
    if(iter_wire != output_gate.end()){
            //printf("\tthis connect to output\n");
           // cout << "name = " <<  iter_wire->second.name << "\n";

           return find_gate(iter_wire->second.input);
    }

}


FILE * replace ( FILE * File_ptr )
{
	char Get ;
	char Flag = 0 ;
	FILE * tmp ;
	tmp = fopen ( "tmp.v" , "w" ) ;
	check ( File_ptr != NULL , "File_ptr is NULL" ) ;
	check ( tmp != NULL , "Can not open tmp file \"%s\"" , "tmp.v" ) ;
	while ( ( Get = getc ( File_ptr ) ) != EOF )
	{
		if ( Flag == 3 ) // comment
		{
			if ( Get == '*' )
			{
				Get = getc ( File_ptr ) ;
				if ( Get == '/' )
				{
					Flag = 0 ;
				}
			}
			continue ;
		}
		else if ( Flag == 4 ) // comment
		{
			if ( Get == 10 )
			{
				Flag = 0 ;
			}
			continue ;
		}
		else if ( Flag == 2 && Get == '/' )
		{
			Flag = 4 ;
			continue ;
		}
		else if ( Get == '/' )
		{
			Flag = 2 ;
			continue ;
		}
		else if ( Flag == 2 && Get == '*' )
		{
			Flag = 3 ;
			continue ;
		}
		else if ( Get == 10 || Get == 13 )
		{
			Flag = 0 ;
			fprintf( tmp , "\n" , Get ) ;
			continue ;
		}
		else if ( '0' <= Get && Get <= '9' || 'a' <= Get && Get  <= 'z' || 'A' <= Get && Get  <= 'Z' || Get == '_' )
		{
			Flag = 1 ;
			fprintf( tmp , "%c" , Get ) ;
			continue ;
		}
		else if ( Get == '{' || Get == '}' || Get == ';' || Get == '.' )
		{
			if ( Flag == 1 )
			{
				Flag = 0 ;
				fprintf( tmp , " " ) ;
			}
			fprintf( tmp , "%c " , Get ) ;
			continue ;
		}
		else if ( Flag == 1 )
		{
			Flag = 0 ;
			fprintf( tmp , " " ) ;
			continue ;
		}
		else
		{
			Flag = 0 ;
			continue ;
		}
	}
	fclose ( File_ptr ) ;
	fclose ( tmp ) ;
	tmp = fopen ( "tmp.v" , "r" ) ;
	check ( tmp != NULL , "Can not open temp file" ) ;
	return tmp ;
}
int main () {
	int finish ;
	char token[1024] ;
	char token2[1024] ;
	char token3[1024] ;
	int bus_s , bus_e ;
	int gate_count = 0;

	map<string, struct Gate>::iterator iter_gate;
	map<string, struct Wire>::iterator iter_wire;

	FILE * verilog = fopen ( "cir1.v" , "r" ) ;
	//FILE * verilog = fopen ( "fa_syn.v" , "r" ) ;
	//FILE * verilog = fopen ( "usb_phy.v" , "r" ) ;
	//FILE * verilog = fopen ( "multiplier.v" , "r" ) ;
	verilog = replace ( verilog ) ;



    // map<string,Wire>wire_gate; //link


	while (1) {
		fscanf ( verilog , "%s" , token ) ;
		if ( !strcmp ( "module" , token ) ) {

			/* read module's name */
			fscanf ( verilog , "%s" , token ) ;
			printf ( "NEW MODULE %s\n" , token ) ;
			// Get a new module !!

			/* read module's inputs & outputs */
			while ( 1 ) {
				fscanf ( verilog , "%s" , token ) ;
				if ( !strcmp ( ";" , token ) ) {
					break ;
				}
				printf ( "PORTS: %s\n" , token ) ;
				// Get a new port !!
				// ....
			}
		}
		else if ( !strcmp ( "input" , token ) ) {
			bus_s = bus_e = 0 ;
			while ( 1 ) {
				fscanf ( verilog , "%s" , token ) ;
				if ( !strcmp ( ";" , token ) ) {
					break ;
				}
				else if ( isdigit(token[0]) ) {
					bus_s = atoi ( token ) ;
					fscanf ( verilog , "%s" , token ) ;
					bus_e = atoi ( token ) ;
					continue ;
				}/* read like [15:0] */

				if ( bus_s == bus_e && bus_s == 0 ){
                    printf ( "INPUT: %s\n" , token ) ;

                    /* put it in input_gate map*/
					string tem;
					tem.assign(token);
					Wire inputGate;
					inputGate.name = tem;

					input_gate.insert(pair<string,Wire>(tem,inputGate) );

                }
				else
					printf ( "INPUT[%d:%d]: %s\n" , bus_s , bus_e , token ) ;
				// Get a new input !!
				// bus_s and bus_e indicates the bus width of input.
				// ....
			}
		}
		else if ( !strcmp ( "output" , token ) ) {
			bus_s = bus_e = 0 ;
			while ( 1 ) {
				fscanf ( verilog , "%s" , token ) ;
				if ( !strcmp ( ";" , token ) ) {
					break ;
				}
				else if ( isdigit(token[0]) ) {
					bus_s = atoi ( token ) ;
					fscanf ( verilog , "%s" , token ) ;
					bus_e = atoi ( token ) ;
					continue ;
				}
				if ( bus_s == bus_e && bus_s == 0 ){

                    printf ( "OUTPUT: %s\n" , token ) ;

                    /* put it in output_gate map*/
					string tem;
					tem.assign(token);
					Wire outputGate;
					outputGate.name = tem;
					output_gate.insert(pair<string,Wire>(tem,outputGate) );
				}

				else
					printf ( "OUTPUT[%d:%d]: %s\n" , bus_s , bus_e , token ) ;
				// Get a new output !!
				// bus_s and bus_e indicates the bus width of output.
				// ....
			}
		}
		else if ( !strcmp ( "wire" , token ) ) {
			bus_s = bus_e = 0 ;
			while ( 1 ) {
				fscanf ( verilog , "%s" , token ) ;
				if ( !strcmp ( ";" , token ) ) {
					break ;
				}
				else if ( isdigit(token[0]) ) {
					bus_s = atoi ( token ) ;
					fscanf ( verilog , "%s" , token ) ;
					bus_e = atoi ( token ) ;
					continue ;
				}
				if ( bus_s == bus_e && bus_s == 0 ){
					printf ( "WIRE: %s\n" , token ) ;

                    /* put it in wire_gate map*/
					string tem;
					tem.assign(token);
					Wire wireGate;
					wireGate.name = tem;
					wire_gate.insert(pair<string,Wire>(tem,wireGate) );


				}
				else
					printf ( "WIRE[%d:%d]: %s\n" , bus_s , bus_e , token ) ;
				// Get a new wire !!
				// bus_s and bus_e indicates the bus width of wire.
				// ....
			}
		}
		else if ( !strcmp ( "endmodule" , token ) ) {
			printf ( "END MODULE\n" ) ;
			break ;
		}
		else { // gates
			//fscanf ( verilog , "%s" , token2 ) ;
			//printf ( "GATE: %s %s\n" , token , token2 ) ;
			printf ( "GATE: %s\n" , token) ;

            //int gate_name; // 0:and 1:nand 2:or 3:xor 4:xnor 5:buf 6:not

            int gate_name;

            if(strcmp(token, "and") == 0 ){
                gate_name = 0;
            }else if(strcmp(token, "nand") == 0 ){
                gate_name = 1;
            }else if(strcmp(token, "or") == 0 ){
                gate_name = 2;
            }else if(strcmp(token, "nor") == 0 ){
                gate_name = 3;
            }else if(strcmp(token, "xor") == 0 ){
                gate_name = 4;
            }else if(strcmp(token, "xnor") == 0 ){
                gate_name = 5;
            }else if(strcmp(token, "buf") == 0 ){
                gate_name = 6;
            }else if(strcmp(token, "not") == 0 ){
                gate_name = 7;
            }
			 /* put it in wire_gate map*/
            string tem_input = "gate";
            string tem= "gate";
            char tem_gate[10];
            sprintf (tem_gate, "%d",gate_count);
            gate_count++;
            Gate iterGate;
            iterGate.gate_type = 3;
            iterGate.gate_name = gate_name;
            tem_input.assign(tem_gate);
            iterGate.name = tem_input;
            intermediate_gate.insert(pair<string,Gate>(tem_input,iterGate) );

			// Get a new Gate !!
			// ...

			fscanf ( verilog , "%s" , token ) ;

			string tem1 = token;
			intermediate_gate.find(tem_input)->second.output_port = tem1;

			finish = 0 ;
			int cou = 0;
			while ( 1 ) {
				if ( ! strcmp (token,";") )
					break ;
                if(cou == 0){
                    string tem1 = token;
                    cou++;
                }
                if(cou == 1){
                    printf( "\tOutPORT: %s\n" ,token );


					tem.assign(token);

                    iter_wire = wire_gate.find(tem);
                    if(iter_wire != wire_gate.end()){
                        printf("\tthis connect to wire\n");
                        iter_wire->second.input = tem_input;
                    }

                    iter_wire = output_gate.find(tem);
                    if(iter_wire != output_gate.end()){
                        printf("\tthis connect to output\n");
                        iter_wire->second.input = tem_input;
                    }

                    cou++;
                }else{
                    printf ( "\tInPORT: %s\n" ,token ) ;

                    tem.assign(token);
                    intermediate_gate.find(tem_input)->second.input_port.push_back(tem) ;

                    iter_wire = wire_gate.find(tem);
                    if(iter_wire != wire_gate.end()){
                        printf("\tthis connect to wire\n");
                        iter_wire->second.output = tem_input;
                    }

                    iter_wire = input_gate.find(tem);
                    if(iter_wire != input_gate.end()){
                        printf("\tthis connect to input\n");
                        iter_wire->second.output = tem_input;
                    }

                    iter_wire = output_gate.find(tem);
                    if(iter_wire != output_gate.end()){
                        printf("\tthis connect to output\n");
                        iter_wire->second.output = tem_input;
                    }

                }




                // Get a new Port (not bus)
                // ...
                fscanf ( verilog , "%s" , token ) ;

				if ( ! strcmp (token2,";") )
					break ;
			}
		}
	}

    for ( map<string,Wire>::iterator it = output_gate.begin(); it!=output_gate.end(); ++it){
        cout << it->second.name << " "  << it->second.input  <<"\n";
        //find_gate( it->second.name );
        cout <<"boolean equation "<<  it->second.name << " = " << find_gate( it->second.input ) << "\n";

    }

	return 0 ;
}





