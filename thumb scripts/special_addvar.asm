.text
.align 2
.thumb
.thumb_func

main:
    push {r0-r1, lr}

    @ load pointer addresses into registers
    ldr r0, =(0x20370B8) @ 0x8000
    ldr r1, =(0x20370D0) @ 0x800D

    @ load half words (2 bytes) from the data pointed to by the addresses we loaded
    ldrh r0, [r0]
    ldrh r1, [r1]

    # addvar 0x8000 0x800D
    add r0, r0, r1

    # load the address of 0x800D again because we lost it after line 15
    ldr r1, =(0x20370D0)

    # store the value in r0 at the address stored in r1
    strh r0, [r1]

    pop {r0-r1, pc}

.align 2
