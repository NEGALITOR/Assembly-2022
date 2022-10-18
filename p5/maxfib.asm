; TAHA TAS
; Program 5 - Max Fibonacci
; 10/17/2022
; Finds the max fibonacci number that can fit in a double word and stores it

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ

SECTION .bss
; define uninitialized data here
MaxFib:		RESD 1
FibCount:	RESW 1


SECTION .text
global _main
_main:

mov eax, 0
mov ebx, 1

inc WORD[FibCount]

startLoop:

xchg eax, ebx
add ebx, eax
mov [MaxFib], ebx
jc endLoop

inc WORD[FibCount]

jmp startLoop

endLoop:

lastBreak:
; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
