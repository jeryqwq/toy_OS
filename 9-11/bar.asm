; Disassembly of file: bar.o
; Mon Sep 13 21:58:35 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global bar_func: function

extern foo_print                                        ; near


SECTION .text   align=1 execute                         ; section number 1, code

bar_func:; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 8                                  ; 0003 _ 83. EC, 08
        mov     eax, dword [ebp+8H]                     ; 0006 _ 8B. 45, 08
        cmp     eax, dword [ebp+0CH]                    ; 0009 _ 3B. 45, 0C
        jle     ?_001                                   ; 000C _ 7E, 14
        sub     esp, 8                                  ; 000E _ 83. EC, 08
        push    13                                      ; 0011 _ 6A, 0D
        push    ?_003                                   ; 0013 _ 68, 00000000(d)
        call    foo_print                               ; 0018 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 001D _ 83. C4, 10
        jmp     ?_002                                   ; 0020 _ EB, 12

?_001:  sub     esp, 8                                  ; 0022 _ 83. EC, 08
        push    13                                      ; 0025 _ 6A, 0D
        push    ?_004                                   ; 0027 _ 68, 0000000D(d)
        call    foo_print                               ; 002C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0031 _ 83. C4, 10
?_002:  mov     eax, 0                                  ; 0034 _ B8, 00000000
        leave                                           ; 0039 _ C9
        ret                                             ; 003A _ C3
; bar_func End of function


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss


SECTION .rodata align=1 noexecute                       ; section number 4, const

?_003:                                                  ; byte
        db 74H, 68H, 65H, 20H, 31H, 73H, 74H, 20H       ; 0000 _ the 1st 
        db 6FH, 6EH, 65H, 0AH, 00H                      ; 0008 _ one..

?_004:                                                  ; byte
        db 74H, 68H, 65H, 20H, 32H, 6EH, 64H, 20H       ; 000D _ the 2nd 
        db 6FH, 6EH, 65H, 0AH, 00H                      ; 0015 _ one..


