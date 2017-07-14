; Disassembly of file: write_vga.o
; Fri Jul 14 17:35:55 2017
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
        mov     dword [esp+14H], systemFont+410H        ; 039B _ C7. 44 24, 14, 00000410(d)
        mov     dword [esp+10H], 7                      ; 03A3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03AB _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 8                       ; 03B3 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 03BB _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03BE _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 03C2 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 03C5 _ 89. 04 24
        call    showFont8                               ; 03C8 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+420H        ; 03CD _ C7. 44 24, 14, 00000420(d)
        mov     dword [esp+10H], 7                      ; 03D5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03DD _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 16                      ; 03E5 _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-10H]                    ; 03ED _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03F0 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 03F4 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 03F7 _ 89. 04 24
        call    showFont8                               ; 03FA _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+430H        ; 03FF _ C7. 44 24, 14, 00000430(d)
        mov     dword [esp+10H], 7                      ; 0407 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 040F _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 24                      ; 0417 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-10H]                    ; 041F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0422 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0426 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0429 _ 89. 04 24
        call    showFont8                               ; 042C _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+310H        ; 0431 _ C7. 44 24, 14, 00000310(d)
        mov     dword [esp+10H], 7                      ; 0439 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 0441 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 32                      ; 0449 _ C7. 44 24, 08, 00000020
        mov     eax, dword [ebp-10H]                    ; 0451 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0454 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0458 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 045B _ 89. 04 24
        call    showFont8                               ; 045E _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+320H        ; 0463 _ C7. 44 24, 14, 00000320(d)
        mov     dword [esp+10H], 7                      ; 046B _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 0473 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 40                      ; 047B _ C7. 44 24, 08, 00000028
        mov     eax, dword [ebp-10H]                    ; 0483 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0486 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 048A _ 8B. 45, EC
        mov     dword [esp], eax                        ; 048D _ 89. 04 24
        call    showFont8                               ; 0490 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+330H        ; 0495 _ C7. 44 24, 14, 00000330(d)
        mov     dword [esp+10H], 7                      ; 049D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 04A5 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 48                      ; 04AD _ C7. 44 24, 08, 00000030
        mov     eax, dword [ebp-10H]                    ; 04B5 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 04B8 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 04BC _ 8B. 45, EC
        mov     dword [esp], eax                        ; 04BF _ 89. 04 24
        call    showFont8                               ; 04C2 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 14                      ; 04C7 _ C7. 44 24, 04, 0000000E
        mov     dword [esp], mcursor                    ; 04CF _ C7. 04 24, 00000000(d)
        call    init_mouse_cursor                       ; 04D6 _ E8, FFFFFFFC(rel)
        mov     dword [esp+1CH], 16                     ; 04DB _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], mcursor                ; 04E3 _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], 80                     ; 04EB _ C7. 44 24, 14, 00000050
        mov     dword [esp+10H], 80                     ; 04F3 _ C7. 44 24, 10, 00000050
        mov     dword [esp+0CH], 16                     ; 04FB _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0503 _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-10H]                    ; 050B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 050E _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0512 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0515 _ 89. 04 24
        call    putblock                                ; 0518 _ E8, FFFFFFFC(rel)
