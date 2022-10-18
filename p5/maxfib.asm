; TAHA TAS
; Program 5 - Max Fibonacci
; 10/17/2022
; Etc...

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

b1:

startLoop:

xchg eax, ebx
add ebx, eax
inc WORD[FibCount]
mov [MaxFib], ebx
jc endLoop
b2:

jmp startLoop


endLoop:



;mov ebx, [FibCount]
;b1:

;mov eax, DWORD[MaxFib + ebx * 4]
;b2:

;dec ebx
;b3:

;add eax, DWORD[MaxFib + ebx * 4]
;b4:

;inc ebx
;b5:

;mov [FibCount], ebx

;loop startLoop


lastBreak:
; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
