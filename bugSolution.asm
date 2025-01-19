mov ecx, [some_valid_index] ; Ensure ecx has a valid index
mov eax, [ebx+ecx*4]

;OR

;Check bounds
mov eax, ecx
mov edx, some_memory_limit ; Load the upper memory limit
cmp eax, edx
jge handle_error; Jump to error handling if the index is out of bounds
mov eax, [ebx+ecx*4]

;Error handling
handle_error:
; Handle the out-of-bounds memory access here (e.g., return an error code, etc.)