; Disassembly of file: write_vga_desktop_single_char.o
; Tue Sep 28 23:30:27 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386



CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 36                                 ; 0004 _ 83. EC, 24
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        lea     eax, [ebp-1CH]                          ; 000A _ 8D. 45, E4
        push    eax                                     ; 000D _ 50
        call    initBootInfo                            ; 000E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0013 _ 83. C4, 10
        mov     eax, dword [ebp-1CH]                    ; 0016 _ 8B. 45, E4
        mov     dword [ebp-0CH], eax                    ; 0019 _ 89. 45, F4
        movzx   eax, word [ebp-18H]                     ; 001C _ 0F B7. 45, E8
        cwde                                            ; 0020 _ 98
        mov     dword [ebp-10H], eax                    ; 0021 _ 89. 45, F0
        movzx   eax, word [ebp-16H]                     ; 0024 _ 0F B7. 45, EA
        cwde                                            ; 0028 _ 98
        mov     dword [ebp-14H], eax                    ; 0029 _ 89. 45, EC
        call    init_palette                            ; 002C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0031 _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0034 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0037 _ 8B. 45, F0
        sub     eax, 1                                  ; 003A _ 83. E8, 01
        sub     esp, 4                                  ; 003D _ 83. EC, 04
        push    edx                                     ; 0040 _ 52
        push    eax                                     ; 0041 _ 50
        push    0                                       ; 0042 _ 6A, 00
        push    0                                       ; 0044 _ 6A, 00
        push    14                                      ; 0046 _ 6A, 0E
        push    dword [ebp-10H]                         ; 0048 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 004B _ FF. 75, F4
        call    boxfill8                                ; 004E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0053 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0056 _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 0059 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 005C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 005F _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0062 _ 8B. 45, EC
        sub     eax, 28                                 ; 0065 _ 83. E8, 1C
        sub     esp, 4                                  ; 0068 _ 83. EC, 04
        push    ecx                                     ; 006B _ 51
        push    edx                                     ; 006C _ 52
        push    eax                                     ; 006D _ 50
        push    0                                       ; 006E _ 6A, 00
        push    8                                       ; 0070 _ 6A, 08
        push    dword [ebp-10H]                         ; 0072 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 0075 _ FF. 75, F4
        call    boxfill8                                ; 0078 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 007D _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0080 _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 0083 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 0086 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0089 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 008C _ 8B. 45, EC
        sub     eax, 27                                 ; 008F _ 83. E8, 1B
        sub     esp, 4                                  ; 0092 _ 83. EC, 04
        push    ecx                                     ; 0095 _ 51
        push    edx                                     ; 0096 _ 52
        push    eax                                     ; 0097 _ 50
        push    0                                       ; 0098 _ 6A, 00
        push    7                                       ; 009A _ 6A, 07
        push    dword [ebp-10H]                         ; 009C _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 009F _ FF. 75, F4
        call    boxfill8                                ; 00A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00A7 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 00AA _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00AD _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 00B0 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00B3 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00B6 _ 8B. 45, EC
        sub     eax, 26                                 ; 00B9 _ 83. E8, 1A
        sub     esp, 4                                  ; 00BC _ 83. EC, 04
        push    ecx                                     ; 00BF _ 51
        push    edx                                     ; 00C0 _ 52
        push    eax                                     ; 00C1 _ 50
        push    0                                       ; 00C2 _ 6A, 00
        push    8                                       ; 00C4 _ 6A, 08
        push    dword [ebp-10H]                         ; 00C6 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 00C9 _ FF. 75, F4
        call    boxfill8                                ; 00CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00D1 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 00D4 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 00D7 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 00DA _ 8B. 45, EC
        sub     eax, 24                                 ; 00DD _ 83. E8, 18
        sub     esp, 4                                  ; 00E0 _ 83. EC, 04
        push    edx                                     ; 00E3 _ 52
        push    59                                      ; 00E4 _ 6A, 3B
        push    eax                                     ; 00E6 _ 50
        push    3                                       ; 00E7 _ 6A, 03
        push    7                                       ; 00E9 _ 6A, 07
        push    dword [ebp-10H]                         ; 00EB _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 00EE _ FF. 75, F4
        call    boxfill8                                ; 00F1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00F6 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 00F9 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 00FC _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 00FF _ 8B. 45, EC
        sub     eax, 24                                 ; 0102 _ 83. E8, 18
        sub     esp, 4                                  ; 0105 _ 83. EC, 04
        push    edx                                     ; 0108 _ 52
        push    2                                       ; 0109 _ 6A, 02
        push    eax                                     ; 010B _ 50
        push    2                                       ; 010C _ 6A, 02
        push    7                                       ; 010E _ 6A, 07
        push    dword [ebp-10H]                         ; 0110 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 0113 _ FF. 75, F4
        call    boxfill8                                ; 0116 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 011B _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 011E _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 0121 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 0124 _ 8B. 45, EC
        sub     eax, 4                                  ; 0127 _ 83. E8, 04
        sub     esp, 4                                  ; 012A _ 83. EC, 04
        push    edx                                     ; 012D _ 52
        push    59                                      ; 012E _ 6A, 3B
        push    eax                                     ; 0130 _ 50
        push    3                                       ; 0131 _ 6A, 03
        push    15                                      ; 0133 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0135 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 0138 _ FF. 75, F4
        call    boxfill8                                ; 013B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0140 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0143 _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 0146 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 0149 _ 8B. 45, EC
        sub     eax, 23                                 ; 014C _ 83. E8, 17
        sub     esp, 4                                  ; 014F _ 83. EC, 04
        push    edx                                     ; 0152 _ 52
        push    59                                      ; 0153 _ 6A, 3B
        push    eax                                     ; 0155 _ 50
        push    59                                      ; 0156 _ 6A, 3B
        push    15                                      ; 0158 _ 6A, 0F
        push    dword [ebp-10H]                         ; 015A _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 015D _ FF. 75, F4
        call    boxfill8                                ; 0160 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0165 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0168 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 016B _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 016E _ 8B. 45, EC
        sub     eax, 3                                  ; 0171 _ 83. E8, 03
        sub     esp, 4                                  ; 0174 _ 83. EC, 04
        push    edx                                     ; 0177 _ 52
        push    59                                      ; 0178 _ 6A, 3B
        push    eax                                     ; 017A _ 50
        push    2                                       ; 017B _ 6A, 02
        push    0                                       ; 017D _ 6A, 00
        push    dword [ebp-10H]                         ; 017F _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 0182 _ FF. 75, F4
        call    boxfill8                                ; 0185 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 018A _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 018D _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0190 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0193 _ 8B. 45, EC
        sub     eax, 24                                 ; 0196 _ 83. E8, 18
        sub     esp, 4                                  ; 0199 _ 83. EC, 04
        push    edx                                     ; 019C _ 52
        push    60                                      ; 019D _ 6A, 3C
        push    eax                                     ; 019F _ 50
        push    60                                      ; 01A0 _ 6A, 3C
        push    0                                       ; 01A2 _ 6A, 00
        push    dword [ebp-10H]                         ; 01A4 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 01A7 _ FF. 75, F4
        call    boxfill8                                ; 01AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01AF _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 01B2 _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 01B5 _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 01B8 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 01BB _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 01BE _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 01C1 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 01C4 _ 8B. 45, F0
        sub     eax, 47                                 ; 01C7 _ 83. E8, 2F
        sub     esp, 4                                  ; 01CA _ 83. EC, 04
        push    ebx                                     ; 01CD _ 53
        push    ecx                                     ; 01CE _ 51
        push    edx                                     ; 01CF _ 52
        push    eax                                     ; 01D0 _ 50
        push    15                                      ; 01D1 _ 6A, 0F
        push    dword [ebp-10H]                         ; 01D3 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 01D6 _ FF. 75, F4
        call    boxfill8                                ; 01D9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01DE _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 01E1 _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 01E4 _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 01E7 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 01EA _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 01ED _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 01F0 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 01F3 _ 8B. 45, F0
        sub     eax, 47                                 ; 01F6 _ 83. E8, 2F
        sub     esp, 4                                  ; 01F9 _ 83. EC, 04
        push    ebx                                     ; 01FC _ 53
        push    ecx                                     ; 01FD _ 51
        push    edx                                     ; 01FE _ 52
        push    eax                                     ; 01FF _ 50
        push    15                                      ; 0200 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0202 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 0205 _ FF. 75, F4
        call    boxfill8                                ; 0208 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 020D _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0210 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0213 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0216 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0219 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 021C _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 021F _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 0222 _ 8B. 45, F0
        sub     eax, 47                                 ; 0225 _ 83. E8, 2F
        sub     esp, 4                                  ; 0228 _ 83. EC, 04
        push    ebx                                     ; 022B _ 53
        push    ecx                                     ; 022C _ 51
        push    edx                                     ; 022D _ 52
        push    eax                                     ; 022E _ 50
        push    7                                       ; 022F _ 6A, 07
        push    dword [ebp-10H]                         ; 0231 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 0234 _ FF. 75, F4
        call    boxfill8                                ; 0237 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 023C _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 023F _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0242 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0245 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0248 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 024B _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 024E _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 0251 _ 8B. 45, F0
        sub     eax, 3                                  ; 0254 _ 83. E8, 03
        sub     esp, 4                                  ; 0257 _ 83. EC, 04
        push    ebx                                     ; 025A _ 53
        push    ecx                                     ; 025B _ 51
        push    edx                                     ; 025C _ 52
        push    eax                                     ; 025D _ 50
        push    7                                       ; 025E _ 6A, 07
        push    dword [ebp-10H]                         ; 0260 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 0263 _ FF. 75, F4
        call    boxfill8                                ; 0266 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 026B _ 83. C4, 20
        sub     esp, 8                                  ; 026E _ 83. EC, 08
        push    fontA                                   ; 0271 _ 68, 00000000(d)
        push    7                                       ; 0276 _ 6A, 07
        push    20                                      ; 0278 _ 6A, 14
        push    20                                      ; 027A _ 6A, 14
        push    dword [ebp-10H]                         ; 027C _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 027F _ FF. 75, F4
        call    showFont8                               ; 0282 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0287 _ 83. C4, 20
