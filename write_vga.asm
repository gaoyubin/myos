; Disassembly of file: write_vga.o
; Fri Jul 14 20:13:42 2017
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        mov     dword [ebp-1CH], 655360                 ; 0007 _ C7. 45, E4, 000A0000
        mov     dword [ebp-18H], 320                    ; 000E _ C7. 45, E8, 00000140
        mov     dword [ebp-14H], 200                    ; 0015 _ C7. 45, EC, 000000C8
        mov     dword [ebp-10H], 0                      ; 001C _ C7. 45, F0, 00000000
        call    init_palette                            ; 0023 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0028 _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 002B _ 8D. 50, E3
        mov     eax, dword [ebp-18H]                    ; 002E _ 8B. 45, E8
        sub     eax, 1                                  ; 0031 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0034 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0038 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 003C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0044 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 004C _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-18H]                    ; 0054 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0057 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 005B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 005E _ 89. 04 24
        call    boxfill8                                ; 0061 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0066 _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 0069 _ 8D. 48, E4
        mov     eax, dword [ebp-18H]                    ; 006C _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 006F _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0072 _ 8B. 45, EC
        sub     eax, 28                                 ; 0075 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0078 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 007C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0080 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0084 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 008C _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 0094 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0097 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 009B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 009E _ 89. 04 24
        call    boxfill8                                ; 00A1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00A6 _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 00A9 _ 8D. 48, E5
        mov     eax, dword [ebp-18H]                    ; 00AC _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 00AF _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00B2 _ 8B. 45, EC
        sub     eax, 27                                 ; 00B5 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00B8 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00BC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00C0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00C4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00CC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 00D4 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 00D7 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 00DB _ 8B. 45, E4
        mov     dword [esp], eax                        ; 00DE _ 89. 04 24
        call    boxfill8                                ; 00E1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00E6 _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00E9 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 00EC _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 00EF _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00F2 _ 8B. 45, EC
        sub     eax, 26                                 ; 00F5 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 00F8 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00FC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0100 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0104 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 010C _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 0114 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0117 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 011B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 011E _ 89. 04 24
        call    boxfill8                                ; 0121 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0126 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0129 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 012C _ 8B. 45, EC
        sub     eax, 24                                 ; 012F _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0132 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0136 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 013E _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0142 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 014A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 0152 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0155 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0159 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 015C _ 89. 04 24
        call    boxfill8                                ; 015F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0164 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 0167 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 016A _ 8B. 45, EC
        sub     eax, 24                                 ; 016D _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0170 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0174 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 017C _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0180 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0188 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 0190 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0193 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0197 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 019A _ 89. 04 24
        call    boxfill8                                ; 019D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01A2 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01A5 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01A8 _ 8B. 45, EC
        sub     eax, 4                                  ; 01AB _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01AE _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01B2 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01BA _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01BE _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01C6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 01CE _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 01D1 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 01D5 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 01D8 _ 89. 04 24
        call    boxfill8                                ; 01DB _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01E0 _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01E3 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 01E6 _ 8B. 45, EC
        sub     eax, 23                                 ; 01E9 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01EC _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01F0 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01F8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 01FC _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0204 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 020C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 020F _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0213 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0216 _ 89. 04 24
        call    boxfill8                                ; 0219 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 021E _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0221 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0224 _ 8B. 45, EC
        sub     eax, 3                                  ; 0227 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 022A _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 022E _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0236 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 023A _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0242 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 024A _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 024D _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0251 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0254 _ 89. 04 24
        call    boxfill8                                ; 0257 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 025C _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 025F _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0262 _ 8B. 45, EC
        sub     eax, 24                                 ; 0265 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0268 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 026C _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0274 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0278 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0280 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 0288 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 028B _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 028F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0292 _ 89. 04 24
        call    boxfill8                                ; 0295 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 029A _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 029D _ 8D. 58, E8
        mov     eax, dword [ebp-18H]                    ; 02A0 _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 02A3 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 02A6 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 02A9 _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 02AC _ 8B. 45, E8
        sub     eax, 47                                 ; 02AF _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02B2 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02B6 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02BA _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02BE _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02C2 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 02CA _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 02CD _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 02D1 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 02D4 _ 89. 04 24
        call    boxfill8                                ; 02D7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02DC _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 02DF _ 8D. 58, FC
        mov     eax, dword [ebp-18H]                    ; 02E2 _ 8B. 45, E8
        lea     ecx, [eax-2FH]                          ; 02E5 _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 02E8 _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 02EB _ 8D. 50, E9
        mov     eax, dword [ebp-18H]                    ; 02EE _ 8B. 45, E8
        sub     eax, 47                                 ; 02F1 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02F4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02F8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02FC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0300 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0304 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 030C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 030F _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0313 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0316 _ 89. 04 24
        call    boxfill8                                ; 0319 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 031E _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0321 _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0324 _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 0327 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 032A _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 032D _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 0330 _ 8B. 45, E8
        sub     eax, 47                                 ; 0333 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0336 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 033A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 033E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0342 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0346 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 034E _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0351 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0355 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0358 _ 89. 04 24
        call    boxfill8                                ; 035B _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0360 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0363 _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0366 _ 8B. 45, E8
        lea     ecx, [eax-3H]                           ; 0369 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 036C _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 036F _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 0372 _ 8B. 45, E8
        sub     eax, 3                                  ; 0375 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0378 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 037C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0380 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0384 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0388 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 0390 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0393 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0397 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 039A _ 89. 04 24
        call    boxfill8                                ; 039D _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 14                      ; 03A2 _ C7. 44 24, 04, 0000000E
        mov     dword [esp], mcursor                    ; 03AA _ C7. 04 24, 00000000(d)
        call    init_mouse_cursor                       ; 03B1 _ E8, FFFFFFFC(rel)
        mov     dword [esp+1CH], 16                     ; 03B6 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], mcursor                ; 03BE _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], 80                     ; 03C6 _ C7. 44 24, 14, 00000050
        mov     dword [esp+10H], 80                     ; 03CE _ C7. 44 24, 10, 00000050
        mov     dword [esp+0CH], 16                     ; 03D6 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 03DE _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-18H]                    ; 03E6 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 03E9 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 03ED _ 8B. 45, E4
        mov     dword [esp], eax                        ; 03F0 _ 89. 04 24
        call    putblock                                ; 03F3 _ E8, FFFFFFFC(rel)
