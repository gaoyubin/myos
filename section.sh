#!/bin/sh
sed -i -e '/^SECTION/d' -e '/^global/d' -e '/'^extern'/d' write_vga.asm

