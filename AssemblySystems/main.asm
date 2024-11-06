INCLUDE Irvine32.inc
.386
.data
	val1 WORD 1000h
	val2 WORD 2000h
	arrayB BYTE 10h, 20h, 30h, 40h, 50h
	arrayW WORD 100h, 200h, 300h
	arrayD DWORD 10000h, 20000h
.code
main PROC
;MOVZX
	mov bx, 0A69Bh ; Initialize BX reg
	movzx eax, bx ; EAX = TODO
	movzx edx, bl ; EDX = TODO
	movzx cx, bl ; CX = TODO
	Call DumpRegs
; MOVSX
	mov bx, 0A69Bh ; Initialize BX reg
	movsx eax, bx ; EAX = TODO
	movsx edx, bl ; EDX = TODO
	movsx cx, bl ; CX = TODO
	call DumpRegs
; Memory-to-memory exchange
	mov ax, val1 ; AX = TODO
	xchg ax, val2 ; AX = TODO,val2 = TODO
	mov val1, ax ; val1 = TODO
	call DumpRegs
; Direct-offset Addressing (byte array)
	mov al, arrayB ; AL = TODO
	mov al, [arrayB+1] ; AL = TODO
	mov al, [arrayB+2] ; AL = TODO
	call DumpRegs
; Direct-offset Addressing (word array)
	mov ax, arrayW ; AX = TODO
	mov ax, [arrayW+2] ; AX = TODO
call DumpRegs
; Direct-offset Addressing (doubleword array)
	mov eax, arrayD ; EAX = TODO
	mov eax, [arrayD+4] ; EAX = TODO
	call DumpRegs
ret
main ENDP
END main