?_001:  call    io_hlt                                  ; 028A _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 028F _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0291 _ 55
        mov     ebp, esp                                ; 0292 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0294 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0297 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 029D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 02A0 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 02A6 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 02A9 _ 66: C7. 40, 06, 00C8
        nop                                             ; 02AF _ 90
        pop     ebp                                     ; 02B0 _ 5D
        ret                                             ; 02B1 _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 02B2 _ 55
        mov     ebp, esp                                ; 02B3 _ 89. E5
        sub     esp, 8                                  ; 02B5 _ 83. EC, 08
        sub     esp, 4                                  ; 02B8 _ 83. EC, 04
        push    table_rgb.0                             ; 02BB _ 68, 00000020(d)
        push    15                                      ; 02C0 _ 6A, 0F
        push    0                                       ; 02C2 _ 6A, 00
        call    set_palette                             ; 02C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02C9 _ 83. C4, 10
        nop                                             ; 02CC _ 90
        leave                                           ; 02CD _ C9
        ret                                             ; 02CE _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 02CF _ 55
        mov     ebp, esp                                ; 02D0 _ 89. E5
        sub     esp, 24                                 ; 02D2 _ 83. EC, 18
        call    io_load_eflags                          ; 02D5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 02DA _ 89. 45, F0
        call    io_cli                                  ; 02DD _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 02E2 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 02E5 _ FF. 75, 08
        push    968                                     ; 02E8 _ 68, 000003C8
        call    io_out8                                 ; 02ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02F2 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 02F5 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 02F8 _ 89. 45, F4
        jmp     ?_003                                   ; 02FB _ EB, 65

