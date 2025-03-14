# Addressing data in memory : 

`:` The processor may access one or more bytes of memory at a time. Let us consider a hexadecimal number 0725H. This number will require two bytes of memory. The high-order byte or most significant byte is 07 and the low-order byte is 25.

The processor stores data in reverse-byte sequence, i.e., a low-order byte is stored in a low memory address and a high-order byte in high memory address. So, if the processor brings the value 0725H from register to memory, it will transfer 25 first to the lower memory address and 07 to the next memory address.

![alt text](/Image_asm/memory.png)

---

### 8086 CPU has 8 general purpose registers, each register has its own name:

  - AX - the accumulator register (divided into AH / AL).
  - BX - the base address register (divided into BH / BL).
  - CX - the count register (divided into CH / CL).
  - DX - the data register (divided into DH / DL).
  - SI - source index register.
  - DI - destination index register.
  - BP - base pointer.
  - SP - stack pointer.

---

# INT 21h Function Cheat Sheet

INT 21h is a DOS interrupt that provides access to various system services such as file operations, device handling, and more. This cheat sheet includes some commonly used INT 21h functions.

## Display Functions

### Function 02h: Display Output

  -  Purpose : Outputs a character to the standard output.
  -  Input : `DL` = ASCII character to display.

### Function 09h: Display String

  -  Purpose : Displays a string terminated by a `$` character.
  -  Input : `DS:DX` = Address of the string.

## Input Functions

### Function 01h: Keyboard Input with Echo

  -  Purpose : Reads a character from the keyboard and echoes it to the display.
  -  Output : `AL` = ASCII character read.

### Function 08h: Character Input without Echo

  -  Purpose : Reads a character from the keyboard without echoing it.
  -  Output : `AL` = ASCII character read.

### Function 0Ah: Buffered Keyboard Input

  -  Purpose : Reads a string of characters into a buffer.
  -  Input : `DS:DX` = Address of the input buffer.

## File Handling Functions

### Function 3Ch: Create File

  -  Purpose : Creates a new file.
  -  Input : `DS:DX` = Address of the filename (ASCIIZ string), `CX` = File attribute.
  -  Output : `AX` = File handle.

### Function 3Dh: Open File

  -  Purpose : Opens an existing file.
  -  Input : `DS:DX` = Address of the filename (ASCIIZ string), `AL` = Access mode.
  -  Output : `AX` = File handle.

### Function 3Eh: Close File

  -  Purpose : Closes an open file.
  -  Input : `BX` = File handle.

### Function 40h: Write to File or Device

  -  Purpose : Writes data to a file or device.
  -  Input : `BX` = File handle, `CX` = Number of bytes to write, `DS:DX` = Address of the data.
  -  Output : `AX` = Number of bytes written.

### Function 41h: Delete File

  -  Purpose : Deletes a file.
  -  Input : `DS:DX` = Address of the filename (ASCIIZ string).

## System Functions

### Function 25h: Set Interrupt Vector

  -  Purpose : Sets the address of an interrupt handler.
  -  Input : `AL` = Interrupt number, `DS:DX` = Address of the interrupt handler.

### Function 35h: Get Interrupt Vector

  -  Purpose : Gets the address of an interrupt handler.
  -  Input : `AL` = Interrupt number.
  -  Output : `ES:BX` = Address of the interrupt handler.

### Function 4Ch: Terminate Process

  -  Purpose : Terminates a process and returns control to the operating system.
  -  Input : `AL` = Return code.

---