?_001:  mov     eax, dword [?_039]                      ; 03F8 _ A1, 00000128(d)
        test    eax, eax                                ; 03FD _ 85. C0
        jle     ?_002                                   ; 03FF _ 0F 8E, 00000092
        mov     eax, dword [?_037]                      ; 0405 _ A1, 00000120(d)
        movzx   eax, byte [keybuf+eax]                  ; 040A _ 0F B6. 80, 00000100(d)
        movzx   eax, al                                 ; 0411 _ 0F B6. C0
        mov     dword [ebp-10H], eax                    ; 0414 _ 89. 45, F0
        mov     eax, dword [?_037]                      ; 0417 _ A1, 00000120(d)
        lea     edx, [eax+1H]                           ; 041C _ 8D. 50, 01
        mov     eax, edx                                ; 041F _ 89. D0
        sar     eax, 31                                 ; 0421 _ C1. F8, 1F
        shr     eax, 27                                 ; 0424 _ C1. E8, 1B
        add     edx, eax                                ; 0427 _ 01. C2
        and     edx, 1FH                                ; 0429 _ 83. E2, 1F
        sub     edx, eax                                ; 042C _ 29. C2
        mov     eax, edx                                ; 042E _ 89. D0
        mov     dword [?_037], eax                      ; 0430 _ A3, 00000120(d)
        mov     eax, dword [?_039]                      ; 0435 _ A1, 00000128(d)
        sub     eax, 1                                  ; 043A _ 83. E8, 01
        mov     dword [?_039], eax                      ; 043D _ A3, 00000128(d)
        mov     eax, dword [ebp-10H]                    ; 0442 _ 8B. 45, F0
        movzx   eax, al                                 ; 0445 _ 0F B6. C0
        mov     dword [esp], eax                        ; 0448 _ 89. 04 24
        call    charToHexStr                            ; 044B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0450 _ 89. 45, F4
        mov     eax, dword [showPos.1429]               ; 0453 _ A1, 0000012C(d)
        mov     edx, dword [ebp-0CH]                    ; 0458 _ 8B. 55, F4
        mov     dword [esp+14H], edx                    ; 045B _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 045F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 0467 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], eax                     ; 046F _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 0473 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0476 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 047A _ 8B. 45, E4
        mov     dword [esp], eax                        ; 047D _ 89. 04 24
        call    showString                              ; 0480 _ E8, FFFFFFFC(rel)
        mov     eax, dword [showPos.1429]               ; 0485 _ A1, 0000012C(d)
        add     eax, 32                                 ; 048A _ 83. C0, 20
        mov     dword [showPos.1429], eax               ; 048D _ A3, 0000012C(d)
        jmp     ?_001                                   ; 0492 _ E9, FFFFFF61

