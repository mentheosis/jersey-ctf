
context-clues:	file format ELF64-x86-64


Disassembly of section .init:

0000000000000690 _init:
     690: 48 83 ec 08                  	subq	$8, %rsp
     694: 48 8b 05 4d 19 20 00         	movq	2103629(%rip), %rax
     69b: 48 85 c0                     	testq	%rax, %rax
     69e: 74 02                        	je	2 <_init+0x12>
     6a0: ff d0                        	callq	*%rax
     6a2: 48 83 c4 08                  	addq	$8, %rsp
     6a6: c3                           	retq

Disassembly of section .plt:

00000000000006b0 .plt:
     6b0: ff 35 da 18 20 00            	pushq	2103514(%rip)
     6b6: ff 25 dc 18 20 00            	jmpq	*2103516(%rip)
     6bc: 0f 1f 40 00                  	nopl	(%rax)
     6c0: ff 25 da 18 20 00            	jmpq	*2103514(%rip)
     6c6: 68 00 00 00 00               	pushq	$0
     6cb: e9 e0 ff ff ff               	jmp	-32 <.plt>
     6d0: ff 25 d2 18 20 00            	jmpq	*2103506(%rip)
     6d6: 68 01 00 00 00               	pushq	$1
     6db: e9 d0 ff ff ff               	jmp	-48 <.plt>
     6e0: ff 25 ca 18 20 00            	jmpq	*2103498(%rip)
     6e6: 68 02 00 00 00               	pushq	$2
     6eb: e9 c0 ff ff ff               	jmp	-64 <.plt>
     6f0: ff 25 c2 18 20 00            	jmpq	*2103490(%rip)
     6f6: 68 03 00 00 00               	pushq	$3
     6fb: e9 b0 ff ff ff               	jmp	-80 <.plt>
     700: ff 25 ba 18 20 00            	jmpq	*2103482(%rip)
     706: 68 04 00 00 00               	pushq	$4
     70b: e9 a0 ff ff ff               	jmp	-96 <.plt>
     710: ff 25 b2 18 20 00            	jmpq	*2103474(%rip)
     716: 68 05 00 00 00               	pushq	$5
     71b: e9 90 ff ff ff               	jmp	-112 <.plt>
     720: ff 25 aa 18 20 00            	jmpq	*2103466(%rip)
     726: 68 06 00 00 00               	pushq	$6
     72b: e9 80 ff ff ff               	jmp	-128 <.plt>

Disassembly of section .plt.got:

0000000000000730 .plt.got:
     730: ff 25 c2 18 20 00            	jmpq	*2103490(%rip)
     736: 66 90                        	nop

Disassembly of section .text:

