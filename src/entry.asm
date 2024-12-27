    .section .text.entry
    .globl _start
_start:
     /* Set up kernel stacks. 
    csrr a0, mhartid
    and a0, a0, 0xff
    addi a0, a0, 1
    li a1, 4096
    mul a0, a0, a1
    la a2, kstack
    add a2, a2, a0
    mv sp, a2
    call rust_main
    */
    addi a0, a0, 1
    li a1, 4096
    mul a0, a0, a1
    la sp, kstack
    call rust_main

    .section ".data"
    .align 12
    .global kstack
kstack:
  /**
   * Allocate a guard page to protect the kernel stack from potential overflow
   * or corruption.
   */
    .space 4096 * 5
    .globl kstack_top
kstack_top:
  /*
   * Set up the user and kernel page tables.
   * Higher and lower half map to same physical memory region.
   
  la a0, kernel_pt_level0
  csrw satp, a0          # Set page table base address (use satp register in RISC-V)

  li a0, TCR_VALUE
  csrw tcr_el1, a0       # Set translation control register (RISC-V uses tcr, not TCR_EL1)

  li a0, MAIR_VALUE
  csrw mair_el1, a0      # Set memory attributes register (RISC-V uses mair, not MAIR_EL1)
*/
  /* Enable MMU. 
  csrr a0, mstatus
  or a0, a0, TLB_CTRL_MMU_ENABLED
  csrw mstatus, a0*/
