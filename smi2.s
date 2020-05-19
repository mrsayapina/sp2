.data
str_d:
        .asciz "%d\n"
numb_start:
        .long -2,2,1,3,6,1,-4,2,7,3
.set count_el, (.-numb_start)/4

M:
	.long 5

.globl main
.type main, @function
.text

main:
        movl $0, %ecx
	movl $0, %esi
	movl $0, %edi
	movl M, %edx
        movl numb_start, %eax
        jmp is_last

sravni:
        movl numb_start(,%ecx,4), %eax
        cmpl M, %eax
        jg more
	jl less
more:
	addl %eax, %edi
	jmp above
less:
	inc %esi
	jmp above
above:
	inc %ecx
is_last:
        cmpl $count_el, %ecx
        jl sravni
        pushl %edi
        pushl $str_d
	call printf
        addl $8, %esp
	pushl %esi
        pushl $str_d
        call printf
        addl $8, %esp