0000000000000740 _start:
     740: 31 ed                        	xorl	%ebp, %ebp
     742: 49 89 d1                     	movq	%rdx, %r9
     745: 5e                           	popq	%rsi
     746: 48 89 e2                     	movq	%rsp, %rdx
     749: 48 83 e4 f0                  	andq	$-16, %rsp
     74d: 50                           	pushq	%rax
     74e: 54                           	pushq	%rsp
     74f: 4c 8d 05 1a 06 00 00         	leaq	1562(%rip), %r8
     756: 48 8d 0d a3 05 00 00         	leaq	1443(%rip), %rcx
     75d: 48 8d 3d 02 04 00 00         	leaq	1026(%rip), %rdi
     764: ff 15 76 18 20 00            	callq	*2103414(%rip)
     76a: f4                           	hlt
     76b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000000770 deregister_tm_clones:
     770: 48 8d 3d 99 18 20 00         	leaq	2103449(%rip), %rdi
     777: 55                           	pushq	%rbp
     778: 48 8d 05 91 18 20 00         	leaq	2103441(%rip), %rax
     77f: 48 39 f8                     	cmpq	%rdi, %rax
     782: 48 89 e5                     	movq	%rsp, %rbp
     785: 74 19                        	je	25 <deregister_tm_clones+0x30>
     787: 48 8b 05 4a 18 20 00         	movq	2103370(%rip), %rax
     78e: 48 85 c0                     	testq	%rax, %rax
     791: 74 0d                        	je	13 <deregister_tm_clones+0x30>
     793: 5d                           	popq	%rbp
     794: ff e0                        	jmpq	*%rax
     796: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
     7a0: 5d                           	popq	%rbp
     7a1: c3                           	retq
     7a2: 0f 1f 40 00                  	nopl	(%rax)
     7a6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000000000007b0 register_tm_clones:
     7b0: 48 8d 3d 59 18 20 00         	leaq	2103385(%rip), %rdi
     7b7: 48 8d 35 52 18 20 00         	leaq	2103378(%rip), %rsi
     7be: 55                           	pushq	%rbp
     7bf: 48 29 fe                     	subq	%rdi, %rsi
     7c2: 48 89 e5                     	movq	%rsp, %rbp
     7c5: 48 c1 fe 03                  	sarq	$3, %rsi
     7c9: 48 89 f0                     	movq	%rsi, %rax
     7cc: 48 c1 e8 3f                  	shrq	$63, %rax
     7d0: 48 01 c6                     	addq	%rax, %rsi
     7d3: 48 d1 fe                     	sarq	%rsi
     7d6: 74 18                        	je	24 <register_tm_clones+0x40>
     7d8: 48 8b 05 11 18 20 00         	movq	2103313(%rip), %rax
     7df: 48 85 c0                     	testq	%rax, %rax
     7e2: 74 0c                        	je	12 <register_tm_clones+0x40>
     7e4: 5d                           	popq	%rbp
     7e5: ff e0                        	jmpq	*%rax
     7e7: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)
     7f0: 5d                           	popq	%rbp
     7f1: c3                           	retq
     7f2: 0f 1f 40 00                  	nopl	(%rax)
     7f6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000000800 __do_global_dtors_aux:
     800: 80 3d 21 18 20 00 00         	cmpb	$0, 2103329(%rip)
     807: 75 2f                        	jne	47 <__do_global_dtors_aux+0x38>
     809: 48 83 3d e7 17 20 00 00      	cmpq	$0, 2103271(%rip)
     811: 55                           	pushq	%rbp
     812: 48 89 e5                     	movq	%rsp, %rbp
     815: 74 0c                        	je	12 <__do_global_dtors_aux+0x23>
     817: 48 8b 3d ea 17 20 00         	movq	2103274(%rip), %rdi
     81e: e8 0d ff ff ff               	callq	-243 <.plt.got>
     823: e8 48 ff ff ff               	callq	-184 <deregister_tm_clones>
     828: c6 05 f9 17 20 00 01         	movb	$1, 2103289(%rip)
     82f: 5d                           	popq	%rbp
     830: c3                           	retq
     831: 0f 1f 80 00 00 00 00         	nopl	(%rax)
     838: f3 c3                        	rep		retq
     83a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000000840 frame_dummy:
     840: 55                           	pushq	%rbp
     841: 48 89 e5                     	movq	%rsp, %rbp
     844: 5d                           	popq	%rbp
     845: e9 66 ff ff ff               	jmp	-154 <register_tm_clones>

