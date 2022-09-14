section .text
	default rel
	extern printf
	extern scanf
	global main
main:
	push rbp

	push rax
	push rcx

	lea rdi, [formatin1]
	lea rsi, [in1]
	xor rax, rax
	call scanf

	lea rdi, [formatin2]
	lea rsi, [in2]
	xor rax, rax
	call scanf

	mov rdi, formatout1
	mov rsi, [in1]
	xor rax, rax

	call printf

	mov rdi, formatout2
	mov rsi, in2
	xor rax, rax

	call printf

	pop rcx
	pop rax
	
	pop rbp
	ret

section .data
	formatin1: db "%d", 0
	formatin2: db "%s", 0
	in1: times 4 db 0
	in2: times 100 db 0
	formatout1: db "%d", 10, 0
	formatout2: db "%s", 10, 0