?_002:  jmp     ?_001                                   ; 0497 _ E9, FFFFFF5C
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 049C _ 55
        mov     ebp, esp                                ; 049D _ 89. E5
        sub     esp, 24                                 ; 049F _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1436          ; 04A2 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 04AA _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 04B2 _ C7. 04 24, 00000000
        call    set_palette                             ; 04B9 _ E8, FFFFFFFC(rel)
        nop                                             ; 04BE _ 90
        leave                                           ; 04BF _ C9
        ret                                             ; 04C0 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 04C1 _ 55
        mov     ebp, esp                                ; 04C2 _ 89. E5
        sub     esp, 40                                 ; 04C4 _ 83. EC, 28
        call    io_load_eflags                          ; 04C7 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 04CC _ 89. 45, F4
        call    io_cli                                  ; 04CF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 04D4 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 04D7 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 04DB _ C7. 04 24, 000003C8
        call    io_out8                                 ; 04E2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 04E7 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 04EA _ 89. 45, F0
        jmp     ?_004                                   ; 04ED _ EB, 62

?_003:  mov     eax, dword [ebp+10H]                    ; 04EF _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 04F2 _ 0F B6. 00
        shr     al, 2                                   ; 04F5 _ C0. E8, 02
        movzx   eax, al                                 ; 04F8 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04FB _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04FF _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0506 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 050B _ 8B. 45, 10
        add     eax, 1                                  ; 050E _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0511 _ 0F B6. 00
        shr     al, 2                                   ; 0514 _ C0. E8, 02
        movzx   eax, al                                 ; 0517 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 051A _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 051E _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0525 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 052A _ 8B. 45, 10
        add     eax, 2                                  ; 052D _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0530 _ 0F B6. 00
        shr     al, 2                                   ; 0533 _ C0. E8, 02
        movzx   eax, al                                 ; 0536 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0539 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 053D _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0544 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 0549 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 054D _ 83. 45, F0, 01
?_004:  mov     eax, dword [ebp-10H]                    ; 0551 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0554 _ 3B. 45, 0C
        jle     ?_003                                   ; 0557 _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 0559 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 055C _ 89. 04 24
        call    io_store_eflags                         ; 055F _ E8, FFFFFFFC(rel)
        nop                                             ; 0564 _ 90
        leave                                           ; 0565 _ C9
        ret                                             ; 0566 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0567 _ 55
        mov     ebp, esp                                ; 0568 _ 89. E5
        sub     esp, 20                                 ; 056A _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 056D _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0570 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0573 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0576 _ 89. 45, FC
        jmp     ?_008                                   ; 0579 _ EB, 33

?_005:  mov     eax, dword [ebp+14H]                    ; 057B _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 057E _ 89. 45, F8
        jmp     ?_007                                   ; 0581 _ EB, 1F

?_006:  mov     eax, dword [ebp-4H]                     ; 0583 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0586 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 058A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 058C _ 8B. 45, F8
        add     eax, edx                                ; 058F _ 01. D0
        mov     edx, eax                                ; 0591 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0593 _ 8B. 45, 08
        add     edx, eax                                ; 0596 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0598 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 059C _ 88. 02
        add     dword [ebp-8H], 1                       ; 059E _ 83. 45, F8, 01
?_007:  mov     eax, dword [ebp-8H]                     ; 05A2 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 05A5 _ 3B. 45, 1C
        jle     ?_006                                   ; 05A8 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 05AA _ 83. 45, FC, 01
?_008:  mov     eax, dword [ebp-4H]                     ; 05AE _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 05B1 _ 3B. 45, 20
        jle     ?_005                                   ; 05B4 _ 7E, C5
        leave                                           ; 05B6 _ C9
        ret                                             ; 05B7 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 05B8 _ 55
        mov     ebp, esp                                ; 05B9 _ 89. E5
        sub     esp, 20                                 ; 05BB _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 05BE _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 05C1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 05C4 _ C7. 45, FC, 00000000
        jmp     ?_018                                   ; 05CB _ E9, 0000016C

