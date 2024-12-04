INCLUDE Irvine32.inc
.data
    intarray WORD 100h, 200h, 300h, 400h ; Array of words
    arraySize = ($ - intarray) / 2       ; Calculate the size of the array
    sum DWORD 0                          ; Variable to store the sum

.code
main PROC
    mov ecx, arraySize                   ; Load the size of the array into ECX (loop counter)
    mov esi, OFFSET intarray             ; Load the address of the array into ESI
    xor eax, eax                         ; Clear EAX (used to store the sum)

sumLoop:
    add ax, [esi]                        ; Add the current element to AX
    add esi, 2                           ; Move to the next element (WORD = 2 bytes)
    loop sumLoop                         ; Repeat until ECX = 0

    mov sum, eax                         ; Store the sum in the variable 'sum'

    call DumpRegs                        ; Display registers (optional)
    exit
main ENDP
END main