?_001:  call    io_hlt                                  ; 051D _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0522 _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 0524 _ 55
        mov     ebp, esp                                ; 0525 _ 89. E5
        sub     esp, 24                                 ; 0527 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1415          ; 052A _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0532 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 053A _ C7. 04 24, 00000000
        call    set_palette                             ; 0541 _ E8, FFFFFFFC(rel)
        nop                                             ; 0546 _ 90
        leave                                           ; 0547 _ C9
        ret                                             ; 0548 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0549 _ 55
        mov     ebp, esp                                ; 054A _ 89. E5
        sub     esp, 40                                 ; 054C _ 83. EC, 28
        call    io_load_eflags                          ; 054F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0554 _ 89. 45, F4
        call    io_cli                                  ; 0557 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 055C _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 055F _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0563 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 056A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 056F _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0572 _ 89. 45, F0
        jmp     ?_003                                   ; 0575 _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 0577 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 057A _ 0F B6. 00
        shr     al, 2                                   ; 057D _ C0. E8, 02
        movzx   eax, al                                 ; 0580 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0583 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0587 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 058E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0593 _ 8B. 45, 10
        add     eax, 1                                  ; 0596 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0599 _ 0F B6. 00
        shr     al, 2                                   ; 059C _ C0. E8, 02
        movzx   eax, al                                 ; 059F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 05A2 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 05A6 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 05AD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 05B2 _ 8B. 45, 10
        add     eax, 2                                  ; 05B5 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 05B8 _ 0F B6. 00
        shr     al, 2                                   ; 05BB _ C0. E8, 02
        movzx   eax, al                                 ; 05BE _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 05C1 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 05C5 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 05CC _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 05D1 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 05D5 _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 05D9 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 05DC _ 3B. 45, 0C
        jle     ?_002                                   ; 05DF _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 05E1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 05E4 _ 89. 04 24
        call    io_store_eflags                         ; 05E7 _ E8, FFFFFFFC(rel)
        nop                                             ; 05EC _ 90
        leave                                           ; 05ED _ C9
        ret                                             ; 05EE _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 05EF _ 55
        mov     ebp, esp                                ; 05F0 _ 89. E5
        sub     esp, 20                                 ; 05F2 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 05F5 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05F8 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05FB _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 05FE _ 89. 45, FC
        jmp     ?_007                                   ; 0601 _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 0603 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0606 _ 89. 45, F8
        jmp     ?_006                                   ; 0609 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 060B _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 060E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0612 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0614 _ 8B. 45, F8
        add     eax, edx                                ; 0617 _ 01. D0
        mov     edx, eax                                ; 0619 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 061B _ 8B. 45, 08
        add     edx, eax                                ; 061E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0620 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0624 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0626 _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 062A _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 062D _ 3B. 45, 1C
        jle     ?_005                                   ; 0630 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0632 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 0636 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0639 _ 3B. 45, 20
        jle     ?_004                                   ; 063C _ 7E, C5
        leave                                           ; 063E _ C9
        ret                                             ; 063F _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0640 _ 55
        mov     ebp, esp                                ; 0641 _ 89. E5
        sub     esp, 20                                 ; 0643 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0646 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0649 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 064C _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 0653 _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 0658 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 065B _ 8B. 45, 1C
        add     eax, edx                                ; 065E _ 01. D0
        movzx   eax, byte [eax]                         ; 0660 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0663 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0666 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 066A _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 066C _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 066F _ 8B. 55, 14
        add     eax, edx                                ; 0672 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0674 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0678 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 067A _ 8B. 45, 10
        add     eax, edx                                ; 067D _ 01. D0
        mov     edx, eax                                ; 067F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0681 _ 8B. 45, 08
        add     edx, eax                                ; 0684 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0686 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 068A _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 068C _ 0F BE. 45, FB
        and     eax, 40H                                ; 0690 _ 83. E0, 40
        test    eax, eax                                ; 0693 _ 85. C0
        jz      ?_010                                   ; 0695 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0697 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 069A _ 8B. 55, 14
        add     eax, edx                                ; 069D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 069F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06A3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06A5 _ 8B. 45, 10
        add     eax, edx                                ; 06A8 _ 01. D0
        lea     edx, [eax+1H]                           ; 06AA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 06AD _ 8B. 45, 08
        add     edx, eax                                ; 06B0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06B2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06B6 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 06B8 _ 0F BE. 45, FB
        and     eax, 20H                                ; 06BC _ 83. E0, 20
        test    eax, eax                                ; 06BF _ 85. C0
        jz      ?_011                                   ; 06C1 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06C3 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06C6 _ 8B. 55, 14
        add     eax, edx                                ; 06C9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06CB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06CF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06D1 _ 8B. 45, 10
        add     eax, edx                                ; 06D4 _ 01. D0
        lea     edx, [eax+2H]                           ; 06D6 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 06D9 _ 8B. 45, 08
        add     edx, eax                                ; 06DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06E2 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 06E4 _ 0F BE. 45, FB
        and     eax, 10H                                ; 06E8 _ 83. E0, 10
        test    eax, eax                                ; 06EB _ 85. C0
        jz      ?_012                                   ; 06ED _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06EF _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06F2 _ 8B. 55, 14
        add     eax, edx                                ; 06F5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06F7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06FB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06FD _ 8B. 45, 10
        add     eax, edx                                ; 0700 _ 01. D0
        lea     edx, [eax+3H]                           ; 0702 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0705 _ 8B. 45, 08
        add     edx, eax                                ; 0708 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 070A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 070E _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 0710 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0714 _ 83. E0, 08
        test    eax, eax                                ; 0717 _ 85. C0
        jz      ?_013                                   ; 0719 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 071B _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 071E _ 8B. 55, 14
        add     eax, edx                                ; 0721 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0723 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0727 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0729 _ 8B. 45, 10
        add     eax, edx                                ; 072C _ 01. D0
        lea     edx, [eax+4H]                           ; 072E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0731 _ 8B. 45, 08
        add     edx, eax                                ; 0734 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0736 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 073A _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 073C _ 0F BE. 45, FB
        and     eax, 04H                                ; 0740 _ 83. E0, 04
        test    eax, eax                                ; 0743 _ 85. C0
        jz      ?_014                                   ; 0745 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0747 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 074A _ 8B. 55, 14
        add     eax, edx                                ; 074D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 074F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0753 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0755 _ 8B. 45, 10
        add     eax, edx                                ; 0758 _ 01. D0
        lea     edx, [eax+5H]                           ; 075A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 075D _ 8B. 45, 08
        add     edx, eax                                ; 0760 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0762 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0766 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0768 _ 0F BE. 45, FB
        and     eax, 02H                                ; 076C _ 83. E0, 02
        test    eax, eax                                ; 076F _ 85. C0
        jz      ?_015                                   ; 0771 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0773 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0776 _ 8B. 55, 14
        add     eax, edx                                ; 0779 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 077B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 077F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0781 _ 8B. 45, 10
        add     eax, edx                                ; 0784 _ 01. D0
        lea     edx, [eax+6H]                           ; 0786 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0789 _ 8B. 45, 08
        add     edx, eax                                ; 078C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 078E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0792 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0794 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0798 _ 83. E0, 01
        test    eax, eax                                ; 079B _ 85. C0
        jz      ?_016                                   ; 079D _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 079F _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 07A2 _ 8B. 55, 14
        add     eax, edx                                ; 07A5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07A7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07AB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07AD _ 8B. 45, 10
        add     eax, edx                                ; 07B0 _ 01. D0
        lea     edx, [eax+7H]                           ; 07B2 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 07B5 _ 8B. 45, 08
        add     edx, eax                                ; 07B8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07BA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07BE _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 07C0 _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 07C4 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 07C8 _ 0F 8E, FFFFFE8A
        leave                                           ; 07CE _ C9
        ret                                             ; 07CF _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 07D0 _ 55
        mov     ebp, esp                                ; 07D1 _ 89. E5
        sub     esp, 20                                 ; 07D3 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 07D6 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 07D9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 07DC _ C7. 45, FC, 00000000
        jmp     ?_024                                   ; 07E3 _ E9, 000000B1

