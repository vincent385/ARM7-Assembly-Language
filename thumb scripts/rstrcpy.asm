.text
.align 2
.thumb
.thumb_func

main:
    push {r0-r2, lr}
    ldr r0, =(0x8247094)
    add r0, r0, #0xD
    ldr r1, =(0x20370D0)
    mov r2, #0xD
    ldrh r1, [r1]
    mul r1, r1, r2
    add r1, r1, r0
    ldr r0, =(0x2021D18)
    ldr r2, =(0x8008D84 +1)
    bl linker
    pop {r0-r2, pc}
linker:
    bx r2

.align 2