?_002:  mov     eax, dword [ebp+10H]                    ; 02FD _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0300 _ 0F B6. 00
        shr     al, 2                                   ; 0303 _ C0. E8, 02
        movzx   eax, al                                 ; 0306 _ 0F B6. C0
        sub     esp, 8                                  ; 0309 _ 83. EC, 08
        push    eax                                     ; 030C _ 50
        push    969                                     ; 030D _ 68, 000003C9
        call    io_out8                                 ; 0312 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0317 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 031A _ 8B. 45, 10
        add     eax, 1                                  ; 031D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0320 _ 0F B6. 00
        shr     al, 2                                   ; 0323 _ C0. E8, 02
        movzx   eax, al                                 ; 0326 _ 0F B6. C0
        sub     esp, 8                                  ; 0329 _ 83. EC, 08
        push    eax                                     ; 032C _ 50
        push    969                                     ; 032D _ 68, 000003C9
        call    io_out8                                 ; 0332 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0337 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 033A _ 8B. 45, 10
        add     eax, 2                                  ; 033D _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0340 _ 0F B6. 00
        shr     al, 2                                   ; 0343 _ C0. E8, 02
        movzx   eax, al                                 ; 0346 _ 0F B6. C0
        sub     esp, 8                                  ; 0349 _ 83. EC, 08
        push    eax                                     ; 034C _ 50
        push    969                                     ; 034D _ 68, 000003C9
        call    io_out8                                 ; 0352 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0357 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 035A _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 035E _ 83. 45, F4, 01