000000000000084a func1:
     84a: 55                           	pushq	%rbp
     84b: 48 89 e5                     	movq	%rsp, %rbp
     84e: 48 83 ec 20                  	subq	$32, %rsp
     852: c7 45 e4 06 00 00 00         	movl	$6, -28(%rbp)
     859: eb 43                        	jmp	67 <func1+0x54>
     85b: 8b 45 e4                     	movl	-28(%rbp), %eax
     85e: 48 63 d0                     	movslq	%eax, %rdx
     861: 48 8d 05 d8 17 20 00         	leaq	2103256(%rip), %rax
     868: 0f b6 04 02                  	movzbl	(%rdx,%rax), %eax
     86c: 83 f0 37                     	xorl	$55, %eax
     86f: 89 c1                        	movl	%eax, %ecx
     871: 8b 45 e4                     	movl	-28(%rbp), %eax
     874: 48 63 d0                     	movslq	%eax, %rdx
     877: 48 8d 05 c2 17 20 00         	leaq	2103234(%rip), %rax
     87e: 88 0c 02                     	movb	%cl, (%rdx,%rax)
     881: 83 7d e4 10                  	cmpl	$16, -28(%rbp)
     885: 75 13                        	jne	19 <func1+0x50>
     887: 48 8d 35 92 1b 20 00         	leaq	2104210(%rip), %rsi
     88e: 48 8d 3d cb 17 20 00         	leaq	2103243(%rip), %rdi
     895: e8 46 fe ff ff               	callq	-442 <.plt+0x30>
     89a: 83 45 e4 01                  	addl	$1, -28(%rbp)
     89e: 83 7d e4 1b                  	cmpl	$27, -28(%rbp)
     8a2: 7e b7                        	jle	-73 <func1+0x11>
     8a4: 0f b6 05 ad 17 20 00         	movzbl	2103213(%rip), %eax
     8ab: 0f be c0                     	movsbl	%al, %eax
     8ae: 89 45 f0                     	movl	%eax, -16(%rbp)
     8b1: 0f b6 05 8d 17 20 00         	movzbl	2103181(%rip), %eax
     8b8: 88 05 9a 17 20 00            	movb	%al, 2103194(%rip)
     8be: 8b 45 f0                     	movl	-16(%rbp), %eax
     8c1: 88 05 7e 17 20 00            	movb	%al, 2103166(%rip)
     8c7: c7 45 e8 03 00 00 00         	movl	$3, -24(%rbp)
     8ce: eb 54                        	jmp	84 <func1+0xda>
     8d0: 8b 45 e8                     	movl	-24(%rbp), %eax
     8d3: 83 e8 01                     	subl	$1, %eax
     8d6: 48 63 d0                     	movslq	%eax, %rdx
     8d9: 48 8d 05 60 17 20 00         	leaq	2103136(%rip), %rax
     8e0: 0f b6 0c 02                  	movzbl	(%rdx,%rax), %ecx
     8e4: 8b 45 e8                     	movl	-24(%rbp), %eax
     8e7: 48 63 d0                     	movslq	%eax, %rdx
     8ea: 48 8d 05 4f 17 20 00         	leaq	2103119(%rip), %rax
     8f1: 0f b6 04 02                  	movzbl	(%rdx,%rax), %eax
     8f5: 31 c1                        	xorl	%eax, %ecx
     8f7: 8b 45 e8                     	movl	-24(%rbp), %eax
     8fa: 48 63 d0                     	movslq	%eax, %rdx
     8fd: 48 8d 05 3c 17 20 00         	leaq	2103100(%rip), %rax
     904: 88 0c 02                     	movb	%cl, (%rdx,%rax)
     907: 83 7d e8 07                  	cmpl	$7, -24(%rbp)
     90b: 75 13                        	jne	19 <func1+0xd6>
     90d: 48 8d 35 0c 1b 20 00         	leaq	2104076(%rip), %rsi
     914: 48 8d 3d 45 17 20 00         	leaq	2103109(%rip), %rdi
     91b: e8 c0 fd ff ff               	callq	-576 <.plt+0x30>
     920: 83 45 e8 01                  	addl	$1, -24(%rbp)
     924: 83 7d e8 15                  	cmpl	$21, -24(%rbp)
     928: 7e a6                        	jle	-90 <func1+0x86>
     92a: 0f b6 05 18 17 20 00         	movzbl	2103064(%rip), %eax
     931: 0f be c0                     	movsbl	%al, %eax
     934: 89 45 f4                     	movl	%eax, -12(%rbp)
     937: 0f b6 05 08 17 20 00         	movzbl	2103048(%rip), %eax
     93e: 88 05 05 17 20 00            	movb	%al, 2103045(%rip)
     944: 8b 45 f4                     	movl	-12(%rbp), %eax
     947: 88 05 f9 16 20 00            	movb	%al, 2103033(%rip)
     94d: c7 45 ec 0d 00 00 00         	movl	$13, -20(%rbp)
     954: eb 56                        	jmp	86 <func1+0x162>
     956: 0f b6 05 ef 16 20 00         	movzbl	2103023(%rip), %eax
     95d: 0f be c0                     	movsbl	%al, %eax
     960: 89 45 fc                     	movl	%eax, -4(%rbp)
     963: 8b 45 ec                     	movl	-20(%rbp), %eax
     966: 48 63 d0                     	movslq	%eax, %rdx
     969: 48 8d 05 d0 16 20 00         	leaq	2102992(%rip), %rax
     970: 0f b6 04 02                  	movzbl	(%rdx,%rax), %eax
     974: 88 05 d2 16 20 00            	movb	%al, 2102994(%rip)
     97a: 8b 45 fc                     	movl	-4(%rbp), %eax
     97d: 89 c1                        	movl	%eax, %ecx
     97f: 8b 45 ec                     	movl	-20(%rbp), %eax
     982: 48 63 d0                     	movslq	%eax, %rdx
     985: 48 8d 05 b4 16 20 00         	leaq	2102964(%rip), %rax
     98c: 88 0c 02                     	movb	%cl, (%rdx,%rax)
     98f: 83 7d ec 15                  	cmpl	$21, -20(%rbp)
     993: 75 13                        	jne	19 <func1+0x15e>
     995: 48 8d 35 84 1a 20 00         	leaq	2103940(%rip), %rsi
     99c: 48 8d 3d bd 16 20 00         	leaq	2102973(%rip), %rdi
     9a3: e8 38 fd ff ff               	callq	-712 <.plt+0x30>
     9a8: 83 45 ec 01                  	addl	$1, -20(%rbp)
     9ac: 83 7d ec 1d                  	cmpl	$29, -20(%rbp)
     9b0: 7e a4                        	jle	-92 <func1+0x10c>
     9b2: 0f b6 05 96 16 20 00         	movzbl	2102934(%rip), %eax
     9b9: 0f be c0                     	movsbl	%al, %eax
     9bc: 89 45 f8                     	movl	%eax, -8(%rbp)
     9bf: 0f b6 05 95 16 20 00         	movzbl	2102933(%rip), %eax
     9c6: 88 05 83 16 20 00            	movb	%al, 2102915(%rip)
     9cc: 8b 45 f8                     	movl	-8(%rbp), %eax
     9cf: 88 05 86 16 20 00            	movb	%al, 2102918(%rip)
     9d5: 90                           	nop
     9d6: c9                           	leave
     9d7: c3                           	retq

