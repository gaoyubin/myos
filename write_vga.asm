; Disassembly of file: write_vga.o
; Fri Jul 14 14:51:58 2017
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 52                                 ; 0004 _ 83. EC, 34
        mov     dword [ebp-14H], 655360                 ; 0007 _ C7. 45, EC, 000A0000
        mov     dword [ebp-10H], 320                    ; 000E _ C7. 45, F0, 00000140
        mov     dword [ebp-0CH], 200                    ; 0015 _ C7. 45, F4, 000000C8
        call    init_palette                            ; 001C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 0021 _ 8B. 45, F4
        lea     edx, [eax-1DH]                          ; 0024 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0027 _ 8B. 45, F0
        sub     eax, 1                                  ; 002A _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 002D _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0031 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0035 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 003D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0045 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-10H]                    ; 004D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0050 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0054 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0057 _ 89. 04 24
        call    boxfill8                                ; 005A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 005F _ 8B. 45, F4
        lea     ecx, [eax-1CH]                          ; 0062 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 0065 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0068 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 006B _ 8B. 45, F4
        sub     eax, 28                                 ; 006E _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0071 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0075 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0079 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 007D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0085 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 008D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0090 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0094 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0097 _ 89. 04 24
        call    boxfill8                                ; 009A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 009F _ 8B. 45, F4
        lea     ecx, [eax-1BH]                          ; 00A2 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 00A5 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00A8 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 00AB _ 8B. 45, F4
        sub     eax, 27                                 ; 00AE _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00B1 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00B5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00B9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00BD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00C5 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 00CD _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00D0 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 00D4 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 00D7 _ 89. 04 24
        call    boxfill8                                ; 00DA _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 00DF _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 00E2 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 00E5 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00E8 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 00EB _ 8B. 45, F4
        sub     eax, 26                                 ; 00EE _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 00F1 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00F5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00F9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00FD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0105 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 010D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0110 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0114 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0117 _ 89. 04 24
        call    boxfill8                                ; 011A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 011F _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0122 _ 8D. 50, E8
        mov     eax, dword [ebp-0CH]                    ; 0125 _ 8B. 45, F4
        sub     eax, 24                                 ; 0128 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 012B _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 012F _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0137 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 013B _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0143 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 014B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 014E _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0152 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0155 _ 89. 04 24
        call    boxfill8                                ; 0158 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 015D _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 0160 _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 0163 _ 8B. 45, F4
        sub     eax, 24                                 ; 0166 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0169 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 016D _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0175 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0179 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0181 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0189 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 018C _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0190 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0193 _ 89. 04 24
        call    boxfill8                                ; 0196 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 019B _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 019E _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 01A1 _ 8B. 45, F4
        sub     eax, 4                                  ; 01A4 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01A7 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01AB _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01B3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01B7 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01BF _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 01C7 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01CA _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 01CE _ 8B. 45, EC
        mov     dword [esp], eax                        ; 01D1 _ 89. 04 24
        call    boxfill8                                ; 01D4 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 01D9 _ 8B. 45, F4
        lea     edx, [eax-5H]                           ; 01DC _ 8D. 50, FB
        mov     eax, dword [ebp-0CH]                    ; 01DF _ 8B. 45, F4
        sub     eax, 23                                 ; 01E2 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01E5 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01E9 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01F1 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 01F5 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 01FD _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0205 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0208 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 020C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 020F _ 89. 04 24
        call    boxfill8                                ; 0212 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 0217 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 021A _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 021D _ 8B. 45, F4
        sub     eax, 3                                  ; 0220 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0223 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0227 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 022F _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0233 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 023B _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0243 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0246 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 024A _ 8B. 45, EC
        mov     dword [esp], eax                        ; 024D _ 89. 04 24
        call    boxfill8                                ; 0250 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 0255 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0258 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 025B _ 8B. 45, F4
        sub     eax, 24                                 ; 025E _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0261 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0265 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 026D _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0271 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0279 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0281 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0284 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0288 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 028B _ 89. 04 24
        call    boxfill8                                ; 028E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 0293 _ 8B. 45, F4
        lea     ebx, [eax-18H]                          ; 0296 _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 0299 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 029C _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 029F _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 02A2 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 02A5 _ 8B. 45, F0
        sub     eax, 47                                 ; 02A8 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02AB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02AF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02B7 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02BB _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 02C3 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 02C6 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 02CA _ 8B. 45, EC
        mov     dword [esp], eax                        ; 02CD _ 89. 04 24
        call    boxfill8                                ; 02D0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 02D5 _ 8B. 45, F4
        lea     ebx, [eax-4H]                           ; 02D8 _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 02DB _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 02DE _ 8D. 48, D1
        mov     eax, dword [ebp-0CH]                    ; 02E1 _ 8B. 45, F4
        lea     edx, [eax-17H]                          ; 02E4 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 02E7 _ 8B. 45, F0
        sub     eax, 47                                 ; 02EA _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02ED _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02F1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02F5 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02F9 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02FD _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0305 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0308 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 030C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 030F _ 89. 04 24
        call    boxfill8                                ; 0312 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 0317 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 031A _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 031D _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0320 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 0323 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0326 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 0329 _ 8B. 45, F0
        sub     eax, 47                                 ; 032C _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 032F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0333 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0337 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 033B _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 033F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0347 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 034A _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 034E _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0351 _ 89. 04 24
        call    boxfill8                                ; 0354 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 0359 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 035C _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 035F _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0362 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 0365 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0368 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 036B _ 8B. 45, F0
        sub     eax, 3                                  ; 036E _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0371 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0375 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0379 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 037D _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0381 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0389 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 038C _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0390 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0393 _ 89. 04 24
        call    boxfill8                                ; 0396 _ E8, FFFFFFFC(rel)
