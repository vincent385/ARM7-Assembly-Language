.text
.align 2
.thumb
.thumb_func

main:
    push {r0-r1, lr}
    ldr r0, =(0x0300500C)
    ldr r0, [r0]
    ldr r1, =(0x20370B8)
    ldrh r0, [r0, #0xA]
    strh r0, [r1]
    ldr r0, =(0x0300500C)
    ldr r0, [r0]
    ldr r1, =(0x20370D0)
    ldrh r0, [r0, #0xC]
    strh r0, [r1]
    pop {r0-r1, pc}

.align 2
