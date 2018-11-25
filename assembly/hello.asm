section .text

  global _start
  
_start:
  
  
  
    mov edx,len
    mov ecx,msg
    mov ebx,1
    mov eax,4
    
    
    
      mov ebx,0
    mov eax,1
    int 0x80
    
section .data

mdg db  "Hello, world!",0xa
len equ $ - msg
