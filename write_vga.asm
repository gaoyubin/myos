; Disassembly of file: write_vga.o
; Fri Jul 14 21:44:41 2017
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
        mov     dword [esp+8H], mousebuf                ; 0028 _ C7. 44 24, 08, 00000160(d)
        mov     dword [esp+4H], 128                     ; 0030 _ C7. 44 24, 04, 00000080
        mov     dword [esp], mouseinfo                  ; 0038 _ C7. 04 24, 0000012C(d)
        call    fifo8_init                              ; 003F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0044 _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0047 _ 8D. 50, E3
        mov     eax, dword [ebp-18H]                    ; 004A _ 8B. 45, E8
        sub     eax, 1                                  ; 004D _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0050 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0054 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0058 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0060 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0068 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-18H]                    ; 0070 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0073 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0077 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 007A _ 89. 04 24
        call    boxfill8                                ; 007D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0082 _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 0085 _ 8D. 48, E4
        mov     eax, dword [ebp-18H]                    ; 0088 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 008B _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 008E _ 8B. 45, EC
        sub     eax, 28                                 ; 0091 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0094 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0098 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 009C _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00A0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 00A8 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 00B0 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 00B3 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 00B7 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 00BA _ 89. 04 24
        call    boxfill8                                ; 00BD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00C2 _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 00C5 _ 8D. 48, E5
        mov     eax, dword [ebp-18H]                    ; 00C8 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 00CB _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00CE _ 8B. 45, EC
        sub     eax, 27                                 ; 00D1 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00D4 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00D8 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00DC _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00E0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00E8 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 00F0 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 00F3 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 00F7 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 00FA _ 89. 04 24
        call    boxfill8                                ; 00FD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0102 _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 0105 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 0108 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 010B _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 010E _ 8B. 45, EC
        sub     eax, 26                                 ; 0111 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0114 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0118 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 011C _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0120 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0128 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 0130 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0133 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0137 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 013A _ 89. 04 24
        call    boxfill8                                ; 013D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0142 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0145 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 0148 _ 8B. 45, EC
        sub     eax, 24                                 ; 014B _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 014E _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0152 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 015A _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 015E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0166 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 016E _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0171 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0175 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0178 _ 89. 04 24
        call    boxfill8                                ; 017B _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0180 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 0183 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 0186 _ 8B. 45, EC
        sub     eax, 24                                 ; 0189 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 018C _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0190 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0198 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 019C _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 01A4 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 01AC _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 01AF _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 01B3 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 01B6 _ 89. 04 24
        call    boxfill8                                ; 01B9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01BE _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01C1 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01C4 _ 8B. 45, EC
        sub     eax, 4                                  ; 01C7 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01CA _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01CE _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01D6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01DA _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01E2 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 01EA _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 01ED _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 01F1 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 01F4 _ 89. 04 24
        call    boxfill8                                ; 01F7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01FC _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01FF _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 0202 _ 8B. 45, EC
        sub     eax, 23                                 ; 0205 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0208 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 020C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0214 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0218 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0220 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 0228 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 022B _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 022F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0232 _ 89. 04 24
        call    boxfill8                                ; 0235 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 023A _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 023D _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0240 _ 8B. 45, EC
        sub     eax, 3                                  ; 0243 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0246 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 024A _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0252 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0256 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 025E _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 0266 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0269 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 026D _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0270 _ 89. 04 24
        call    boxfill8                                ; 0273 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0278 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 027B _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 027E _ 8B. 45, EC
        sub     eax, 24                                 ; 0281 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0284 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0288 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0290 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0294 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 029C _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 02A4 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 02A7 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 02AB _ 8B. 45, E4
        mov     dword [esp], eax                        ; 02AE _ 89. 04 24
        call    boxfill8                                ; 02B1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02B6 _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 02B9 _ 8D. 58, E8
        mov     eax, dword [ebp-18H]                    ; 02BC _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 02BF _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 02C2 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 02C5 _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 02C8 _ 8B. 45, E8
        sub     eax, 47                                 ; 02CB _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02CE _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02D2 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02D6 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02DA _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02DE _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 02E6 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 02E9 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 02ED _ 8B. 45, E4
        mov     dword [esp], eax                        ; 02F0 _ 89. 04 24
        call    boxfill8                                ; 02F3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02F8 _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 02FB _ 8D. 58, FC
        mov     eax, dword [ebp-18H]                    ; 02FE _ 8B. 45, E8
        lea     ecx, [eax-2FH]                          ; 0301 _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 0304 _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 0307 _ 8D. 50, E9
        mov     eax, dword [ebp-18H]                    ; 030A _ 8B. 45, E8
        sub     eax, 47                                 ; 030D _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0310 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0314 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0318 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 031C _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0320 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 0328 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 032B _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 032F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0332 _ 89. 04 24
        call    boxfill8                                ; 0335 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 033A _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 033D _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0340 _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 0343 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 0346 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0349 _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 034C _ 8B. 45, E8
        sub     eax, 47                                 ; 034F _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0352 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0356 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 035A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 035E _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0362 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 036A _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 036D _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0371 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0374 _ 89. 04 24
        call    boxfill8                                ; 0377 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 037C _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 037F _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0382 _ 8B. 45, E8
        lea     ecx, [eax-3H]                           ; 0385 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 0388 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 038B _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 038E _ 8B. 45, E8
        sub     eax, 3                                  ; 0391 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0394 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0398 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 039C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 03A0 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 03A4 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 03AC _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 03AF _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 03B3 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 03B6 _ 89. 04 24
        call    boxfill8                                ; 03B9 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 14                      ; 03BE _ C7. 44 24, 04, 0000000E
        mov     dword [esp], mcursor                    ; 03C6 _ C7. 04 24, 00000000(d)
        call    init_mouse_cursor                       ; 03CD _ E8, FFFFFFFC(rel)
        mov     dword [esp+1CH], 16                     ; 03D2 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], mcursor                ; 03DA _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], 80                     ; 03E2 _ C7. 44 24, 14, 00000050
        mov     dword [esp+10H], 80                     ; 03EA _ C7. 44 24, 10, 00000050
        mov     dword [esp+0CH], 16                     ; 03F2 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 03FA _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-18H]                    ; 0402 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0405 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0409 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 040C _ 89. 04 24
        call    putblock                                ; 040F _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0414 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0419 _ E8, FFFFFFFC(rel)
