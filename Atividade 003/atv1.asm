section .data

section .text
global _start


a_bigger:
mov edx, 4; count
mov ecx, esi
mov ebx, 1; fd
mov eax, 4
int 0x80
mov esi, [esi+4]
cmp esi, esp; compare esp(numB) to esi(numA)
jg finish
jl a_bigger
jmp finish

b_bigger:
mov edx, 4
mov ecx, esp
mov ebx, 1
mov eax, 4
int 0x80
mov esp, [esp+4]
cmp esp, esi; compare numA to numB
jg finish
jl b_bigger
jmp finish

finish:
mov eax, 1
int 0x80

_start:
mov esp, 10
mov esi, 2
cmp esp, esi
jg a_bigger
jl b_bigger
jmp finish
