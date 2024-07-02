section .data
    arr db 64, 34, 25, 12, 22, 11, 90
    n equ 7

section .text
    global _start

_start:
    mov ecx, n
outer_loop:
    mov ebx, 0
inner_loop:
    mov eax, ebx
    inc eax
    cmp eax, ecx
    jge end_inner
    mov edx, [arr + ebx]
    cmp edx, [arr + eax]
    jle no_swap
    xchg edx, [arr + eax]
    mov [arr + ebx], edx
no_swap:
    inc ebx
    jmp inner_loop
end_inner:
    loop outer_loop

    ; Print sorted array
    mov ecx, n
    mov ebx, 0
print_loop:
    cmp ecx, 0
    je end_program
    mov eax, [arr + ebx]
    push eax
    call print_number
    add esp, 4
    dec ecx
    inc ebx
    jmp print_loop

end_program:
    mov eax, 1
    xor ebx, ebx
    int 0x80

print_number:
    push ebp
    mov ebp, esp
    mov edx, [ebp + 8]
    mov eax, 4
    mov ebx, 1
    mov ecx, edx
    mov edx, 1
    int 0x80
    pop ebp
    ret