?_018:  mov     dword [ebp-8H], 0                       ; 07E8 _ C7. 45, F8, 00000000
        jmp     ?_023                                   ; 07EF _ E9, 00000097

?_019:  mov     eax, dword [ebp-4H]                     ; 07F4 _ 8B. 45, FC
        shl     eax, 4                                  ; 07F7 _ C1. E0, 04
        mov     edx, eax                                ; 07FA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07FC _ 8B. 45, F8
        add     eax, edx                                ; 07FF _ 01. D0
        add     eax, cursor.1464                        ; 0801 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0806 _ 0F B6. 00
        cmp     al, 42                                  ; 0809 _ 3C, 2A
        jnz     ?_020                                   ; 080B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 080D _ 8B. 45, FC
        shl     eax, 4                                  ; 0810 _ C1. E0, 04
        mov     edx, eax                                ; 0813 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0815 _ 8B. 45, F8
        add     eax, edx                                ; 0818 _ 01. D0
        mov     edx, eax                                ; 081A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 081C _ 8B. 45, 08
        add     eax, edx                                ; 081F _ 01. D0
        mov     byte [eax], 0                           ; 0821 _ C6. 00, 00
?_020:  mov     eax, dword [ebp-4H]                     ; 0824 _ 8B. 45, FC
        shl     eax, 4                                  ; 0827 _ C1. E0, 04
        mov     edx, eax                                ; 082A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 082C _ 8B. 45, F8
        add     eax, edx                                ; 082F _ 01. D0
        add     eax, cursor.1464                        ; 0831 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0836 _ 0F B6. 00
        cmp     al, 79                                  ; 0839 _ 3C, 4F
        jnz     ?_021                                   ; 083B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 083D _ 8B. 45, FC
        shl     eax, 4                                  ; 0840 _ C1. E0, 04
        mov     edx, eax                                ; 0843 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0845 _ 8B. 45, F8
        add     eax, edx                                ; 0848 _ 01. D0
        mov     edx, eax                                ; 084A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 084C _ 8B. 45, 08
        add     eax, edx                                ; 084F _ 01. D0
        mov     byte [eax], 7                           ; 0851 _ C6. 00, 07