00000000000009d8 func2:
     9d8: 55                           	pushq	%rbp
     9d9: 48 89 e5                     	movq	%rsp, %rbp
     9dc: 48 83 ec 20                  	subq	$32, %rsp
     9e0: c7 45 e4 03 00 00 00         	movl	$3, -28(%rbp)
     9e7: eb 56                        	jmp	86 <func2+0x67>
     9e9: 0f b6 05 52 16 20 00         	movzbl	2102866(%rip), %eax
     9f0: 0f be c0                     	movsbl	%al, %eax
     9f3: 89 45 fc                     	movl	%eax, -4(%rbp)
     9f6: 8b 45 e4                     	movl	-28(%rbp), %eax
     9f9: 48 63 d0                     	movslq	%eax, %rdx
     9fc: 48 8d 05 3d 16 20 00         	leaq	2102845(%rip), %rax
     a03: 0f b6 04 02                  	movzbl	(%rdx,%rax), %eax
     a07: 88 05 35 16 20 00            	movb	%al, 2102837(%rip)
     a0d: 8b 45 fc                     	movl	-4(%rbp), %eax
     a10: 89 c1                        	movl	%eax, %ecx
     a12: 8b 45 e4                     	movl	-28(%rbp), %eax
     a15: 48 63 d0                     	movslq	%eax, %rdx
     a18: 48 8d 05 21 16 20 00         	leaq	2102817(%rip), %rax
     a1f: 88 0c 02                     	movb	%cl, (%rdx,%rax)
     a22: 83 7d e4 0b                  	cmpl	$11, -28(%rbp)
     a26: 75 13                        	jne	19 <func2+0x63>
     a28: 48 8d 35 31 16 20 00         	leaq	2102833(%rip), %rsi
     a2f: 48 8d 3d ea 19 20 00         	leaq	2103786(%rip), %rdi
     a36: e8 a5 fc ff ff               	callq	-859 <.plt+0x30>
     a3b: 83 45 e4 01                  	addl	$1, -28(%rbp)
     a3f: 83 7d e4 1c                  	cmpl	$28, -28(%rbp)
     a43: 7e a4                        	jle	-92 <func2+0x11>
     a45: 0f b6 05 08 16 20 00         	movzbl	2102792(%rip), %eax
     a4c: 0f be c0                     	movsbl	%al, %eax
     a4f: 89 45 f0                     	movl	%eax, -16(%rbp)
     a52: 0f b6 05 f2 15 20 00         	movzbl	2102770(%rip), %eax
     a59: 88 05 f5 15 20 00            	movb	%al, 2102773(%rip)
     a5f: 8b 45 f0                     	movl	-16(%rbp), %eax
     a62: 88 05 e3 15 20 00            	movb	%al, 2102755(%rip)
     a68: c7 45 e8 0c 00 00 00         	movl	$12, -24(%rbp)
     a6f: eb 54                        	jmp	84 <func2+0xed>
     a71: 8b 45 e8                     	movl	-24(%rbp), %eax
     a74: 83 e8 01                     	subl	$1, %eax
     a77: 48 63 d0                     	movslq	%eax, %rdx
     a7a: 48 8d 05 bf 15 20 00         	leaq	2102719(%rip), %rax
     a81: 0f b6 0c 02                  	movzbl	(%rdx,%rax), %ecx
     a85: 8b 45 e8                     	movl	-24(%rbp), %eax
     a88: 48 63 d0                     	movslq	%eax, %rdx
     a8b: 48 8d 05 ae 15 20 00         	leaq	2102702(%rip), %rax
     a92: 0f b6 04 02                  	movzbl	(%rdx,%rax), %eax
     a96: 31 c1                        	xorl	%eax, %ecx
     a98: 8b 45 e8                     	movl	-24(%rbp), %eax
     a9b: 48 63 d0                     	movslq	%eax, %rdx
     a9e: 48 8d 05 9b 15 20 00         	leaq	2102683(%rip), %rax
     aa5: 88 0c 02                     	movb	%cl, (%rdx,%rax)
     aa8: 83 7d e8 14                  	cmpl	$20, -24(%rbp)
     aac: 75 13                        	jne	19 <func2+0xe9>
     aae: 48 8d 35 ab 15 20 00         	leaq	2102699(%rip), %rsi
     ab5: 48 8d 3d 64 19 20 00         	leaq	2103652(%rip), %rdi
     abc: e8 1f fc ff ff               	callq	-993 <.plt+0x30>
     ac1: 83 45 e8 01                  	addl	$1, -24(%rbp)
     ac5: 83 7d e8 1f                  	cmpl	$31, -24(%rbp)
     ac9: 7e a6                        	jle	-90 <func2+0x99>
     acb: 0f b6 05 89 15 20 00         	movzbl	2102665(%rip), %eax
     ad2: 0f be c0                     	movsbl	%al, %eax
     ad5: 89 45 f4                     	movl	%eax, -12(%rbp)
     ad8: 0f b6 05 7f 15 20 00         	movzbl	2102655(%rip), %eax
     adf: 88 05 76 15 20 00            	movb	%al, 2102646(%rip)
     ae5: 8b 45 f4                     	movl	-12(%rbp), %eax
     ae8: 88 05 70 15 20 00            	movb	%al, 2102640(%rip)
     aee: c7 45 ec 04 00 00 00         	movl	$4, -20(%rbp)
     af5: eb 43                        	jmp	67 <func2+0x162>
     af7: 8b 45 ec                     	movl	-20(%rbp), %eax
     afa: 48 63 d0                     	movslq	%eax, %rdx
     afd: 48 8d 05 3c 15 20 00         	leaq	2102588(%rip), %rax
     b04: 0f b6 04 02                  	movzbl	(%rdx,%rax), %eax
     b08: 83 f0 78                     	xorl	$120, %eax
     b0b: 89 c1                        	movl	%eax, %ecx
     b0d: 8b 45 ec                     	movl	-20(%rbp), %eax
     b10: 48 63 d0                     	movslq	%eax, %rdx
     b13: 48 8d 05 26 15 20 00         	leaq	2102566(%rip), %rax
     b1a: 88 0c 02                     	movb	%cl, (%rdx,%rax)
     b1d: 83 7d ec 0e                  	cmpl	$14, -20(%rbp)
     b21: 75 13                        	jne	19 <func2+0x15e>
     b23: 48 8d 35 36 15 20 00         	leaq	2102582(%rip), %rsi
     b2a: 48 8d 3d ef 18 20 00         	leaq	2103535(%rip), %rdi
     b31: e8 aa fb ff ff               	callq	-1110 <.plt+0x30>
     b36: 83 45 ec 01                  	addl	$1, -20(%rbp)
     b3a: 83 7d ec 11                  	cmpl	$17, -20(%rbp)
     b3e: 7e b7                        	jle	-73 <func2+0x11f>
     b40: 0f b6 05 15 15 20 00         	movzbl	2102549(%rip), %eax
     b47: 0f be c0                     	movsbl	%al, %eax
     b4a: 89 45 f8                     	movl	%eax, -8(%rbp)
     b4d: 0f b6 05 05 15 20 00         	movzbl	2102533(%rip), %eax
     b54: 88 05 02 15 20 00            	movb	%al, 2102530(%rip)
     b5a: 8b 45 f8                     	movl	-8(%rbp), %eax
     b5d: 88 05 f6 14 20 00            	movb	%al, 2102518(%rip)
     b63: 90                           	nop
     b64: c9                           	leave
     b65: c3                           	retq