?_001:  mov     eax, dword [?_050]                      ; 041E _ A1, 00000128(d)
        test    eax, eax                                ; 0423 _ 85. C0
        jle     ?_002                                   ; 0425 _ 0F 8E, 0000008F
        mov     eax, dword [?_048]                      ; 042B _ A1, 00000120(d)
        movzx   eax, byte [keybuf+eax]                  ; 0430 _ 0F B6. 80, 00000100(d)
        movzx   eax, al                                 ; 0437 _ 0F B6. C0
        mov     dword [ebp-10H], eax                    ; 043A _ 89. 45, F0
        mov     eax, dword [?_048]                      ; 043D _ A1, 00000120(d)
        lea     edx, [eax+1H]                           ; 0442 _ 8D. 50, 01
        mov     eax, edx                                ; 0445 _ 89. D0
        sar     eax, 31                                 ; 0447 _ C1. F8, 1F
        shr     eax, 27                                 ; 044A _ C1. E8, 1B
        add     edx, eax                                ; 044D _ 01. C2
        and     edx, 1FH                                ; 044F _ 83. E2, 1F
        sub     edx, eax                                ; 0452 _ 29. C2
        mov     eax, edx                                ; 0454 _ 89. D0
        mov     dword [?_048], eax                      ; 0456 _ A3, 00000120(d)
        mov     eax, dword [?_050]                      ; 045B _ A1, 00000128(d)
        sub     eax, 1                                  ; 0460 _ 83. E8, 01
        mov     dword [?_050], eax                      ; 0463 _ A3, 00000128(d)
        mov     eax, dword [ebp-10H]                    ; 0468 _ 8B. 45, F0
        movzx   eax, al                                 ; 046B _ 0F B6. C0
        mov     dword [esp], eax                        ; 046E _ 89. 04 24
        call    charToHexStr                            ; 0471 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0476 _ 89. 45, F4
        mov     eax, dword [showPos.1452]               ; 0479 _ A1, 000001E0(d)
        mov     edx, dword [ebp-0CH]                    ; 047E _ 8B. 55, F4
        mov     dword [esp+14H], edx                    ; 0481 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0485 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 048D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], eax                     ; 0495 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 0499 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 049C _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 04A0 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 04A3 _ 89. 04 24
        call    showString                              ; 04A6 _ E8, FFFFFFFC(rel)
        mov     eax, dword [showPos.1452]               ; 04AB _ A1, 000001E0(d)
        add     eax, 32                                 ; 04B0 _ 83. C0, 20
        mov     dword [showPos.1452], eax               ; 04B3 _ A3, 000001E0(d)
        jmp     ?_003                                   ; 04B8 _ EB, 1F

?_002:  mov     dword [esp], mouseinfo                  ; 04BA _ C7. 04 24, 0000012C(d)
        call    fifo8_status                            ; 04C1 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 04C6 _ 85. C0
        jz      ?_003                                   ; 04C8 _ 74, 0F
        call    io_cli                                  ; 04CA _ E8, FFFFFFFC(rel)
        call    show_mouse_info                         ; 04CF _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04D4 _ E9, FFFFFF45

?_003:  jmp     ?_001                                   ; 04D9 _ E9, FFFFFF40
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 04DE _ 55
        mov     ebp, esp                                ; 04DF _ 89. E5
        sub     esp, 24                                 ; 04E1 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1461          ; 04E4 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 04EC _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 04F4 _ C7. 04 24, 00000000
        call    set_palette                             ; 04FB _ E8, FFFFFFFC(rel)
        nop                                             ; 0500 _ 90
        leave                                           ; 0501 _ C9
        ret                                             ; 0502 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0503 _ 55
        mov     ebp, esp                                ; 0504 _ 89. E5
        sub     esp, 40                                 ; 0506 _ 83. EC, 28
        call    io_load_eflags                          ; 0509 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 050E _ 89. 45, F4
        call    io_cli                                  ; 0511 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0516 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0519 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 051D _ C7. 04 24, 000003C8
        call    io_out8                                 ; 0524 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0529 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 052C _ 89. 45, F0
        jmp     ?_005                                   ; 052F _ EB, 62