?_009:  mov     edx, dword [ebp-4H]                     ; 05D0 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 05D3 _ 8B. 45, 1C
        add     eax, edx                                ; 05D6 _ 01. D0
        movzx   eax, byte [eax]                         ; 05D8 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 05DB _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 05DE _ 80. 7D, FB, 00
        jns     ?_010                                   ; 05E2 _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 05E4 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 05E7 _ 8B. 55, 14
        add     eax, edx                                ; 05EA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05EC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05F0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05F2 _ 8B. 45, 10
        add     eax, edx                                ; 05F5 _ 01. D0
        mov     edx, eax                                ; 05F7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05F9 _ 8B. 45, 08
        add     edx, eax                                ; 05FC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05FE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0602 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0604 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0608 _ 83. E0, 40
        test    eax, eax                                ; 060B _ 85. C0
        jz      ?_011                                   ; 060D _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 060F _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0612 _ 8B. 55, 14
        add     eax, edx                                ; 0615 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0617 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 061B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 061D _ 8B. 45, 10
        add     eax, edx                                ; 0620 _ 01. D0
        lea     edx, [eax+1H]                           ; 0622 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0625 _ 8B. 45, 08
        add     edx, eax                                ; 0628 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 062A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 062E _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0630 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0634 _ 83. E0, 20
        test    eax, eax                                ; 0637 _ 85. C0
        jz      ?_012                                   ; 0639 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 063B _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 063E _ 8B. 55, 14
        add     eax, edx                                ; 0641 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0643 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0647 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0649 _ 8B. 45, 10
        add     eax, edx                                ; 064C _ 01. D0
        lea     edx, [eax+2H]                           ; 064E _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0651 _ 8B. 45, 08
        add     edx, eax                                ; 0654 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0656 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 065A _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 065C _ 0F BE. 45, FB
        and     eax, 10H                                ; 0660 _ 83. E0, 10
        test    eax, eax                                ; 0663 _ 85. C0
        jz      ?_013                                   ; 0665 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0667 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 066A _ 8B. 55, 14
        add     eax, edx                                ; 066D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 066F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0673 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0675 _ 8B. 45, 10
        add     eax, edx                                ; 0678 _ 01. D0
        lea     edx, [eax+3H]                           ; 067A _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 067D _ 8B. 45, 08
        add     edx, eax                                ; 0680 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0682 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0686 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0688 _ 0F BE. 45, FB
        and     eax, 08H                                ; 068C _ 83. E0, 08
        test    eax, eax                                ; 068F _ 85. C0
        jz      ?_014                                   ; 0691 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0693 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0696 _ 8B. 55, 14
        add     eax, edx                                ; 0699 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 069B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 069F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06A1 _ 8B. 45, 10
        add     eax, edx                                ; 06A4 _ 01. D0
        lea     edx, [eax+4H]                           ; 06A6 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 06A9 _ 8B. 45, 08
        add     edx, eax                                ; 06AC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06AE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06B2 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 06B4 _ 0F BE. 45, FB
        and     eax, 04H                                ; 06B8 _ 83. E0, 04
        test    eax, eax                                ; 06BB _ 85. C0
        jz      ?_015                                   ; 06BD _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06BF _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06C2 _ 8B. 55, 14
        add     eax, edx                                ; 06C5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06C7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06CB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06CD _ 8B. 45, 10
        add     eax, edx                                ; 06D0 _ 01. D0
        lea     edx, [eax+5H]                           ; 06D2 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 06D5 _ 8B. 45, 08
        add     edx, eax                                ; 06D8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06DA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06DE _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06E0 _ 0F BE. 45, FB
        and     eax, 02H                                ; 06E4 _ 83. E0, 02
        test    eax, eax                                ; 06E7 _ 85. C0
        jz      ?_016                                   ; 06E9 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06EB _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06EE _ 8B. 55, 14
        add     eax, edx                                ; 06F1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06F3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06F7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06F9 _ 8B. 45, 10
        add     eax, edx                                ; 06FC _ 01. D0
        lea     edx, [eax+6H]                           ; 06FE _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0701 _ 8B. 45, 08
        add     edx, eax                                ; 0704 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0706 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 070A _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 070C _ 0F BE. 45, FB
        and     eax, 01H                                ; 0710 _ 83. E0, 01
        test    eax, eax                                ; 0713 _ 85. C0
        jz      ?_017                                   ; 0715 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0717 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 071A _ 8B. 55, 14
        add     eax, edx                                ; 071D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 071F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0723 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0725 _ 8B. 45, 10
        add     eax, edx                                ; 0728 _ 01. D0
        lea     edx, [eax+7H]                           ; 072A _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 072D _ 8B. 45, 08
        add     edx, eax                                ; 0730 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0732 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0736 _ 88. 02
