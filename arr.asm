format PE console
; A program for clearing an array of bytes
entry start

include 'win32a.inc' 

section '.data' data readable writeable
       my_arr db 1,2,3,4,5

section '.text' code readable executable
     
      

start:
     mov edi,my_arr
     mov ecx,5
     xor al,al
     rep stosb
    

     push 0
     call [ExitProcess]

include 'training.inc'

 