?_003:  mov     eax, dword [ebp-0CH]                    ; 0362 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0365 _ 3B. 45, 0C
        jle     ?_002                                   ; 0368 _ 7E, 93
        sub     esp, 12                                 ; 036A _ 83. EC, 0C
        push    dword [ebp-10H]                         ; 036D _ FF. 75, F0
        call    io_store_eflags                         ; 0370 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0375 _ 83. C4, 10
        nop                                             ; 0378 _ 90
        leave                                           ; 0379 _ C9
        ret                                             ; 037A _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 037B _ 55
        mov     ebp, esp                                ; 037C _ 89. E5
        sub     esp, 20                                 ; 037E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0381 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0384 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0387 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 038A _ 89. 45, F8
        jmp     ?_007                                   ; 038D _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 038F _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0392 _ 89. 45, FC
        jmp     ?_006                                   ; 0395 _ EB, 1F

?_005:  mov     eax, dword [ebp-8H]                     ; 0397 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 039A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 039E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 03A0 _ 8B. 45, FC
        add     eax, edx                                ; 03A3 _ 01. D0
        mov     edx, eax                                ; 03A5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 03A7 _ 8B. 45, 08
        add     edx, eax                                ; 03AA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03AC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03B0 _ 88. 02
        add     dword [ebp-4H], 1                       ; 03B2 _ 83. 45, FC, 01
?_006:  mov     eax, dword [ebp-4H]                     ; 03B6 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 03B9 _ 3B. 45, 1C
        jle     ?_005                                   ; 03BC _ 7E, D9
        add     dword [ebp-8H], 1                       ; 03BE _ 83. 45, F8, 01
