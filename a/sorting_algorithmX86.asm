section .data
    arr db 64, 34, 25, 12, 22, 11, 90
    n equ 7

section .text
global _start

_start:
    mov ecx, n
    mov ebx, 1

bubble_sort:
    mov edx, 0
    mov esi, 0

inner_loop:
    mov eax, [arr + esi]
    cmp eax, [arr + esi + 1]
    jg swap
    jmp check_end

swap:
    mov edx, 1
    mov edi, [arr + esi]
    xchg edi, [arr + esi + 1]
    mov [arr + esi], edi

check_end:
    add esi, ebx
    cmp esi, ecx
    jl inner_loop

    cmp edx, 1
    jne bubble_sorted

    jmp bubble_sort

bubble_sorted:
    ; Printing sorted array
    mov eax, 4
    mov ebx, 1
    mov ecx, arr
    mov edx, n
    int 0x80

    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80
