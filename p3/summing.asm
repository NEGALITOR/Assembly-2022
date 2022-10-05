; TAHA TAS
; CSC 322 10/3/2022
; Project 3 - Summing Arrays
; Etc...

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
bArray:		DB	-1,-2,-3,-4,-5
wArray:		DW	0,1,2,3,4
dArray:		DD	322,322h,322q,1833,1833h
bArraySum:	DB	0
wArraySum:	DW	0
dArraySum:	DD	0
grandTotal:	DD	0



SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:

; put your code here.
mov al, [bArray]
add al, [bArray+1]
add al, [bArray+2]
add al, [bArray+3]
add al, [bArray+4]
mov [bArraySum], al

mov bx, [wArray]
add bx, [wArray+1*2]
add bx, [wArray+2*2]
add bx, [wArray+3*2]
add bx, [wArray+4*2]
mov [wArraySum], bx

mov ecx, [dArray]
add ecx, [dArray+1*4]
add ecx, [dArray+2*4]
add ecx, [dArray+3*4]
add ecx, [dArray+4*4]
mov [dArraySum], ecx

movsx eax, al
movsx ebx, bx
mov [grandTotal], ecx
add [grandTotal], eax
add [grandTotal], ebx

; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
