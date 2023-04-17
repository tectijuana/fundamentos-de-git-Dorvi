GEF for linux ready, type `gef' to start, `gef config' to configure
90 commands loaded and 5 functions added for GDB 8.2.1 in 0.01ms using Python engine 3.7
Ejercicio1: No such file or directory.
gef➤  start
[*] No executable to debug, use `file` to load a binary
gef➤  q
DavidPaBe@raspberrypi:~ $ make Ejercicio1
g++     Ejercicio1.cpp   -o Ejercicio1
DavidPaBe@raspberrypi:~ $ gdb -q Ejercicio1
GEF for linux ready, type `gef' to start, `gef config' to configure
90 commands loaded and 5 functions added for GDB 8.2.1 in 0.02ms using Python engine 3.7
Reading symbols from Ejercicio1...(no debugging symbols found)...done.
gef➤  start
[+] Breaking at '0x10674'
[*] Failed to find objfile or not a valid file format: [Errno 2] No such file or directory: 'system-supplied DSO at 0xb6ffd000'
[ Legend: Modified register | Code | Heap | Stack | String ]
───────────────────────────────────────────────────── registers ────$r0  : 0x1
$r1  : 0xbefff644  →  0xbefff774  →  "/home/DavidPaBe/Ejercicio1"
$r2  : 0xbefff64c  →  0xbefff78f  →  "SHELL=/bin/bash"
$r3  : 0x010674  →  <main+0> push {r11,  lr}
$r4  : 0x0
$r5  : 0x010760  →  <__libc_csu_init+0> push {r4,  r5,  r6,  r7,  r8,  r9,  r10,  lr}
$r6  : 0x010584  →  <_start+0> mov r11,  #0
$r7  : 0x0
$r8  : 0x0
$r9  : 0x0
$r10 : 0xb6fff000  →  0x030f44  →  0x00000000
$r11 : 0xbefff4f4  →  0xb6c74718  →  <__libc_start_main+268> bl 0xb6c8b770 <__GI_exit>
$r12 : 0xbefff570  →  0x00000001
$sp  : 0xbefff4e8  →  0x00000000
$lr  : 0xb6c74718  →  <__libc_start_main+268> bl 0xb6c8b770 <__GI_exit>
$pc  : 0x010680  →  <main+12> mov r3,  #9
$cpsr: [negative ZERO CARRY overflow interrupt fast thumb]
───────────────────────────────────────────────────────── stack ────0xbefff4e8│+0x0000: 0x00000000   ← $sp
0xbefff4ec│+0x0004: 0x00000000
0xbefff4f0│+0x0008: 0x00000000
0xbefff4f4│+0x000c: 0xb6c74718  →  <__libc_start_main+268> bl 0xb6c8b770 <__GI_exit>         ← $r11
0xbefff4f8│+0x0010: 0xb6da6000  →  0x00148f10
0xbefff4fc│+0x0014: 0xbefff644  →  0xbefff774  →  "/home/DavidPaBe/Ejercicio1"
0xbefff500│+0x0018: 0x00000001
0xbefff504│+0x001c: 0x010674  →  <main+0> push {r11,  lr}
────────────────────────────────────────────────── code:arm:ARM ────      0x10674 <main+0>         push   {r11,  lr}
      0x10678 <main+4>         add    r11,  sp,  #4
      0x1067c <main+8>         sub    sp,  sp,  #8
 →    0x10680 <main+12>        mov    r3,  #9
      0x10684 <main+16>        str    r3,  [r11,  #-8]
      0x10688 <main+20>        mov    r3,  #9
      0x1068c <main+24>        str    r3,  [r11,  #-8]
      0x10690 <main+28>        ldr    r3,  [r11,  #-8]
      0x10694 <main+32>        cmp    r3,  #43  ; 0x2b
─────────────────────────────────────────────────────── threads ────[#0] Id 1, Name: "Ejercicio1", stopped 0x10680 in main (), reason: BREAKPOINT
───────────────────────────────────────────────────────── trace ────[#0] 0x10680 → main()
