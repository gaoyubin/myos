; Disassembly of file: write_vga.o
; Fri Jul 14 15:10:55 2017
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
?_001:  call    io_hlt                                  ; 04C7 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04CC _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 04CE _ 55
        mov     ebp, esp                                ; 04CF _ 89. E5
        sub     esp, 24                                 ; 04D1 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1402          ; 04D4 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 04DC _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 04E4 _ C7. 04 24, 00000000
        call    set_palette                             ; 04EB _ E8, FFFFFFFC(rel)
        nop                                             ; 04F0 _ 90
        leave                                           ; 04F1 _ C9
        ret                                             ; 04F2 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 04F3 _ 55
        mov     ebp, esp                                ; 04F4 _ 89. E5
        sub     esp, 40                                 ; 04F6 _ 83. EC, 28
        call    io_load_eflags                          ; 04F9 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 04FE _ 89. 45, F4
        call    io_cli                                  ; 0501 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0506 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0509 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 050D _ C7. 04 24, 000003C8
        call    io_out8                                 ; 0514 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0519 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 051C _ 89. 45, F0
        jmp     ?_003                                   ; 051F _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 0521 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0524 _ 0F B6. 00
        shr     al, 2                                   ; 0527 _ C0. E8, 02
        movzx   eax, al                                 ; 052A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 052D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0531 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0538 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 053D _ 8B. 45, 10
        add     eax, 1                                  ; 0540 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0543 _ 0F B6. 00
        shr     al, 2                                   ; 0546 _ C0. E8, 02
        movzx   eax, al                                 ; 0549 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 054C _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0550 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0557 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 055C _ 8B. 45, 10
        add     eax, 2                                  ; 055F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0562 _ 0F B6. 00
        shr     al, 2                                   ; 0565 _ C0. E8, 02
        movzx   eax, al                                 ; 0568 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 056B _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 056F _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0576 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 057B _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 057F _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 0583 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0586 _ 3B. 45, 0C
        jle     ?_002                                   ; 0589 _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 058B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 058E _ 89. 04 24
        call    io_store_eflags                         ; 0591 _ E8, FFFFFFFC(rel)
        nop                                             ; 0596 _ 90
        leave                                           ; 0597 _ C9
        ret                                             ; 0598 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0599 _ 55
        mov     ebp, esp                                ; 059A _ 89. E5
        sub     esp, 20                                 ; 059C _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 059F _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05A2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05A5 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 05A8 _ 89. 45, FC
        jmp     ?_007                                   ; 05AB _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 05AD _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 05B0 _ 89. 45, F8
        jmp     ?_006                                   ; 05B3 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 05B5 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 05B8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05BC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 05BE _ 8B. 45, F8
        add     eax, edx                                ; 05C1 _ 01. D0
        mov     edx, eax                                ; 05C3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05C5 _ 8B. 45, 08
        add     edx, eax                                ; 05C8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05CA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05CE _ 88. 02
        add     dword [ebp-8H], 1                       ; 05D0 _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 05D4 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 05D7 _ 3B. 45, 1C
        jle     ?_005                                   ; 05DA _ 7E, D9
        add     dword [ebp-4H], 1                       ; 05DC _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 05E0 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 05E3 _ 3B. 45, 20
        jle     ?_004                                   ; 05E6 _ 7E, C5
        leave                                           ; 05E8 _ C9
        ret                                             ; 05E9 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 05EA _ 55
        mov     ebp, esp                                ; 05EB _ 89. E5
        sub     esp, 20                                 ; 05ED _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 05F0 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 05F3 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 05F6 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 05FD _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 0602 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0605 _ 8B. 45, 1C
        add     eax, edx                                ; 0608 _ 01. D0
        movzx   eax, byte [eax]                         ; 060A _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 060D _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0610 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 0614 _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 0616 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0619 _ 8B. 55, 14
        add     eax, edx                                ; 061C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 061E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0622 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0624 _ 8B. 45, 10
        add     eax, edx                                ; 0627 _ 01. D0
        mov     edx, eax                                ; 0629 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 062B _ 8B. 45, 08
        add     edx, eax                                ; 062E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0630 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0634 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 0636 _ 0F BE. 45, FB
        and     eax, 40H                                ; 063A _ 83. E0, 40
        test    eax, eax                                ; 063D _ 85. C0
        jz      ?_010                                   ; 063F _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0641 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0644 _ 8B. 55, 14
        add     eax, edx                                ; 0647 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0649 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 064D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 064F _ 8B. 45, 10
        add     eax, edx                                ; 0652 _ 01. D0
        lea     edx, [eax+1H]                           ; 0654 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0657 _ 8B. 45, 08
        add     edx, eax                                ; 065A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 065C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0660 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0662 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0666 _ 83. E0, 20
        test    eax, eax                                ; 0669 _ 85. C0
        jz      ?_011                                   ; 066B _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 066D _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0670 _ 8B. 55, 14
        add     eax, edx                                ; 0673 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0675 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0679 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 067B _ 8B. 45, 10
        add     eax, edx                                ; 067E _ 01. D0
        lea     edx, [eax+2H]                           ; 0680 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0683 _ 8B. 45, 08
        add     edx, eax                                ; 0686 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0688 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 068C _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 068E _ 0F BE. 45, FB
        and     eax, 10H                                ; 0692 _ 83. E0, 10
        test    eax, eax                                ; 0695 _ 85. C0
        jz      ?_012                                   ; 0697 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0699 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 069C _ 8B. 55, 14
        add     eax, edx                                ; 069F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06A1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06A5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06A7 _ 8B. 45, 10
        add     eax, edx                                ; 06AA _ 01. D0
        lea     edx, [eax+3H]                           ; 06AC _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 06AF _ 8B. 45, 08
        add     edx, eax                                ; 06B2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06B4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06B8 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 06BA _ 0F BE. 45, FB
        and     eax, 08H                                ; 06BE _ 83. E0, 08
        test    eax, eax                                ; 06C1 _ 85. C0
        jz      ?_013                                   ; 06C3 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06C5 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06C8 _ 8B. 55, 14
        add     eax, edx                                ; 06CB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06CD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06D1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06D3 _ 8B. 45, 10
        add     eax, edx                                ; 06D6 _ 01. D0
        lea     edx, [eax+4H]                           ; 06D8 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 06DB _ 8B. 45, 08
        add     edx, eax                                ; 06DE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06E0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06E4 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 06E6 _ 0F BE. 45, FB
        and     eax, 04H                                ; 06EA _ 83. E0, 04
        test    eax, eax                                ; 06ED _ 85. C0
        jz      ?_014                                   ; 06EF _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06F1 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06F4 _ 8B. 55, 14
        add     eax, edx                                ; 06F7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06F9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06FD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06FF _ 8B. 45, 10
        add     eax, edx                                ; 0702 _ 01. D0
        lea     edx, [eax+5H]                           ; 0704 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0707 _ 8B. 45, 08
        add     edx, eax                                ; 070A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 070C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0710 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0712 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0716 _ 83. E0, 02
        test    eax, eax                                ; 0719 _ 85. C0
        jz      ?_015                                   ; 071B _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 071D _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0720 _ 8B. 55, 14
        add     eax, edx                                ; 0723 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0725 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0729 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 072B _ 8B. 45, 10
        add     eax, edx                                ; 072E _ 01. D0
        lea     edx, [eax+6H]                           ; 0730 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0733 _ 8B. 45, 08
        add     edx, eax                                ; 0736 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0738 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 073C _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 073E _ 0F BE. 45, FB
        and     eax, 01H                                ; 0742 _ 83. E0, 01
        test    eax, eax                                ; 0745 _ 85. C0
        jz      ?_016                                   ; 0747 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0749 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 074C _ 8B. 55, 14
        add     eax, edx                                ; 074F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0751 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0755 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0757 _ 8B. 45, 10
        add     eax, edx                                ; 075A _ 01. D0
        lea     edx, [eax+7H]                           ; 075C _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 075F _ 8B. 45, 08
        add     edx, eax                                ; 0762 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0764 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0768 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 076A _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 076E _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 0772 _ 0F 8E, FFFFFE8A
        leave                                           ; 0778 _ C9
        ret                                             ; 0779 _ C3
; showFont8 End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1402:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........