?_017:  add     dword [ebp-4H], 1                       ; 0738 _ 83. 45, FC, 01
?_018:  cmp     dword [ebp-4H], 15                      ; 073C _ 83. 7D, FC, 0F
        jle     ?_009                                   ; 0740 _ 0F 8E, FFFFFE8A
        leave                                           ; 0746 _ C9
        ret                                             ; 0747 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0748 _ 55
        mov     ebp, esp                                ; 0749 _ 89. E5
        sub     esp, 20                                 ; 074B _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 074E _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0751 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0754 _ C7. 45, FC, 00000000
        jmp     ?_025                                   ; 075B _ E9, 000000B1

?_019:  mov     dword [ebp-8H], 0                       ; 0760 _ C7. 45, F8, 00000000
        jmp     ?_024                                   ; 0767 _ E9, 00000097

?_020:  mov     eax, dword [ebp-4H]                     ; 076C _ 8B. 45, FC
        shl     eax, 4                                  ; 076F _ C1. E0, 04
        mov     edx, eax                                ; 0772 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0774 _ 8B. 45, F8
        add     eax, edx                                ; 0777 _ 01. D0
        add     eax, cursor.1485                        ; 0779 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 077E _ 0F B6. 00
        cmp     al, 42                                  ; 0781 _ 3C, 2A
        jnz     ?_021                                   ; 0783 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0785 _ 8B. 45, FC
        shl     eax, 4                                  ; 0788 _ C1. E0, 04
        mov     edx, eax                                ; 078B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 078D _ 8B. 45, F8
        add     eax, edx                                ; 0790 _ 01. D0
        mov     edx, eax                                ; 0792 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0794 _ 8B. 45, 08
        add     eax, edx                                ; 0797 _ 01. D0
        mov     byte [eax], 0                           ; 0799 _ C6. 00, 00
?_021:  mov     eax, dword [ebp-4H]                     ; 079C _ 8B. 45, FC
        shl     eax, 4                                  ; 079F _ C1. E0, 04
        mov     edx, eax                                ; 07A2 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07A4 _ 8B. 45, F8
        add     eax, edx                                ; 07A7 _ 01. D0
        add     eax, cursor.1485                        ; 07A9 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07AE _ 0F B6. 00
        cmp     al, 79                                  ; 07B1 _ 3C, 4F
        jnz     ?_022                                   ; 07B3 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 07B5 _ 8B. 45, FC
        shl     eax, 4                                  ; 07B8 _ C1. E0, 04
        mov     edx, eax                                ; 07BB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07BD _ 8B. 45, F8
        add     eax, edx                                ; 07C0 _ 01. D0
        mov     edx, eax                                ; 07C2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07C4 _ 8B. 45, 08
        add     eax, edx                                ; 07C7 _ 01. D0
        mov     byte [eax], 7                           ; 07C9 _ C6. 00, 07
?_022:  mov     eax, dword [ebp-4H]                     ; 07CC _ 8B. 45, FC
        shl     eax, 4                                  ; 07CF _ C1. E0, 04
        mov     edx, eax                                ; 07D2 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07D4 _ 8B. 45, F8
        add     eax, edx                                ; 07D7 _ 01. D0
        add     eax, cursor.1485                        ; 07D9 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07DE _ 0F B6. 00
        cmp     al, 46                                  ; 07E1 _ 3C, 2E
        jnz     ?_023                                   ; 07E3 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 07E5 _ 8B. 45, FC
        shl     eax, 4                                  ; 07E8 _ C1. E0, 04
        mov     edx, eax                                ; 07EB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07ED _ 8B. 45, F8
        add     eax, edx                                ; 07F0 _ 01. D0
        mov     edx, eax                                ; 07F2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07F4 _ 8B. 45, 08
        add     edx, eax                                ; 07F7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07F9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07FD _ 88. 02