?_001:  call    io_hlt                                  ; 039B _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 03A0 _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 03A2 _ 55
        mov     ebp, esp                                ; 03A3 _ 89. E5
        sub     esp, 24                                 ; 03A5 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1393          ; 03A8 _ C7. 44 24, 08, 00000000(d)
        mov     dword [esp+4H], 15                      ; 03B0 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 03B8 _ C7. 04 24, 00000000
        call    set_palette                             ; 03BF _ E8, FFFFFFFC(rel)
        nop                                             ; 03C4 _ 90
        leave                                           ; 03C5 _ C9
        ret                                             ; 03C6 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 03C7 _ 55
        mov     ebp, esp                                ; 03C8 _ 89. E5
        sub     esp, 40                                 ; 03CA _ 83. EC, 28
        call    io_load_eflags                          ; 03CD _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 03D2 _ 89. 45, F4
        call    io_cli                                  ; 03D5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 03DA _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 03DD _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 03E1 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 03E8 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 03ED _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 03F0 _ 89. 45, F0
        jmp     ?_003                                   ; 03F3 _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 03F5 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 03F8 _ 0F B6. 00
        shr     al, 2                                   ; 03FB _ C0. E8, 02
        movzx   eax, al                                 ; 03FE _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0401 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0405 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 040C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0411 _ 8B. 45, 10
        add     eax, 1                                  ; 0414 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0417 _ 0F B6. 00
        shr     al, 2                                   ; 041A _ C0. E8, 02
        movzx   eax, al                                 ; 041D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0420 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0424 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 042B _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0430 _ 8B. 45, 10
        add     eax, 2                                  ; 0433 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0436 _ 0F B6. 00
        shr     al, 2                                   ; 0439 _ C0. E8, 02
        movzx   eax, al                                 ; 043C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 043F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0443 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 044A _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 044F _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0453 _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 0457 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 045A _ 3B. 45, 0C
        jle     ?_002                                   ; 045D _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 045F _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0462 _ 89. 04 24
        call    io_store_eflags                         ; 0465 _ E8, FFFFFFFC(rel)
        nop                                             ; 046A _ 90
        leave                                           ; 046B _ C9
        ret                                             ; 046C _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 046D _ 55
        mov     ebp, esp                                ; 046E _ 89. E5
        sub     esp, 20                                 ; 0470 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0473 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0476 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0479 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 047C _ 89. 45, FC
        jmp     ?_007                                   ; 047F _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 0481 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0484 _ 89. 45, F8
        jmp     ?_006                                   ; 0487 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 0489 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 048C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0490 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0492 _ 8B. 45, F8
        add     eax, edx                                ; 0495 _ 01. D0
        mov     edx, eax                                ; 0497 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0499 _ 8B. 45, 08
        add     edx, eax                                ; 049C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 049E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04A2 _ 88. 02
        add     dword [ebp-8H], 1                       ; 04A4 _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 04A8 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 04AB _ 3B. 45, 1C
        jle     ?_005                                   ; 04AE _ 7E, D9
        add     dword [ebp-4H], 1                       ; 04B0 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 04B4 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 04B7 _ 3B. 45, 20
        jle     ?_004                                   ; 04BA _ 7E, C5
        leave                                           ; 04BC _ C9
        ret                                             ; 04BD _ C3
; boxfill8 End of function



table_rgb.1393:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........