?_007:  mov     eax, dword [ebp-8H]                     ; 03C2 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 03C5 _ 3B. 45, 20
        jle     ?_004                                   ; 03C8 _ 7E, C5
        nop                                             ; 03CA _ 90
        nop                                             ; 03CB _ 90
        leave                                           ; 03CC _ C9
        ret                                             ; 03CD _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 03CE _ 55
        mov     ebp, esp                                ; 03CF _ 89. E5
        sub     esp, 20                                 ; 03D1 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 03D4 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 03D7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 03DA _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 03E1 _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 03E6 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 03E9 _ 8B. 45, 1C
        add     eax, edx                                ; 03EC _ 01. D0
        movzx   eax, byte [eax]                         ; 03EE _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 03F1 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 03F4 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 03F8 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 03FA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03FD _ 8B. 45, FC
        add     eax, edx                                ; 0400 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0402 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0406 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0408 _ 8B. 45, 10
        add     eax, edx                                ; 040B _ 01. D0
        mov     edx, eax                                ; 040D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 040F _ 8B. 45, 08
        add     edx, eax                                ; 0412 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0414 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0418 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 041A _ 0F BE. 45, FB
        and     eax, 40H                                ; 041E _ 83. E0, 40
        test    eax, eax                                ; 0421 _ 85. C0
        jz      ?_010                                   ; 0423 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0425 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0428 _ 8B. 45, FC
        add     eax, edx                                ; 042B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 042D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0431 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0433 _ 8B. 45, 10
        add     eax, edx                                ; 0436 _ 01. D0
        lea     edx, [eax+1H]                           ; 0438 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 043B _ 8B. 45, 08
        add     edx, eax                                ; 043E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0440 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0444 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0446 _ 0F BE. 45, FB
        and     eax, 20H                                ; 044A _ 83. E0, 20
        test    eax, eax                                ; 044D _ 85. C0
        jz      ?_011                                   ; 044F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0451 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0454 _ 8B. 45, FC
        add     eax, edx                                ; 0457 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0459 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 045D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 045F _ 8B. 45, 10
        add     eax, edx                                ; 0462 _ 01. D0
        lea     edx, [eax+2H]                           ; 0464 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0467 _ 8B. 45, 08
        add     edx, eax                                ; 046A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 046C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0470 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0472 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0476 _ 83. E0, 10
        test    eax, eax                                ; 0479 _ 85. C0
        jz      ?_012                                   ; 047B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 047D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0480 _ 8B. 45, FC
        add     eax, edx                                ; 0483 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0485 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0489 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 048B _ 8B. 45, 10
        add     eax, edx                                ; 048E _ 01. D0
        lea     edx, [eax+3H]                           ; 0490 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0493 _ 8B. 45, 08
        add     edx, eax                                ; 0496 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0498 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 049C _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 049E _ 0F BE. 45, FB
        and     eax, 08H                                ; 04A2 _ 83. E0, 08
        test    eax, eax                                ; 04A5 _ 85. C0
        jz      ?_013                                   ; 04A7 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04A9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04AC _ 8B. 45, FC
        add     eax, edx                                ; 04AF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04B1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04B5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04B7 _ 8B. 45, 10
        add     eax, edx                                ; 04BA _ 01. D0
        lea     edx, [eax+4H]                           ; 04BC _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 04BF _ 8B. 45, 08
        add     edx, eax                                ; 04C2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04C4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04C8 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 04CA _ 0F BE. 45, FB
        and     eax, 04H                                ; 04CE _ 83. E0, 04
        test    eax, eax                                ; 04D1 _ 85. C0
        jz      ?_014                                   ; 04D3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04D5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04D8 _ 8B. 45, FC
        add     eax, edx                                ; 04DB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04DD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04E1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04E3 _ 8B. 45, 10
        add     eax, edx                                ; 04E6 _ 01. D0
        lea     edx, [eax+5H]                           ; 04E8 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 04EB _ 8B. 45, 08
        add     edx, eax                                ; 04EE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04F0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04F4 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 04F6 _ 0F BE. 45, FB
        and     eax, 02H                                ; 04FA _ 83. E0, 02
        test    eax, eax                                ; 04FD _ 85. C0
        jz      ?_015                                   ; 04FF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0501 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0504 _ 8B. 45, FC
        add     eax, edx                                ; 0507 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0509 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 050D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 050F _ 8B. 45, 10
        add     eax, edx                                ; 0512 _ 01. D0
        lea     edx, [eax+6H]                           ; 0514 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0517 _ 8B. 45, 08
        add     edx, eax                                ; 051A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 051C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0520 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0522 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0526 _ 83. E0, 01
        test    eax, eax                                ; 0529 _ 85. C0
        jz      ?_016                                   ; 052B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 052D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0530 _ 8B. 45, FC
        add     eax, edx                                ; 0533 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0535 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0539 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 053B _ 8B. 45, 10
        add     eax, edx                                ; 053E _ 01. D0
        lea     edx, [eax+7H]                           ; 0540 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0543 _ 8B. 45, 08
        add     edx, eax                                ; 0546 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0548 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 054C _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 054E _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 0552 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 0556 _ 0F 8E, FFFFFE8A
        nop                                             ; 055C _ 90
        nop                                             ; 055D _ 90
        leave                                           ; 055E _ C9
        ret                                             ; 055F _ C3
; showFont8 End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.0:                                            ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........