?_023:  add     dword [ebp-8H], 1                       ; 07FF _ 83. 45, F8, 01
?_024:  cmp     dword [ebp-8H], 15                      ; 0803 _ 83. 7D, F8, 0F
        jle     ?_020                                   ; 0807 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 080D _ 83. 45, FC, 01
?_025:  cmp     dword [ebp-4H], 15                      ; 0811 _ 83. 7D, FC, 0F
        jle     ?_019                                   ; 0815 _ 0F 8E, FFFFFF45
        leave                                           ; 081B _ C9
        ret                                             ; 081C _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 081D _ 55
        mov     ebp, esp                                ; 081E _ 89. E5
        sub     esp, 16                                 ; 0820 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0823 _ C7. 45, FC, 00000000
        jmp     ?_029                                   ; 082A _ EB, 50

?_026:  mov     dword [ebp-8H], 0                       ; 082C _ C7. 45, F8, 00000000
        jmp     ?_028                                   ; 0833 _ EB, 3B

?_027:  mov     eax, dword [ebp-4H]                     ; 0835 _ 8B. 45, FC
        mov     edx, dword [ebp+1CH]                    ; 0838 _ 8B. 55, 1C
        add     eax, edx                                ; 083B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 083D _ 0F AF. 45, 0C
        mov     edx, dword [ebp-8H]                     ; 0841 _ 8B. 55, F8
        mov     ecx, dword [ebp+18H]                    ; 0844 _ 8B. 4D, 18
        add     edx, ecx                                ; 0847 _ 01. CA
        add     eax, edx                                ; 0849 _ 01. D0
        mov     edx, eax                                ; 084B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 084D _ 8B. 45, 08
        add     edx, eax                                ; 0850 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 0852 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 0855 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 0859 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 085B _ 8B. 45, F8
        add     eax, ecx                                ; 085E _ 01. C8
        mov     ecx, eax                                ; 0860 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0862 _ 8B. 45, 20
        add     eax, ecx                                ; 0865 _ 01. C8
        movzx   eax, byte [eax]                         ; 0867 _ 0F B6. 00
        mov     byte [edx], al                          ; 086A _ 88. 02
        add     dword [ebp-8H], 1                       ; 086C _ 83. 45, F8, 01
?_028:  mov     eax, dword [ebp-8H]                     ; 0870 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0873 _ 3B. 45, 10
        jl      ?_027                                   ; 0876 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0878 _ 83. 45, FC, 01
?_029:  mov     eax, dword [ebp-4H]                     ; 087C _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 087F _ 3B. 45, 14
        jl      ?_026                                   ; 0882 _ 7C, A8
        leave                                           ; 0884 _ C9
        ret                                             ; 0885 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0886 _ 55
        mov     ebp, esp                                ; 0887 _ 89. E5
        sub     esp, 40                                 ; 0889 _ 83. EC, 28
        mov     dword [ebp-14H], 655360                 ; 088C _ C7. 45, EC, 000A0000
        mov     dword [ebp-10H], 320                    ; 0893 _ C7. 45, F0, 00000140
        mov     dword [ebp-0CH], 200                    ; 089A _ C7. 45, F4, 000000C8
        mov     dword [esp+4H], 33                      ; 08A1 _ C7. 44 24, 04, 00000021
        mov     dword [esp], 32                         ; 08A9 _ C7. 04 24, 00000020
        call    io_out8                                 ; 08B0 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], 0                       ; 08B5 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 08B9 _ C7. 04 24, 00000060
        call    io_in8                                  ; 08C0 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 08C5 _ 88. 45, EB
        mov     eax, dword [?_039]                      ; 08C8 _ A1, 00000128(d)
        cmp     eax, 31                                 ; 08CD _ 83. F8, 1F
        jg      ?_030                                   ; 08D0 _ 7F, 3A
        mov     eax, dword [?_038]                      ; 08D2 _ A1, 00000124(d)
        movzx   edx, byte [ebp-15H]                     ; 08D7 _ 0F B6. 55, EB
        mov     byte [keybuf+eax], dl                   ; 08DB _ 88. 90, 00000100(d)
        mov     eax, dword [?_039]                      ; 08E1 _ A1, 00000128(d)
        add     eax, 1                                  ; 08E6 _ 83. C0, 01
        mov     dword [?_039], eax                      ; 08E9 _ A3, 00000128(d)
        mov     eax, dword [?_038]                      ; 08EE _ A1, 00000124(d)
        lea     edx, [eax+1H]                           ; 08F3 _ 8D. 50, 01
        mov     eax, edx                                ; 08F6 _ 89. D0
        sar     eax, 31                                 ; 08F8 _ C1. F8, 1F
        shr     eax, 27                                 ; 08FB _ C1. E8, 1B
        add     edx, eax                                ; 08FE _ 01. C2
        and     edx, 1FH                                ; 0900 _ 83. E2, 1F
        sub     edx, eax                                ; 0903 _ 29. C2
        mov     eax, edx                                ; 0905 _ 89. D0
        mov     dword [?_038], eax                      ; 0907 _ A3, 00000124(d)
