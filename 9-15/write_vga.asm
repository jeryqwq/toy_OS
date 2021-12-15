; Disassembly of file: write_vga.o
; Thu Jan 28 16:05:00 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386

io_in8:
      mov  edx, [esp + 4]
      mov  eax, 0
      in   al, dx

    io_in16:
      mov  edx, [esp + 4]
      mov  eax, 0
      in   ax, dx

    io_in32:
      mov edx, [esp + 4]
      in  eax, dx
      ret

    io_out8:
       mov edx, [esp + 4]
       mov al, [esp + 8]
       out dx, al
       ret

    io_out16:
       mov edx, [esp + 4]
       mov eax, [esp + 8]
       out dx, ax
       ret

    io_out32:
        mov edx, [esp + 4]
        mov eax, [esp + 8]
        out dx, eax
        ret

    io_cli:
      CLI
      RET
    io_load_eflags:
        pushfd
        pop  eax
        ret

    io_store_eflags:
        mov eax, [esp + 4]
        push eax
        popfd
        ret


CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 24                                 ; 0003 _ 83. EC, 18
        mov     dword [ebp-10H], 0                      ; 0006 _ C7. 45, F0, 00000000
        call    init_palette                            ; 000D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], 655360                 ; 0012 _ C7. 45, F4, 000A0000
        jmp     ?_002                                   ; 0019 _ EB, 16

?_001:  mov     eax, dword [ebp-0CH]                    ; 001B _ 8B. 45, F4
        mov     dword [ebp-10H], eax                    ; 001E _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 0021 _ 8B. 45, F4
        and     eax, 0FH                                ; 0024 _ 83. E0, 0F
        mov     dl, al                                  ; 0027 _ 88. C2
        mov     eax, dword [ebp-10H]                    ; 0029 _ 8B. 45, F0
        mov     byte [eax], dl                          ; 002C _ 88. 10
        inc     dword [ebp-0CH]                         ; 002E _ FF. 45, F4
?_002:  cmp     dword [ebp-0CH], 720895                 ; 0031 _ 81. 7D, F4, 000AFFFF
        jle     ?_001                                   ; 0038 _ 7E, E1
?_003:  call    io_hlt                                  ; 003A _ E8, FFFFFFFC(rel)
        jmp     ?_003                                   ; 003F _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 0041 _ 55
        mov     ebp, esp                                ; 0042 _ 89. E5
        sub     esp, 8                                  ; 0044 _ 83. EC, 08
        sub     esp, 4                                  ; 0047 _ 83. EC, 04
        push    table_rgb.1523                          ; 004A _ 68, 00000000(d)
        push    15                                      ; 004F _ 6A, 0F
        push    0                                       ; 0051 _ 6A, 00
        call    set_palette                             ; 0053 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0058 _ 83. C4, 10
        nop                                             ; 005B _ 90
        leave                                           ; 005C _ C9
        ret                                             ; 005D _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 005E _ 55
        mov     ebp, esp                                ; 005F _ 89. E5
        sub     esp, 24                                 ; 0061 _ 83. EC, 18
        call    io_load_eflags                          ; 0064 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0069 _ 89. 45, F0
        call    io_cli                                  ; 006C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0071 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0074 _ FF. 75, 08
        push    968                                     ; 0077 _ 68, 000003C8
        call    io_out8                                 ; 007C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0081 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0084 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0087 _ 89. 45, F4
        jmp     ?_005                                   ; 008A _ EB, 56

?_004:  mov     eax, dword [ebp+10H]                    ; 008C _ 8B. 45, 10
        mov     al, byte [eax]                          ; 008F _ 8A. 00
        movzx   eax, al                                 ; 0091 _ 0F B6. C0
        sub     esp, 8                                  ; 0094 _ 83. EC, 08
        push    eax                                     ; 0097 _ 50
        push    969                                     ; 0098 _ 68, 000003C9
        call    io_out8                                 ; 009D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A2 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 00A5 _ 8B. 45, 10
        inc     eax                                     ; 00A8 _ 40
        mov     al, byte [eax]                          ; 00A9 _ 8A. 00
        movzx   eax, al                                 ; 00AB _ 0F B6. C0
        sub     esp, 8                                  ; 00AE _ 83. EC, 08
        push    eax                                     ; 00B1 _ 50
        push    969                                     ; 00B2 _ 68, 000003C9
        call    io_out8                                 ; 00B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BC _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 00BF _ 8B. 45, 10
        add     eax, 2                                  ; 00C2 _ 83. C0, 02
        mov     al, byte [eax]                          ; 00C5 _ 8A. 00
        movzx   eax, al                                 ; 00C7 _ 0F B6. C0
        sub     esp, 8                                  ; 00CA _ 83. EC, 08
        push    eax                                     ; 00CD _ 50
        push    969                                     ; 00CE _ 68, 000003C9
        call    io_out8                                 ; 00D3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D8 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 00DB _ 83. 45, 10, 03
        inc     dword [ebp-0CH]                         ; 00DF _ FF. 45, F4
?_005:  mov     eax, dword [ebp-0CH]                    ; 00E2 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 00E5 _ 3B. 45, 0C
        jle     ?_004                                   ; 00E8 _ 7E, A2
        sub     esp, 12                                 ; 00EA _ 83. EC, 0C
        push    dword [ebp-10H]                         ; 00ED _ FF. 75, F0
        call    io_store_eflags                         ; 00F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00F5 _ 83. C4, 10
        nop                                             ; 00F8 _ 90
        leave                                           ; 00F9 _ C9
        ret                                             ; 00FA _ C3
; set_palette End of function

table_rgb.1523:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........