0000000000000b66 main:
     b66: 55                           	pushq	%rbp
     b67: 48 89 e5                     	movq	%rsp, %rbp
     b6a: 48 83 ec 10                  	subq	$16, %rsp
     b6e: 89 7d fc                     	movl	%edi, -4(%rbp)
     b71: 48 89 75 f0                  	movq	%rsi, -16(%rbp)
     b75: 83 7d fc 02                  	cmpl	$2, -4(%rbp)
     b79: 74 2c                        	je	44 <main+0x41>
     b7b: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     b7f: 48 8b 10                     	movq	(%rax), %rdx
     b82: 48 8b 05 97 14 20 00         	movq	2102423(%rip), %rax
     b89: 48 8d 35 30 02 00 00         	leaq	560(%rip), %rsi
     b90: 48 89 c7                     	movq	%rax, %rdi
     b93: b8 00 00 00 00               	movl	$0, %eax
     b98: e8 63 fb ff ff               	callq	-1181 <.plt+0x50>
     b9d: b8 01 00 00 00               	movl	$1, %eax
     ba2: e9 53 01 00 00               	jmp	339 <main+0x194>
     ba7: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     bab: 48 83 c0 08                  	addq	$8, %rax
     baf: 48 8b 00                     	movq	(%rax), %rax
     bb2: 48 89 c7                     	movq	%rax, %rdi
     bb5: e8 16 fb ff ff               	callq	-1258 <.plt+0x20>
     bba: 48 83 f8 20                  	cmpq	$32, %rax
     bbe: 74 16                        	je	22 <main+0x70>
     bc0: 48 8d 3d 0c 02 00 00         	leaq	524(%rip), %rdi
     bc7: e8 f4 fa ff ff               	callq	-1292 <.plt+0x10>
     bcc: b8 00 00 00 00               	movl	$0, %eax
     bd1: e9 24 01 00 00               	jmp	292 <main+0x194>
     bd6: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     bda: 48 83 c0 08                  	addq	$8, %rax
     bde: 48 8b 08                     	movq	(%rax), %rcx
     be1: 48 8b 01                     	movq	(%rcx), %rax
     be4: 48 8b 51 08                  	movq	8(%rcx), %rdx
     be8: 48 89 05 51 14 20 00         	movq	%rax, 2102353(%rip)
     bef: 48 89 15 52 14 20 00         	movq	%rdx, 2102354(%rip)
     bf6: 48 8b 41 10                  	movq	16(%rcx), %rax
     bfa: 48 8b 51 18                  	movq	24(%rcx), %rdx
     bfe: 48 89 05 4b 14 20 00         	movq	%rax, 2102347(%rip)
     c05: 48 89 15 4c 14 20 00         	movq	%rdx, 2102348(%rip)
     c0c: 48 8d 3d 4d 14 20 00         	leaq	2102349(%rip), %rdi
     c13: e8 08 fb ff ff               	callq	-1272 <.plt+0x70>
     c18: 48 8d 05 81 1f 20 00         	leaq	2105217(%rip), %rax
     c1f: 48 89 05 4a 14 20 00         	movq	%rax, 2102346(%rip)
     c26: 48 c7 05 4f 14 20 00 00 20 00 00     	movq	$8192, 2102351(%rip)
     c31: 48 8d 05 e8 17 20 00         	leaq	2103272(%rip), %rax
     c38: 48 89 05 29 14 20 00         	movq	%rax, 2102313(%rip)
     c3f: ba 00 00 00 00               	movl	$0, %edx
     c44: 48 8d 35 ff fb ff ff         	leaq	-1025(%rip), %rsi
     c4b: 48 8d 3d 0e 14 20 00         	leaq	2102286(%rip), %rdi
     c52: b8 00 00 00 00               	movl	$0, %eax
     c57: e8 b4 fa ff ff               	callq	-1356 <.plt+0x60>
     c5c: 48 8d 3d bd 17 20 00         	leaq	2103229(%rip), %rdi
     c63: e8 b8 fa ff ff               	callq	-1352 <.plt+0x70>
     c68: 48 8d 05 31 3f 20 00         	leaq	2113329(%rip), %rax
     c6f: 48 89 05 ba 17 20 00         	movq	%rax, 2103226(%rip)
     c76: 48 c7 05 bf 17 20 00 00 20 00 00     	movq	$8192, 2103231(%rip)
     c81: 48 8d 05 58 1b 20 00         	leaq	2104152(%rip), %rax
     c88: 48 89 05 99 17 20 00         	movq	%rax, 2103193(%rip)
     c8f: ba 00 00 00 00               	movl	$0, %edx
     c94: 48 8d 35 3d fd ff ff         	leaq	-707(%rip), %rsi
     c9b: 48 8d 3d 7e 17 20 00         	leaq	2103166(%rip), %rdi
     ca2: b8 00 00 00 00               	movl	$0, %eax
     ca7: e8 64 fa ff ff               	callq	-1436 <.plt+0x60>
     cac: 48 8d 35 6d 17 20 00         	leaq	2103149(%rip), %rsi
     cb3: 48 8d 3d 26 1b 20 00         	leaq	2104102(%rip), %rdi
     cba: e8 21 fa ff ff               	callq	-1503 <.plt+0x30>
     cbf: ba 20 00 00 00               	movl	$32, %edx
     cc4: 48 8d 35 d5 00 00 00         	leaq	213(%rip), %rsi
     ccb: 48 8d 3d 6e 13 20 00         	leaq	2102126(%rip), %rdi
     cd2: e8 19 fa ff ff               	callq	-1511 <.plt+0x40>
     cd7: 85 c0                        	testl	%eax, %eax
     cd9: 75 0e                        	jne	14 <main+0x183>
     cdb: 48 8d 3d f9 00 00 00         	leaq	249(%rip), %rdi
     ce2: e8 d9 f9 ff ff               	callq	-1575 <.plt+0x10>
     ce7: eb 0c                        	jmp	12 <main+0x18f>
     ce9: 48 8d 3d e3 00 00 00         	leaq	227(%rip), %rdi
     cf0: e8 cb f9 ff ff               	callq	-1589 <.plt+0x10>
     cf5: b8 00 00 00 00               	movl	$0, %eax
     cfa: c9                           	leave
     cfb: c3                           	retq
     cfc: 0f 1f 40 00                  	nopl	(%rax)