?_004:  mov     eax, dword [ebp+10H]                    ; 0531 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0534 _ 0F B6. 00
        shr     al, 2                                   ; 0537 _ C0. E8, 02
        movzx   eax, al                                 ; 053A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 053D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0541 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0548 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 054D _ 8B. 45, 10
        add     eax, 1                                  ; 0550 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0553 _ 0F B6. 00
        shr     al, 2                                   ; 0556 _ C0. E8, 02
        movzx   eax, al                                 ; 0559 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 055C _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0560 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0567 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 056C _ 8B. 45, 10
        add     eax, 2                                  ; 056F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0572 _ 0F B6. 00
        shr     al, 2                                   ; 0575 _ C0. E8, 02
        movzx   eax, al                                 ; 0578 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 057B _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 057F _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0586 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 058B _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 058F _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 0593 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0596 _ 3B. 45, 0C
        jle     ?_004                                   ; 0599 _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 059B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 059E _ 89. 04 24
        call    io_store_eflags                         ; 05A1 _ E8, FFFFFFFC(rel)
        nop                                             ; 05A6 _ 90
        leave                                           ; 05A7 _ C9
        ret                                             ; 05A8 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 05A9 _ 55
        mov     ebp, esp                                ; 05AA _ 89. E5
        sub     esp, 20                                 ; 05AC _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 05AF _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05B2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05B5 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 05B8 _ 89. 45, FC
        jmp     ?_009                                   ; 05BB _ EB, 33

?_006:  mov     eax, dword [ebp+14H]                    ; 05BD _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 05C0 _ 89. 45, F8
        jmp     ?_008                                   ; 05C3 _ EB, 1F

?_007:  mov     eax, dword [ebp-4H]                     ; 05C5 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 05C8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05CC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 05CE _ 8B. 45, F8
        add     eax, edx                                ; 05D1 _ 01. D0
        mov     edx, eax                                ; 05D3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05D5 _ 8B. 45, 08
        add     edx, eax                                ; 05D8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05DA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05DE _ 88. 02
        add     dword [ebp-8H], 1                       ; 05E0 _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp-8H]                     ; 05E4 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 05E7 _ 3B. 45, 1C
        jle     ?_007                                   ; 05EA _ 7E, D9
        add     dword [ebp-4H], 1                       ; 05EC _ 83. 45, FC, 01
?_009:  mov     eax, dword [ebp-4H]                     ; 05F0 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 05F3 _ 3B. 45, 20
        jle     ?_006                                   ; 05F6 _ 7E, C5
        leave                                           ; 05F8 _ C9
        ret                                             ; 05F9 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 05FA _ 55
        mov     ebp, esp                                ; 05FB _ 89. E5
        sub     esp, 20                                 ; 05FD _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0600 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0603 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0606 _ C7. 45, FC, 00000000
        jmp     ?_019                                   ; 060D _ E9, 0000016C