?_030:  leave                                           ; 090C _ C9
        ret                                             ; 090D _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 090E _ 55
        mov     ebp, esp                                ; 090F _ 89. E5
        sub     esp, 4                                  ; 0911 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0914 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0917 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 091A _ 80. 7D, FC, 09
        jle     ?_031                                   ; 091E _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0920 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0924 _ 83. C0, 37
        jmp     ?_032                                   ; 0927 _ EB, 07

?_031:  movzx   eax, byte [ebp-4H]                      ; 0929 _ 0F B6. 45, FC
        add     eax, 48                                 ; 092D _ 83. C0, 30
?_032:  leave                                           ; 0930 _ C9
        ret                                             ; 0931 _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0932 _ 55
        mov     ebp, esp                                ; 0933 _ 89. E5
        sub     esp, 24                                 ; 0935 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0938 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 093B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 093E _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0945 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0949 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 094C _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 094F _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0953 _ 89. 04 24
        call    charToHexVal                            ; 0956 _ E8, FFFFFFFC(rel)
        mov     byte [?_036], al                        ; 095B _ A2, 00000013(d)
        movzx   eax, byte [ebp-14H]                     ; 0960 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0964 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0967 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 096A _ 0F B6. 45, EC
        movsx   eax, al                                 ; 096E _ 0F BE. C0
        mov     dword [esp], eax                        ; 0971 _ 89. 04 24
        call    charToHexVal                            ; 0974 _ E8, FFFFFFFC(rel)
        mov     byte [?_035], al                        ; 0979 _ A2, 00000012(d)
        mov     eax, keyval                             ; 097E _ B8, 00000010(d)
        leave                                           ; 0983 _ C9
        ret                                             ; 0984 _ C3
; charToHexStr End of function

showString:; Function begin
        push    ebp                                     ; 0985 _ 55
        mov     ebp, esp                                ; 0986 _ 89. E5
        sub     esp, 28                                 ; 0988 _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 098B _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 098E _ 88. 45, FC
        jmp     ?_034                                   ; 0991 _ EB, 46

?_033:  mov     eax, dword [ebp+1CH]                    ; 0993 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0996 _ 0F B6. 00
        movzx   eax, al                                 ; 0999 _ 0F B6. C0
        shl     eax, 4                                  ; 099C _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 099F _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 09A5 _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 09A9 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 09AD _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 09B1 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 09B4 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 09B8 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 09BB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 09BF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 09C2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 09C6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 09C9 _ 89. 04 24
        call    showFont8                               ; 09CC _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 09D1 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 09D5 _ 83. 45, 1C, 01
?_034:  mov     eax, dword [ebp+1CH]                    ; 09D9 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 09DC _ 0F B6. 00
        test    al, al                                  ; 09DF _ 84. C0
        jnz     ?_033                                   ; 09E1 _ 75, B0
        leave                                           ; 09E3 _ C9
        ret                                             ; 09E4 _ C3
; showString End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0010 _ 0X

?_035:  db 00H                                          ; 0012 _ .

?_036:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1436:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1485:                                            ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0060 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0068 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0070 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0078 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0080 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 00E0 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 00F0 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0108 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0118 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0128 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0138 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0148 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0158 _ .....***



mcursor:                                                ; byte
        resb    256                                     ; 0000

keybuf:                                                 ; byte
        resb    32                                      ; 0100

?_037:  resd    1                                       ; 0120

?_038:  resd    1                                       ; 0124

?_039:  resd    1                                       ; 0128

showPos.1429:                                           ; dword
        resd    1                                       ; 012C