0000000000000d00 __libc_csu_init:
     d00: 41 57                        	pushq	%r15
     d02: 41 56                        	pushq	%r14
     d04: 49 89 d7                     	movq	%rdx, %r15
     d07: 41 55                        	pushq	%r13
     d09: 41 54                        	pushq	%r12
     d0b: 4c 8d 25 76 10 20 00         	leaq	2101366(%rip), %r12
     d12: 55                           	pushq	%rbp
     d13: 48 8d 2d 76 10 20 00         	leaq	2101366(%rip), %rbp
     d1a: 53                           	pushq	%rbx
     d1b: 41 89 fd                     	movl	%edi, %r13d
     d1e: 49 89 f6                     	movq	%rsi, %r14
     d21: 4c 29 e5                     	subq	%r12, %rbp
     d24: 48 83 ec 08                  	subq	$8, %rsp
     d28: 48 c1 fd 03                  	sarq	$3, %rbp
     d2c: e8 5f f9 ff ff               	callq	-1697 <_init>
     d31: 48 85 ed                     	testq	%rbp, %rbp
     d34: 74 20                        	je	32 <__libc_csu_init+0x56>
     d36: 31 db                        	xorl	%ebx, %ebx
     d38: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
     d40: 4c 89 fa                     	movq	%r15, %rdx
     d43: 4c 89 f6                     	movq	%r14, %rsi
     d46: 44 89 ef                     	movl	%r13d, %edi
     d49: 41 ff 14 dc                  	callq	*(%r12,%rbx,8)
     d4d: 48 83 c3 01                  	addq	$1, %rbx
     d51: 48 39 dd                     	cmpq	%rbx, %rbp
     d54: 75 ea                        	jne	-22 <__libc_csu_init+0x40>
     d56: 48 83 c4 08                  	addq	$8, %rsp
     d5a: 5b                           	popq	%rbx
     d5b: 5d                           	popq	%rbp
     d5c: 41 5c                        	popq	%r12
     d5e: 41 5d                        	popq	%r13
     d60: 41 5e                        	popq	%r14
     d62: 41 5f                        	popq	%r15
     d64: c3                           	retq
     d65: 90                           	nop
     d66: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000000d70 __libc_csu_fini:
     d70: f3 c3                        	rep		retq

Disassembly of section .fini:

0000000000000d74 _fini:
     d74: 48 83 ec 08                  	subq	$8, %rsp
     d78: 48 83 c4 08                  	addq	$8, %rsp
     d7c: c3                           	retq