?_010:  mov     edx, dword [ebp-4H]                     ; 0612 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0615 _ 8B. 45, 1C
        add     eax, edx                                ; 0618 _ 01. D0
        movzx   eax, byte [eax]                         ; 061A _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 061D _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0620 _ 80. 7D, FB, 00
        jns     ?_011                                   ; 0624 _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 0626 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0629 _ 8B. 55, 14
        add     eax, edx                                ; 062C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 062E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0632 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0634 _ 8B. 45, 10
        add     eax, edx                                ; 0637 _ 01. D0
        mov     edx, eax                                ; 0639 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 063B _ 8B. 45, 08
        add     edx, eax                                ; 063E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0640 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0644 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0646 _ 0F BE. 45, FB
        and     eax, 40H                                ; 064A _ 83. E0, 40
        test    eax, eax                                ; 064D _ 85. C0
        jz      ?_012                                   ; 064F _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0651 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0654 _ 8B. 55, 14
        add     eax, edx                                ; 0657 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0659 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 065D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 065F _ 8B. 45, 10
        add     eax, edx                                ; 0662 _ 01. D0
        lea     edx, [eax+1H]                           ; 0664 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0667 _ 8B. 45, 08
        add     edx, eax                                ; 066A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 066C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0670 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 0672 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0676 _ 83. E0, 20
        test    eax, eax                                ; 0679 _ 85. C0
        jz      ?_013                                   ; 067B _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 067D _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0680 _ 8B. 55, 14
        add     eax, edx                                ; 0683 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0685 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0689 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 068B _ 8B. 45, 10
        add     eax, edx                                ; 068E _ 01. D0
        lea     edx, [eax+2H]                           ; 0690 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0693 _ 8B. 45, 08
        add     edx, eax                                ; 0696 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0698 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 069C _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 069E _ 0F BE. 45, FB
        and     eax, 10H                                ; 06A2 _ 83. E0, 10
        test    eax, eax                                ; 06A5 _ 85. C0
        jz      ?_014                                   ; 06A7 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06A9 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06AC _ 8B. 55, 14
        add     eax, edx                                ; 06AF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06B1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06B5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06B7 _ 8B. 45, 10
        add     eax, edx                                ; 06BA _ 01. D0
        lea     edx, [eax+3H]                           ; 06BC _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 06BF _ 8B. 45, 08
        add     edx, eax                                ; 06C2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06C4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06C8 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 06CA _ 0F BE. 45, FB
        and     eax, 08H                                ; 06CE _ 83. E0, 08
        test    eax, eax                                ; 06D1 _ 85. C0
        jz      ?_015                                   ; 06D3 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06D5 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06D8 _ 8B. 55, 14
        add     eax, edx                                ; 06DB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06DD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06E1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06E3 _ 8B. 45, 10
        add     eax, edx                                ; 06E6 _ 01. D0
        lea     edx, [eax+4H]                           ; 06E8 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 06EB _ 8B. 45, 08
        add     edx, eax                                ; 06EE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06F0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06F4 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06F6 _ 0F BE. 45, FB
        and     eax, 04H                                ; 06FA _ 83. E0, 04
        test    eax, eax                                ; 06FD _ 85. C0
        jz      ?_016                                   ; 06FF _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0701 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0704 _ 8B. 55, 14
        add     eax, edx                                ; 0707 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0709 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 070D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 070F _ 8B. 45, 10
        add     eax, edx                                ; 0712 _ 01. D0
        lea     edx, [eax+5H]                           ; 0714 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0717 _ 8B. 45, 08
        add     edx, eax                                ; 071A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 071C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0720 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0722 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0726 _ 83. E0, 02
        test    eax, eax                                ; 0729 _ 85. C0
        jz      ?_017                                   ; 072B _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 072D _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0730 _ 8B. 55, 14
        add     eax, edx                                ; 0733 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0735 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0739 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 073B _ 8B. 45, 10
        add     eax, edx                                ; 073E _ 01. D0
        lea     edx, [eax+6H]                           ; 0740 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0743 _ 8B. 45, 08
        add     edx, eax                                ; 0746 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0748 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 074C _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 074E _ 0F BE. 45, FB
        and     eax, 01H                                ; 0752 _ 83. E0, 01
        test    eax, eax                                ; 0755 _ 85. C0
        jz      ?_018                                   ; 0757 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0759 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 075C _ 8B. 55, 14
        add     eax, edx                                ; 075F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0761 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0765 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0767 _ 8B. 45, 10
        add     eax, edx                                ; 076A _ 01. D0
        lea     edx, [eax+7H]                           ; 076C _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 076F _ 8B. 45, 08
        add     edx, eax                                ; 0772 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0774 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0778 _ 88. 02
?_018:  add     dword [ebp-4H], 1                       ; 077A _ 83. 45, FC, 01
?_019:  cmp     dword [ebp-4H], 15                      ; 077E _ 83. 7D, FC, 0F
        jle     ?_010                                   ; 0782 _ 0F 8E, FFFFFE8A
        leave                                           ; 0788 _ C9
        ret                                             ; 0789 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 078A _ 55
        mov     ebp, esp                                ; 078B _ 89. E5
        sub     esp, 20                                 ; 078D _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0790 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0793 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0796 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 079D _ E9, 000000B1

?_020:  mov     dword [ebp-8H], 0                       ; 07A2 _ C7. 45, F8, 00000000
        jmp     ?_025                                   ; 07A9 _ E9, 00000097

?_021:  mov     eax, dword [ebp-4H]                     ; 07AE _ 8B. 45, FC
        shl     eax, 4                                  ; 07B1 _ C1. E0, 04
        mov     edx, eax                                ; 07B4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07B6 _ 8B. 45, F8
        add     eax, edx                                ; 07B9 _ 01. D0
        add     eax, cursor.1510                        ; 07BB _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07C0 _ 0F B6. 00
        cmp     al, 42                                  ; 07C3 _ 3C, 2A
        jnz     ?_022                                   ; 07C5 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 07C7 _ 8B. 45, FC
        shl     eax, 4                                  ; 07CA _ C1. E0, 04
        mov     edx, eax                                ; 07CD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07CF _ 8B. 45, F8
        add     eax, edx                                ; 07D2 _ 01. D0
        mov     edx, eax                                ; 07D4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07D6 _ 8B. 45, 08
        add     eax, edx                                ; 07D9 _ 01. D0
        mov     byte [eax], 0                           ; 07DB _ C6. 00, 00
