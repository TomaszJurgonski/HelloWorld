.386
.model flat,stdcall
.stack 4096

EXTRN ExitProcess@4 : PROC
EXTRN GetStdHandle@4 : PROC
EXTRN WriteConsoleA@20 : PROC

.data
tekst db "Hello World",0
zapisane dword ?

.code
main PROC
    push -11
    call GetStdHandle@4
 
    push 0   
    push offset zapisane
    push lengthof tekst - 1
    push offset tekst   
    push eax     
    call WriteConsoleA@20

    push 0  
    call ExitProcess@4
main ENDP
END main