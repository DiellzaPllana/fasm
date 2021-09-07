;Program for adding numbers from 0 to n

format PE console
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
     mov ecx,0
     call read_hex
     mov  edx,eax
     
forloop:
     add eax,ecx
     inc ecx
     cmp ecx,edx
     jnz forloop
     call print_eax

     push 0
     call [ExitProcess]

include 'training.inc'