?_021:  mov     eax, dword [ebp-4H]                     ; 0854 _ 8B. 45, FC
        shl     eax, 4                                  ; 0857 _ C1. E0, 04
        mov     edx, eax                                ; 085A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 085C _ 8B. 45, F8
        add     eax, edx                                ; 085F _ 01. D0
        add     eax, cursor.1464                        ; 0861 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0866 _ 0F B6. 00
        cmp     al, 46                                  ; 0869 _ 3C, 2E
        jnz     ?_022                                   ; 086B _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 086D _ 8B. 45, FC
        shl     eax, 4                                  ; 0870 _ C1. E0, 04
        mov     edx, eax                                ; 0873 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0875 _ 8B. 45, F8
        add     eax, edx                                ; 0878 _ 01. D0
        mov     edx, eax                                ; 087A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 087C _ 8B. 45, 08
        add     edx, eax                                ; 087F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0881 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0885 _ 88. 02
?_022:  add     dword [ebp-8H], 1                       ; 0887 _ 83. 45, F8, 01
?_023:  cmp     dword [ebp-8H], 15                      ; 088B _ 83. 7D, F8, 0F
        jle     ?_019                                   ; 088F _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0895 _ 83. 45, FC, 01
?_024:  cmp     dword [ebp-4H], 15                      ; 0899 _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 089D _ 0F 8E, FFFFFF45
        leave                                           ; 08A3 _ C9
        ret                                             ; 08A4 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 08A5 _ 55
        mov     ebp, esp                                ; 08A6 _ 89. E5
        sub     esp, 16                                 ; 08A8 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 08AB _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 08B2 _ EB, 50

?_025:  mov     dword [ebp-8H], 0                       ; 08B4 _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 08BB _ EB, 3B

?_026:  mov     eax, dword [ebp-4H]                     ; 08BD _ 8B. 45, FC
        mov     edx, dword [ebp+1CH]                    ; 08C0 _ 8B. 55, 1C
        add     eax, edx                                ; 08C3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08C5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-8H]                     ; 08C9 _ 8B. 55, F8
        mov     ecx, dword [ebp+18H]                    ; 08CC _ 8B. 4D, 18
        add     edx, ecx                                ; 08CF _ 01. CA
        add     eax, edx                                ; 08D1 _ 01. D0
        mov     edx, eax                                ; 08D3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08D5 _ 8B. 45, 08
        add     edx, eax                                ; 08D8 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 08DA _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 08DD _ 0F AF. 45, 24
        mov     ecx, eax                                ; 08E1 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 08E3 _ 8B. 45, F8
        add     eax, ecx                                ; 08E6 _ 01. C8
        mov     ecx, eax                                ; 08E8 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 08EA _ 8B. 45, 20
        add     eax, ecx                                ; 08ED _ 01. C8
        movzx   eax, byte [eax]                         ; 08EF _ 0F B6. 00
        mov     byte [edx], al                          ; 08F2 _ 88. 02
        add     dword [ebp-8H], 1                       ; 08F4 _ 83. 45, F8, 01
?_027:  mov     eax, dword [ebp-8H]                     ; 08F8 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 08FB _ 3B. 45, 10
        jl      ?_026                                   ; 08FE _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0900 _ 83. 45, FC, 01
?_028:  mov     eax, dword [ebp-4H]                     ; 0904 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 0907 _ 3B. 45, 14
        jl      ?_025                                   ; 090A _ 7C, A8
        leave                                           ; 090C _ C9
        ret                                             ; 090D _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 090E _ 55
        mov     ebp, esp                                ; 090F _ 89. E5
        sub     esp, 40                                 ; 0911 _ 83. EC, 28
        mov     dword [ebp-0CH], 655360                 ; 0914 _ C7. 45, F4, 000A0000
        mov     dword [ebp-8H], 320                     ; 091B _ C7. 45, F8, 00000140
        mov     dword [ebp-4H], 200                     ; 0922 _ C7. 45, FC, 000000C8
        mov     dword [esp+14H], systemFont+780H        ; 0929 _ C7. 44 24, 14, 00000780(d)
        mov     dword [esp+10H], 7                      ; 0931 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 20                     ; 0939 _ C7. 44 24, 0C, 00000014
        mov     dword [esp+8H], 100                     ; 0941 _ C7. 44 24, 08, 00000064
        mov     eax, dword [ebp-8H]                     ; 0949 _ 8B. 45, F8
        mov     dword [esp+4H], eax                     ; 094C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0950 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0953 _ 89. 04 24
        call    showFont8                               ; 0956 _ E8, FFFFFFFC(rel)
        leave                                           ; 095B _ C9
        ret                                             ; 095C _ C3
; intHandlerFromC End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1415:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1464:                                            ; byte
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