?_022:  mov     eax, dword [ebp-4H]                     ; 07DE _ 8B. 45, FC
        shl     eax, 4                                  ; 07E1 _ C1. E0, 04
        mov     edx, eax                                ; 07E4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07E6 _ 8B. 45, F8
        add     eax, edx                                ; 07E9 _ 01. D0
        add     eax, cursor.1510                        ; 07EB _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07F0 _ 0F B6. 00
        cmp     al, 79                                  ; 07F3 _ 3C, 4F
        jnz     ?_023                                   ; 07F5 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 07F7 _ 8B. 45, FC
        shl     eax, 4                                  ; 07FA _ C1. E0, 04
        mov     edx, eax                                ; 07FD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07FF _ 8B. 45, F8
        add     eax, edx                                ; 0802 _ 01. D0
        mov     edx, eax                                ; 0804 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0806 _ 8B. 45, 08
        add     eax, edx                                ; 0809 _ 01. D0
        mov     byte [eax], 7                           ; 080B _ C6. 00, 07
?_023:  mov     eax, dword [ebp-4H]                     ; 080E _ 8B. 45, FC
        shl     eax, 4                                  ; 0811 _ C1. E0, 04
        mov     edx, eax                                ; 0814 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0816 _ 8B. 45, F8
        add     eax, edx                                ; 0819 _ 01. D0
        add     eax, cursor.1510                        ; 081B _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0820 _ 0F B6. 00
        cmp     al, 46                                  ; 0823 _ 3C, 2E
        jnz     ?_024                                   ; 0825 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0827 _ 8B. 45, FC
        shl     eax, 4                                  ; 082A _ C1. E0, 04
        mov     edx, eax                                ; 082D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 082F _ 8B. 45, F8
        add     eax, edx                                ; 0832 _ 01. D0
        mov     edx, eax                                ; 0834 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0836 _ 8B. 45, 08
        add     edx, eax                                ; 0839 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 083B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 083F _ 88. 02
?_024:  add     dword [ebp-8H], 1                       ; 0841 _ 83. 45, F8, 01
?_025:  cmp     dword [ebp-8H], 15                      ; 0845 _ 83. 7D, F8, 0F
        jle     ?_021                                   ; 0849 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 084F _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0853 _ 83. 7D, FC, 0F
        jle     ?_020                                   ; 0857 _ 0F 8E, FFFFFF45
        leave                                           ; 085D _ C9
        ret                                             ; 085E _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 085F _ 55
        mov     ebp, esp                                ; 0860 _ 89. E5
        sub     esp, 16                                 ; 0862 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0865 _ C7. 45, FC, 00000000
        jmp     ?_030                                   ; 086C _ EB, 50

?_027:  mov     dword [ebp-8H], 0                       ; 086E _ C7. 45, F8, 00000000
        jmp     ?_029                                   ; 0875 _ EB, 3B

?_028:  mov     eax, dword [ebp-4H]                     ; 0877 _ 8B. 45, FC
        mov     edx, dword [ebp+1CH]                    ; 087A _ 8B. 55, 1C
        add     eax, edx                                ; 087D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 087F _ 0F AF. 45, 0C
        mov     edx, dword [ebp-8H]                     ; 0883 _ 8B. 55, F8
        mov     ecx, dword [ebp+18H]                    ; 0886 _ 8B. 4D, 18
        add     edx, ecx                                ; 0889 _ 01. CA
        add     eax, edx                                ; 088B _ 01. D0
        mov     edx, eax                                ; 088D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 088F _ 8B. 45, 08
        add     edx, eax                                ; 0892 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 0894 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 0897 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 089B _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 089D _ 8B. 45, F8
        add     eax, ecx                                ; 08A0 _ 01. C8
        mov     ecx, eax                                ; 08A2 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 08A4 _ 8B. 45, 20
        add     eax, ecx                                ; 08A7 _ 01. C8
        movzx   eax, byte [eax]                         ; 08A9 _ 0F B6. 00
        mov     byte [edx], al                          ; 08AC _ 88. 02
        add     dword [ebp-8H], 1                       ; 08AE _ 83. 45, F8, 01
?_029:  mov     eax, dword [ebp-8H]                     ; 08B2 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 08B5 _ 3B. 45, 10
        jl      ?_028                                   ; 08B8 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 08BA _ 83. 45, FC, 01
?_030:  mov     eax, dword [ebp-4H]                     ; 08BE _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 08C1 _ 3B. 45, 14
        jl      ?_027                                   ; 08C4 _ 7C, A8
        leave                                           ; 08C6 _ C9
        ret                                             ; 08C7 _ C3
; putblock End of function

intHandlerForKeyboard:; Function begin
        push    ebp                                     ; 08C8 _ 55
        mov     ebp, esp                                ; 08C9 _ 89. E5
        sub     esp, 40                                 ; 08CB _ 83. EC, 28
        mov     dword [ebp-14H], 655360                 ; 08CE _ C7. 45, EC, 000A0000
        mov     dword [ebp-10H], 320                    ; 08D5 _ C7. 45, F0, 00000140
        mov     dword [ebp-0CH], 200                    ; 08DC _ C7. 45, F4, 000000C8
        mov     dword [esp+4H], 33                      ; 08E3 _ C7. 44 24, 04, 00000021
        mov     dword [esp], 32                         ; 08EB _ C7. 04 24, 00000020
        call    io_out8                                 ; 08F2 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], 0                       ; 08F7 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 08FB _ C7. 04 24, 00000060
        call    io_in8                                  ; 0902 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 0907 _ 88. 45, EB
        mov     eax, dword [?_050]                      ; 090A _ A1, 00000128(d)
        cmp     eax, 31                                 ; 090F _ 83. F8, 1F
        jg      ?_031                                   ; 0912 _ 7F, 3A
        mov     eax, dword [?_049]                      ; 0914 _ A1, 00000124(d)
        movzx   edx, byte [ebp-15H]                     ; 0919 _ 0F B6. 55, EB
        mov     byte [keybuf+eax], dl                   ; 091D _ 88. 90, 00000100(d)
        mov     eax, dword [?_050]                      ; 0923 _ A1, 00000128(d)
        add     eax, 1                                  ; 0928 _ 83. C0, 01
        mov     dword [?_050], eax                      ; 092B _ A3, 00000128(d)
        mov     eax, dword [?_049]                      ; 0930 _ A1, 00000124(d)
        lea     edx, [eax+1H]                           ; 0935 _ 8D. 50, 01
        mov     eax, edx                                ; 0938 _ 89. D0
        sar     eax, 31                                 ; 093A _ C1. F8, 1F
        shr     eax, 27                                 ; 093D _ C1. E8, 1B
        add     edx, eax                                ; 0940 _ 01. C2
        and     edx, 1FH                                ; 0942 _ 83. E2, 1F
        sub     edx, eax                                ; 0945 _ 29. C2
        mov     eax, edx                                ; 0947 _ 89. D0
        mov     dword [?_049], eax                      ; 0949 _ A3, 00000124(d)
?_031:  leave                                           ; 094E _ C9
        ret                                             ; 094F _ C3
; intHandlerForKeyboard End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 0950 _ 55
        mov     ebp, esp                                ; 0951 _ 89. E5
        sub     esp, 72                                 ; 0953 _ 83. EC, 48
        mov     dword [ebp-18H], 655360                 ; 0956 _ C7. 45, E8, 000A0000
        mov     dword [ebp-14H], 320                    ; 095D _ C7. 45, EC, 00000140
        mov     dword [ebp-10H], 200                    ; 0964 _ C7. 45, F0, 000000C8
        mov     byte [ebp-19H], 0                       ; 096B _ C6. 45, E7, 00
        call    io_sti                                  ; 096F _ E8, FFFFFFFC(rel)
        mov     dword [esp], mouseinfo                  ; 0974 _ C7. 04 24, 0000012C(d)
        call    fifo8_get                               ; 097B _ E8, FFFFFFFC(rel)
        mov     byte [ebp-19H], al                      ; 0980 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0983 _ 0F B6. 45, E7
        mov     dword [esp], eax                        ; 0987 _ 89. 04 24
        call    charToHexStr                            ; 098A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 098F _ 89. 45, F4
        mov     edx, dword [mousePosY.1555]             ; 0992 _ 8B. 15, 00000160(d)
        mov     eax, dword [mousePosX.1554]             ; 0998 _ A1, 00000164(d)
        mov     ecx, dword [ebp-0CH]                    ; 099D _ 8B. 4D, F4
        mov     dword [esp+14H], ecx                    ; 09A0 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 09A4 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], edx                    ; 09AC _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 09B0 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 09B4 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 09B7 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 09BB _ 8B. 45, E8
        mov     dword [esp], eax                        ; 09BE _ 89. 04 24
        call    showString                              ; 09C1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [mousePosX.1554]             ; 09C6 _ A1, 00000164(d)
        add     eax, 32                                 ; 09CB _ 83. C0, 20
        mov     dword [mousePosX.1554], eax             ; 09CE _ A3, 00000164(d)
        mov     eax, dword [mousePosX.1554]             ; 09D3 _ A1, 00000164(d)
        cmp     eax, 255                                ; 09D8 _ 3D, 000000FF
        jle     ?_032                                   ; 09DD _ 7E, 17
        mov     dword [mousePosX.1554], 16              ; 09DF _ C7. 05, 00000164(d), 00000010
        mov     eax, dword [mousePosY.1555]             ; 09E9 _ A1, 00000160(d)
        add     eax, 16                                 ; 09EE _ 83. C0, 10
        mov     dword [mousePosY.1555], eax             ; 09F1 _ A3, 00000160(d)
?_032:  leave                                           ; 09F6 _ C9
        ret                                             ; 09F7 _ C3
; show_mouse_info End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 09F8 _ 55
        mov     ebp, esp                                ; 09F9 _ 89. E5
        sub     esp, 40                                 ; 09FB _ 83. EC, 28
        mov     dword [ebp-14H], 655360                 ; 09FE _ C7. 45, EC, 000A0000
        mov     dword [ebp-10H], 320                    ; 0A05 _ C7. 45, F0, 00000140
        mov     dword [ebp-0CH], 200                    ; 0A0C _ C7. 45, F4, 000000C8
        mov     dword [esp], 96                         ; 0A13 _ C7. 04 24, 00000060
        call    io_in8                                  ; 0A1A _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 0A1F _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0A22 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0A26 _ 89. 44 24, 04
        mov     dword [esp], mouseinfo                  ; 0A2A _ C7. 04 24, 0000012C(d)
        call    fifo8_put                               ; 0A31 _ E8, FFFFFFFC(rel)
        leave                                           ; 0A36 _ C9
        ret                                             ; 0A37 _ C3
; intHandlerForMouse End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0A38 _ 55
        mov     ebp, esp                                ; 0A39 _ 89. E5
        sub     esp, 4                                  ; 0A3B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0A3E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0A41 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0A44 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0A48 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0A4A _ 0F B6. 45, FC
        add     eax, 55                                 ; 0A4E _ 83. C0, 37
        jmp     ?_034                                   ; 0A51 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0A53 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0A57 _ 83. C0, 30
?_034:  leave                                           ; 0A5A _ C9
        ret                                             ; 0A5B _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0A5C _ 55
        mov     ebp, esp                                ; 0A5D _ 89. E5
        sub     esp, 24                                 ; 0A5F _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0A62 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0A65 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A68 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0A6F _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0A73 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0A76 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0A79 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0A7D _ 89. 04 24
        call    charToHexVal                            ; 0A80 _ E8, FFFFFFFC(rel)
        mov     byte [?_047], al                        ; 0A85 _ A2, 00000013(d)
        movzx   eax, byte [ebp-14H]                     ; 0A8A _ 0F B6. 45, EC
        shr     al, 4                                   ; 0A8E _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0A91 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0A94 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0A98 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0A9B _ 89. 04 24
        call    charToHexVal                            ; 0A9E _ E8, FFFFFFFC(rel)
        mov     byte [?_046], al                        ; 0AA3 _ A2, 00000012(d)
        mov     eax, keyval                             ; 0AA8 _ B8, 00000010(d)
        leave                                           ; 0AAD _ C9
        ret                                             ; 0AAE _ C3
; charToHexStr End of function

showString:; Function begin
        push    ebp                                     ; 0AAF _ 55
        mov     ebp, esp                                ; 0AB0 _ 89. E5
        sub     esp, 28                                 ; 0AB2 _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 0AB5 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 0AB8 _ 88. 45, FC
        jmp     ?_036                                   ; 0ABB _ EB, 46

?_035:  mov     eax, dword [ebp+1CH]                    ; 0ABD _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0AC0 _ 0F B6. 00
        movzx   eax, al                                 ; 0AC3 _ 0F B6. C0
        shl     eax, 4                                  ; 0AC6 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0AC9 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 0ACF _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 0AD3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0AD7 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0ADB _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0ADE _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0AE2 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0AE5 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0AE9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AEC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AF0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0AF3 _ 89. 04 24
        call    showFont8                               ; 0AF6 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 0AFB _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0AFF _ 83. 45, 1C, 01
?_036:  mov     eax, dword [ebp+1CH]                    ; 0B03 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B06 _ 0F B6. 00
        test    al, al                                  ; 0B09 _ 84. C0
        jnz     ?_035                                   ; 0B0B _ 75, B0
        leave                                           ; 0B0D _ C9
        ret                                             ; 0B0E _ C3
; showString End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0B0F _ 55
        mov     ebp, esp                                ; 0B10 _ 89. E5
        sub     esp, 24                                 ; 0B12 _ 83. EC, 18
?_037:  mov     dword [esp], 100                        ; 0B15 _ C7. 04 24, 00000064
        call    io_in8                                  ; 0B1C _ E8, FFFFFFFC(rel)
        and     eax, 02H                                ; 0B21 _ 83. E0, 02
        test    eax, eax                                ; 0B24 _ 85. C0
        jnz     ?_038                                   ; 0B26 _ 75, 02
        jmp     ?_039                                   ; 0B28 _ EB, 02

?_038:  jmp     ?_037                                   ; 0B2A _ EB, E9

?_039:  leave                                           ; 0B2C _ C9
        ret                                             ; 0B2D _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0B2E _ 55
        mov     ebp, esp                                ; 0B2F _ 89. E5
        sub     esp, 24                                 ; 0B31 _ 83. EC, 18
        call    wait_KBC_sendready                      ; 0B34 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 96                      ; 0B39 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0B41 _ C7. 04 24, 00000064
        call    io_out8                                 ; 0B48 _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 0B4D _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 71                      ; 0B52 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0B5A _ C7. 04 24, 00000060
        call    io_out8                                 ; 0B61 _ E8, FFFFFFFC(rel)
        nop                                             ; 0B66 _ 90
        leave                                           ; 0B67 _ C9
        ret                                             ; 0B68 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0B69 _ 55
        mov     ebp, esp                                ; 0B6A _ 89. E5
        sub     esp, 24                                 ; 0B6C _ 83. EC, 18
        call    wait_KBC_sendready                      ; 0B6F _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 212                     ; 0B74 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0B7C _ C7. 04 24, 00000064
        call    io_out8                                 ; 0B83 _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 0B88 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 244                     ; 0B8D _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0B95 _ C7. 04 24, 00000060
        call    io_out8                                 ; 0B9C _ E8, FFFFFFFC(rel)
        nop                                             ; 0BA1 _ 90
        leave                                           ; 0BA2 _ C9
        ret                                             ; 0BA3 _ C3
; enable_mouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0BA4 _ 55
        mov     ebp, esp                                ; 0BA5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0BA7 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0BAA _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0BAD _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0BB0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0BB3 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0BB6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0BB8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0BBB _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0BBE _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0BC1 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0BC4 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0BCB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0BCE _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0BD5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0BD8 _ C7. 40, 08, 00000000
        nop                                             ; 0BDF _ 90
        pop     ebp                                     ; 0BE0 _ 5D
        ret                                             ; 0BE1 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0BE2 _ 55
        mov     ebp, esp                                ; 0BE3 _ 89. E5
        sub     esp, 4                                  ; 0BE5 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0BE8 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0BEB _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0BEE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0BF1 _ 8B. 40, 10
        test    eax, eax                                ; 0BF4 _ 85. C0
        jnz     ?_040                                   ; 0BF6 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0BF8 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0BFB _ 8B. 40, 14
        or      eax, 01H                                ; 0BFE _ 83. C8, 01
        mov     edx, eax                                ; 0C01 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C03 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0C06 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0C09 _ B8, FFFFFFFF
        jmp     ?_042                                   ; 0C0E _ EB, 50

?_040:  mov     eax, dword [ebp+8H]                     ; 0C10 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0C13 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0C15 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0C18 _ 8B. 40, 04
        add     edx, eax                                ; 0C1B _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0C1D _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0C21 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0C23 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0C26 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0C29 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C2C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0C2F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C32 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0C35 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C38 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0C3B _ 8B. 40, 0C
        cmp     edx, eax                                ; 0C3E _ 39. C2
        jnz     ?_041                                   ; 0C40 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0C42 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0C45 _ C7. 40, 04, 00000000
?_041:  mov     eax, dword [ebp+8H]                     ; 0C4C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0C4F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0C52 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0C55 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0C58 _ 89. 50, 10
        mov     eax, 0                                  ; 0C5B _ B8, 00000000
?_042:  leave                                           ; 0C60 _ C9
        ret                                             ; 0C61 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0C62 _ 55
        mov     ebp, esp                                ; 0C63 _ 89. E5
        sub     esp, 16                                 ; 0C65 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0C68 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0C6B _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0C6E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0C71 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0C74 _ 39. C2
        jnz     ?_043                                   ; 0C76 _ 75, 07
        mov     eax, 4294967295                         ; 0C78 _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0C7D _ EB, 51

?_043:  mov     eax, dword [ebp+8H]                     ; 0C7F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0C82 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0C84 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0C87 _ 8B. 40, 08
        add     eax, edx                                ; 0C8A _ 01. D0
        movzx   eax, byte [eax]                         ; 0C8C _ 0F B6. 00
        movzx   eax, al                                 ; 0C8F _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0C92 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C95 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0C98 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0C9B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C9E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0CA1 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0CA4 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0CA7 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0CAA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0CAD _ 8B. 40, 0C
        cmp     edx, eax                                ; 0CB0 _ 39. C2
        jnz     ?_044                                   ; 0CB2 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0CB4 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0CB7 _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0CBE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0CC1 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0CC4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0CC7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0CCA _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0CCD _ 8B. 45, FC
?_045:  leave                                           ; 0CD0 _ C9
        ret                                             ; 0CD1 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0CD2 _ 55
        mov     ebp, esp                                ; 0CD3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0CD5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0CD8 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0CDB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0CDE _ 8B. 40, 10
        sub     edx, eax                                ; 0CE1 _ 29. C2
        mov     eax, edx                                ; 0CE3 _ 89. D0
        pop     ebp                                     ; 0CE5 _ 5D
        ret                                             ; 0CE6 _ C3
; fifo8_status End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0010 _ 0X

?_046:  db 00H                                          ; 0012 _ .

?_047:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1461:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1510:                                            ; byte
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

mousePosY.1555:                                         ; dword
        dd 00000010H                                    ; 0160 _ 16 

mousePosX.1554:                                         ; dword
        dd 00000010H                                    ; 0164 _ 16 



mcursor:                                                ; byte
        resb    256                                     ; 0000

keybuf:                                                 ; byte
        resb    32                                      ; 0100

?_048:  resd    1                                       ; 0120

?_049:  resd    1                                       ; 0124

?_050:  resd    1                                       ; 0128

mouseinfo:                                              ; byte
        resb    52                                      ; 012C

mousebuf:                                               ; byte
        resb    128                                     ; 0160

showPos.1452:                                           ; dword
        resd    1                                       ; 01E0


