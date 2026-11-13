0x40b800:  add      byte ptr [ebx - 0x7972f3ab], cl
0x40b806:  sub      byte ptr [ecx], al            
0x40b808:  add      byte ptr [eax], al            
0x40b80a:  mov      ecx, dword ptr fs:[0]         
0x40b811:  mov      dword ptr [esi + 0x128], ecx  
0x40b817:  mov      dword ptr fs:[0], eax         
0x40b81d:  mov      eax, edx                      
0x40b81f:  mov      ecx, dword ptr [ebp + 0x10]   
0x40b822:  mov      edx, dword ptr [edx]          
0x40b824:  movzx    ebx, word ptr [edx + 0x192]   
0x40b82b:  mov      dword ptr [esi + 8], edx      
0x40b82e:  cmp      ebx, 0xb                      
0x40b831:  jae      0x40b883                      
0x40b833:  mov      ecx, dword ptr [eax + 8]      
0x40b836:  lea      eax, [ecx + 1]                
0x40b839:  lea      edi, [ecx + ecx*2]            
0x40b83c:  mov      dword ptr [esi + 0xc], edi    
0x40b83f:  cmp      eax, ebx                      
0x40b841:  lea      edi, [edx + edi*4 + 0x10c]    
0x40b848:  jbe      0x40b8a2                      
0x40b84a:  mov      eax, dword ptr [ebp + 0x10]   
0x40b84d:  mov      eax, dword ptr [eax + 8]      
0x40b850:  mov      dword ptr [edi + 8], eax      
0x40b853:  mov      eax, dword ptr [ebp + 0x10]   
0x40b856:  movsd    xmm0, qword ptr [eax]         
0x40b85a:  mov      eax, dword ptr [ebp + 0x14]   
0x40b85d:  movsd    qword ptr [edi], xmm0         
0x40b861:  movsd    xmm0, qword ptr [eax + 0x10]  
0x40b866:  movsd    xmm2, qword ptr [eax]         
0x40b86a:  movsd    xmm1, qword ptr [eax + 8]     
0x40b86f:  movsd    qword ptr [esi + 0x50], xmm0  
0x40b874:  movsd    qword ptr [esi + 0x48], xmm1  
0x40b879:  movsd    qword ptr [esi + 0x40], xmm2  
0x40b87e:  jmp      0x40b930                      
0x40b883:  mov      edx, eax                      
0x40b885:  mov      eax, dword ptr [eax + 8]      
0x40b888:  cmp      eax, 5                        
0x40b88b:  jae      0x40b969                      
0x40b891:  mov      dword ptr [esi + 0x24], eax   
0x40b894:  mov      dword ptr [esi + 4], 4        
0x40b89b:  xor      ebx, ebx                      
0x40b89d:  jmp      0x40b999                      
0x40b8a2:  mov      dword ptr [esi + 0x24], ecx   
0x40b8a5:  lea      ecx, [edx + 0x10c]            
0x40b8ab:  mov      edx, edi                      
0x40b8ad:  mov      dword ptr [esi + 0x10], edi   
0x40b8b0:  mov      edi, ebx                      
0x40b8b2:  lea      eax, [eax + eax*2]            
0x40b8b5:  sub      edi, dword ptr [esi + 0x24]   
0x40b8b8:  mov      dword ptr [esi + 4], eax      
0x40b8bb:  lea      eax, [ecx + eax*4]            
0x40b8be:  lea      ecx, [edi*4]                  
0x40b8c5:  lea      ecx, [ecx + ecx*2]            
0x40b8c8:  push     ecx                           
0x40b8c9:  push     edx                           
0x40b8ca:  push     eax                           
0x40b8cb:  call     0x5cf3c0                      
0x40b8d0:  add      esp, 0xc                      
0x40b8d3:  mov      eax, dword ptr [ebp + 0x10]   
0x40b8d6:  mov      ecx, dword ptr [esi + 0x10]   
0x40b8d9:  mov      edx, dword ptr [esi + 4]      
0x40b8dc:  shl      edi, 3                        
0x40b8df:  movsd    xmm0, qword ptr [eax]         
0x40b8e3:  movsd    qword ptr [ecx], xmm0         
0x40b8e7:  mov      eax, dword ptr [eax + 8]      
0x40b8ea:  mov      dword ptr [ecx + 8], eax      
0x40b8ed:  mov      eax, dword ptr [ebp + 0x14]   
0x40b8f0:  mov      ecx, dword ptr [esi + 0xc]    
0x40b8f3:  movsd    xmm0, qword ptr [eax + 0x10]  
0x40b8f8:  movsd    xmm2, qword ptr [eax]         
0x40b8fc:  movsd    xmm1, qword ptr [eax + 8]     
0x40b901:  mov      eax, dword ptr [esi + 8]      
0x40b904:  lea      eax, [eax + ecx*8]            
0x40b907:  mov      ecx, dword ptr [esi + 8]      
0x40b90a:  movsd    qword ptr [esi + 0x50], xmm0  
0x40b90f:  movsd    qword ptr [esi + 0x48], xmm1  
0x40b914:  movsd    qword ptr [esi + 0x40], xmm2  
0x40b919:  lea      ecx, [ecx + edx*8]            
0x40b91c:  lea      edx, [edi + edi*2]            
0x40b91f:  push     edx                           
0x40b920:  push     eax                           
0x40b921:  push     ecx                           
0x40b922:  call     0x5cf3c0                      
0x40b927:  mov      edx, dword ptr [esi + 8]      
0x40b92a:  mov      ecx, dword ptr [esi + 0x24]   
0x40b92d:  add      esp, 0xc                      
0x40b930:  movsd    xmm0, qword ptr [esi + 0x50]  
0x40b935:  mov      edi, dword ptr [esi + 0xc]    
0x40b938:  inc      ebx                           
0x40b939:  mov      eax, dword ptr [ebp + 8]      
0x40b93c:  movsd    qword ptr [edx + edi*8 + 0x10], xmm0
0x40b942:  movsd    xmm0, qword ptr [esi + 0x40]  
0x40b947:  movsd    xmm1, qword ptr [esi + 0x48]  
0x40b94c:  movsd    qword ptr [edx + edi*8 + 8], xmm1
0x40b952:  movsd    qword ptr [edx + edi*8], xmm0 
0x40b957:  mov      edi, dword ptr [ebp + 0xc]    
0x40b95a:  mov      word ptr [edx + 0x192], bx    
0x40b961:  mov      edi, dword ptr [edi + 4]      
0x40b964:  jmp      0x40c14c                      
0x40b969:  je       0x40b980                      
0x40b96b:  cmp      eax, 6                        
0x40b96e:  jne      0x40b98a                      
0x40b970:  mov      dword ptr [esi + 4], 5        
0x40b977:  mov      dword ptr [esi + 0x24], 0     
0x40b97e:  jmp      0x40b997                      
0x40b980:  xor      ebx, ebx                      
0x40b982:  mov      dword ptr [esi + 0x24], eax   
0x40b985:  mov      dword ptr [esi + 4], eax      
0x40b988:  jmp      0x40b999                      
0x40b98a:  add      eax, -7                       
0x40b98d:  mov      dword ptr [esi + 4], 6        
0x40b994:  mov      dword ptr [esi + 0x24], eax   
0x40b997:  mov      bl, 1                         
0x40b999:  mov      eax, dword ptr [ecx]          
0x40b99b:  mov      ecx, dword ptr [ecx + 4]      
0x40b99e:  mov      edi, dword ptr [edx + 4]      
0x40b9a1:  mov      dword ptr [esi + 0x20], eax   
0x40b9a4:  mov      dword ptr [esi + 0x28], ecx   
0x40b9a7:  call     0x40da80                      
0x40b9ac:  push     8                             
0x40b9ae:  push     0x198                         
0x40b9b3:  call     0x4177f0                      
0x40b9b8:  add      esp, 8                        
0x40b9bb:  test     eax, eax                      
0x40b9bd:  je       0x40c53f                      
0x40b9c3:  mov      edx, dword ptr [esi + 8]      
0x40b9c6:  mov      dword ptr [esi + 0x10], edi   
0x40b9c9:  mov      edi, dword ptr [esi + 4]      
0x40b9cc:  mov      dword ptr [eax + 0x108], 0    
0x40b9d6:  mov      dword ptr [esi + 0x14], ebx   
0x40b9d9:  mov      dword ptr [esi + 0xc], eax    
0x40b9dc:  movzx    ecx, word ptr [edx + 0x192]   
0x40b9e3:  mov      ebx, edi                      
0x40b9e5:  mov      dword ptr [esi + 4], edi      
0x40b9e8:  not      ebx                           
0x40b9ea:  add      ebx, ecx                      
0x40b9ec:  lea      ecx, [edi + edi*2]            
0x40b9ef:  mov      word ptr [eax + 0x192], bx    
0x40b9f6:  cmp      ebx, 0xc                      
0x40b9f9:  mov      edi, dword ptr [edx + ecx*4 + 0x10c]
0x40ba00:  movsd    xmm0, qword ptr [edx + ecx*8 + 0x10]
0x40ba06:  mov      dword ptr [esi + 0x1c], edi   
0x40ba09:  mov      edi, dword ptr [edx + ecx*4 + 0x110]
0x40ba10:  mov      dword ptr [esi + 0x18], edi   
0x40ba13:  mov      edi, dword ptr [edx + ecx*4 + 0x114]
0x40ba1a:  movsd    qword ptr [esi + 0x50], xmm0  
0x40ba1f:  movsd    xmm0, qword ptr [edx + ecx*8] 
0x40ba24:  movsd    xmm1, qword ptr [edx + ecx*8 + 8]
0x40ba2a:  mov      dword ptr [esi + 0x38], edi   
0x40ba2d:  movsd    qword ptr [esi + 0x48], xmm1  
0x40ba32:  movsd    qword ptr [esi + 0x40], xmm0  
0x40ba37:  jae      0x40c51e                      
0x40ba3d:  lea      ecx, [edx + ecx*8]            
0x40ba40:  mov      edi, eax                      
0x40ba42:  lea      eax, [edx + 0x10c]            
0x40ba48:  mov      dword ptr [esi + 0x20], ecx   
0x40ba4b:  mov      ecx, dword ptr [esi + 4]      
0x40ba4e:  lea      edx, [edi + 0x10c]            
0x40ba54:  lea      ecx, [ecx + ecx*2 + 3]        
0x40ba58:  mov      dword ptr [esi + 0x28], ecx   
0x40ba5b:  lea      eax, [eax + ecx*4]            
0x40ba5e:  lea      ecx, [ebx*4]                  
0x40ba65:  lea      ecx, [ecx + ecx*2]            
0x40ba68:  push     ecx                           
0x40ba69:  push     eax                           
0x40ba6a:  push     edx                           
0x40ba6b:  call     0x5cf3c0                      
0x40ba70:  add      esp, 0xc                      
0x40ba73:  mov      eax, dword ptr [esi + 8]      
0x40ba76:  mov      ecx, dword ptr [esi + 0x28]   
0x40ba79:  shl      ebx, 3                        
0x40ba7c:  lea      eax, [eax + ecx*8]            
0x40ba7f:  lea      ecx, [ebx + ebx*2]            
0x40ba82:  push     ecx                           
0x40ba83:  push     eax                           
0x40ba84:  push     edi                           
0x40ba85:  call     0x5cf3c0                      
0x40ba8a:  mov      eax, dword ptr [esi + 8]      
0x40ba8d:  add      esp, 0xc                      
0x40ba90:  mov      ecx, dword ptr [esi + 4]      
0x40ba93:  mov      word ptr [eax + 0x192], cx    
0x40ba9a:  mov      ecx, dword ptr [esi + 0x20]   
0x40ba9d:  movsd    xmm0, qword ptr [ecx]         
0x40baa1:  movsd    xmm1, qword ptr [ecx + 8]     
0x40baa6:  movsd    qword ptr [esi + 0xac], xmm0  
0x40baae:  movsd    qword ptr [esi + 0xb4], xmm1  
0x40bab6:  movsd    xmm0, qword ptr [ecx + 0x10]  
0x40babb:  xor      ecx, ecx                      
0x40babd:  cmp      byte ptr [esi + 0x14], 0      
0x40bac1:  movsd    qword ptr [esi + 0xbc], xmm0  
0x40bac9:  cmove    edi, eax                      
0x40bacc:  cmove    ecx, dword ptr [esi + 0x10]   
0x40bad0:  movzx    eax, word ptr [edi + 0x192]   
0x40bad7:  mov      dword ptr [esi + 0x5c], ecx   
0x40bada:  mov      dword ptr [esi + 0x14], eax   
0x40badd:  movzx    ebx, ax                       
0x40bae0:  mov      eax, dword ptr [esi + 0x24]   
0x40bae3:  sub      ebx, eax                      
0x40bae5:  lea      eax, [eax + eax*2]            
0x40bae8:  lea      edx, [edi + eax*4 + 0x10c]    
0x40baef:  mov      dword ptr [esi + 4], eax      
0x40baf2:  jbe      0x40bb70                      
0x40baf4:  mov      ecx, dword ptr [esi + 4]      
0x40baf7:  lea      eax, [edi + 0x10c]            
0x40bafd:  lea      eax, [eax + ecx*4 + 0xc]      
0x40bb01:  lea      ecx, [ebx*4]                  
0x40bb08:  lea      ecx, [ecx + ecx*2]            
0x40bb0b:  push     ecx                           
0x40bb0c:  mov      dword ptr [esi + 0x20], edx   
0x40bb0f:  push     edx                           
0x40bb10:  push     eax                           
0x40bb11:  call     0x5cf3c0                      
0x40bb16:  add      esp, 0xc                      
0x40bb19:  mov      eax, dword ptr [ebp + 0x10]   
0x40bb1c:  mov      ecx, dword ptr [esi + 0x20]   
0x40bb1f:  shl      ebx, 3                        
0x40bb22:  lea      edx, [ebx + ebx*2]            
0x40bb25:  movsd    xmm0, qword ptr [eax]         
0x40bb29:  movsd    qword ptr [ecx], xmm0         
0x40bb2d:  mov      eax, dword ptr [eax + 8]      
0x40bb30:  mov      dword ptr [ecx + 8], eax      
0x40bb33:  mov      eax, dword ptr [ebp + 0x14]   
0x40bb36:  mov      ecx, dword ptr [esi + 4]      
0x40bb39:  movsd    xmm0, qword ptr [eax + 0x10]  
0x40bb3e:  movsd    xmm2, qword ptr [eax]         
0x40bb42:  movsd    xmm1, qword ptr [eax + 8]     
0x40bb47:  lea      eax, [edi + ecx*8]            
0x40bb4a:  lea      ecx, [edi + ecx*8 + 0x18]     
0x40bb4e:  movsd    qword ptr [esi + 0x50], xmm0  
0x40bb53:  movsd    qword ptr [esi + 0x48], xmm1  
0x40bb58:  movsd    qword ptr [esi + 0x40], xmm2  
0x40bb5d:  push     edx                           
0x40bb5e:  push     eax                           
0x40bb5f:  push     ecx                           
0x40bb60:  call     0x5cf3c0                      
0x40bb65:  mov      edx, dword ptr [esi + 8]      
0x40bb68:  add      esp, 0xc                      
0x40bb6b:  mov      eax, dword ptr [ebp + 8]      
0x40bb6e:  jmp      0x40bba7                      
0x40bb70:  mov      ecx, dword ptr [ebp + 0x10]   
0x40bb73:  mov      eax, dword ptr [ecx + 8]      
0x40bb76:  mov      dword ptr [edx + 8], eax      
0x40bb79:  mov      eax, dword ptr [ebp + 0x14]   
0x40bb7c:  movsd    xmm0, qword ptr [ecx]         
0x40bb80:  movsd    qword ptr [edx], xmm0         
0x40bb84:  mov      edx, dword ptr [esi + 8]      
0x40bb87:  movsd    xmm0, qword ptr [eax + 0x10]  
0x40bb8c:  movsd    xmm2, qword ptr [eax]         
0x40bb90:  movsd    xmm1, qword ptr [eax + 8]     
0x40bb95:  mov      eax, dword ptr [ebp + 8]      
0x40bb98:  movsd    qword ptr [esi + 0x50], xmm0  
0x40bb9d:  movsd    qword ptr [esi + 0x48], xmm1  
0x40bba2:  movsd    qword ptr [esi + 0x40], xmm2  
0x40bba7:  movsd    xmm0, qword ptr [esi + 0x50]  
0x40bbac:  mov      ebx, dword ptr [esi + 4]      
0x40bbaf:  mov      ecx, dword ptr [esi + 0x14]   
0x40bbb2:  movsd    qword ptr [edi + ebx*8 + 0x10], xmm0
0x40bbb8:  inc      ecx                           
0x40bbb9:  cmp      dword ptr [esi + 0x1c], -1    
0x40bbbd:  movsd    xmm0, qword ptr [esi + 0x40]  
0x40bbc2:  movsd    xmm1, qword ptr [esi + 0x48]  
0x40bbc7:  movsd    qword ptr [edi + ebx*8 + 8], xmm1
0x40bbcd:  movsd    qword ptr [edi + ebx*8], xmm0 
0x40bbd2:  mov      word ptr [edi + 0x192], cx    
0x40bbd9:  mov      ecx, dword ptr [esi + 0xc0]   
0x40bbdf:  movsd    xmm0, qword ptr [esi + 0xb8]  
0x40bbe7:  movsd    xmm2, qword ptr [esi + 0xa8]  
0x40bbef:  movsd    xmm1, qword ptr [esi + 0xb0]  
0x40bbf7:  mov      dword ptr [esi + 0x80], ecx   
0x40bbfd:  movsd    qword ptr [esi + 0x78], xmm0  
0x40bc02:  movsd    qword ptr [esi + 0x70], xmm1  
0x40bc07:  movsd    qword ptr [esi + 0x68], xmm2  
0x40bc0c:  je       0x40c144                      
0x40bc12:  mov      eax, dword ptr [esi + 0x80]   
0x40bc18:  movsd    xmm0, qword ptr [esi + 0x78]  
0x40bc1d:  movsd    xmm2, qword ptr [esi + 0x68]  
0x40bc22:  movsd    xmm1, qword ptr [esi + 0x70]  
0x40bc27:  mov      ebx, edx                      
0x40bc29:  mov      dword ptr [esi + 0x64], edi   
0x40bc2c:  mov      dword ptr [esi + 0xa0], eax   
0x40bc32:  movsd    qword ptr [esi + 0x98], xmm0  
0x40bc3a:  movsd    qword ptr [esi + 0x90], xmm1  
0x40bc42:  movsd    qword ptr [esi + 0x88], xmm2  
0x40bc4a:  mov      eax, dword ptr [edx + 0x108]  
0x40bc50:  test     eax, eax                      
0x40bc52:  je       0x40c156                      
0x40bc58:  mov      edx, dword ptr [esi + 0x10]   
0x40bc5b:  mov      ecx, dword ptr [esi + 0x1c]   
0x40bc5e:  mov      edi, dword ptr [esi + 0xc]    
0x40bc61:  test     edx, edx                      
0x40bc63:  mov      dword ptr [esi + 0x20], edx   
0x40bc66:  mov      edx, dword ptr [esi + 0x18]   
0x40bc69:  mov      dword ptr [esi + 0x28], ecx   
0x40bc6c:  mov      dword ptr [esi + 0x60], edi   
0x40bc6f:  sete     byte ptr [esi + 4]            
0x40bc73:  mov      dword ptr [esi + 0x34], edx   
0x40bc76:  nop      word ptr cs:[eax + eax]       
0x40bc80:  lea      edi, [esi + 0x8c]             
0x40bc86:  movzx    ebx, word ptr [ebx + 0x190]   
0x40bc8d:  test     byte ptr [esi + 4], 1         
0x40bc91:  movsd    xmm0, qword ptr [edi + 0x10]  
0x40bc96:  movsd    xmm2, qword ptr [edi]         
0x40bc9a:  movsd    xmm1, qword ptr [edi + 8]     
0x40bc9f:  movsd    qword ptr [esi + 0x118], xmm0 
0x40bca7:  movsd    qword ptr [esi + 0x110], xmm1 
0x40bcaf:  movsd    qword ptr [esi + 0x108], xmm2 
0x40bcb7:  je       0x40c4ba                      
0x40bcbd:  mov      edx, eax                      
0x40bcbf:  movzx    eax, bx                       
0x40bcc2:  movzx    ecx, word ptr [edx + 0x192]   
0x40bcc9:  mov      dword ptr [esi + 0x10], eax   
0x40bccc:  mov      dword ptr [esi + 8], edx      
0x40bccf:  cmp      ecx, 0xb                      
0x40bcd2:  mov      dword ptr [esi + 0x18], ecx   
0x40bcd5:  jb       0x40c2da                      
0x40bcdb:  cmp      bx, 5                         
0x40bcdf:  jae      0x40bcf0                      
0x40bce1:  mov      edi, 4                        
0x40bce6:  xor      ebx, ebx                      
0x40bce8:  jmp      0x40bd30                      
0x40bcea:  nop      word ptr [eax + eax]          
0x40bcf0:  mov      eax, dword ptr [esi + 0x10]   
0x40bcf3:  movzx    edi, bx                       
0x40bcf6:  je       0x40bd0d                      
0x40bcf8:  cmp      edi, 6                        
0x40bcfb:  jne      0x40bd14                      
0x40bcfd:  mov      bl, 1                         
0x40bcff:  mov      edi, 5                        
0x40bd04:  mov      dword ptr [esi + 0x10], 0     
0x40bd0b:  jmp      0x40bd30                      
0x40bd0d:  xor      ebx, ebx                      
0x40bd0f:  mov      dword ptr [esi + 0x10], edi   
0x40bd12:  jmp      0x40bd30                      
0x40bd14:  add      eax, -7                       
0x40bd17:  mov      bl, 1                         
0x40bd19:  mov      edi, 6                        
0x40bd1e:  mov      dword ptr [esi + 0x10], eax   
0x40bd21:  nop      word ptr cs:[eax + eax]       
0x40bd2b:  nop      dword ptr [eax + eax]         
0x40bd30:  call     0x40da80                      
0x40bd35:  push     8                             
0x40bd37:  push     0x1c8                         
0x40bd3c:  call     0x4177f0                      
0x40bd41:  add      esp, 8                        
0x40bd44:  test     eax, eax                      
0x40bd46:  je       0x40c4dd                      
0x40bd4c:  mov      ecx, dword ptr [esi + 8]      
0x40bd4f:  mov      dword ptr [eax + 0x108], 0    
0x40bd59:  mov      word ptr [eax + 0x192], 0     
0x40bd62:  mov      edx, edi                      
0x40bd64:  mov      edi, eax                      
0x40bd66:  mov      dword ptr [esi + 0x14], eax   
0x40bd69:  mov      dword ptr [esi + 0x3c], ebx   
0x40bd6c:  mov      ebx, edx                      
0x40bd6e:  mov      dword ptr [esi + 4], edx      
0x40bd71:  mov      dword ptr [esi + 0xc], edi    
0x40bd74:  not      ebx                           
0x40bd76:  movzx    eax, word ptr [ecx + 0x192]   
0x40bd7d:  add      ebx, eax                      
0x40bd7f:  lea      eax, [edx + edx*2]            
0x40bd82:  mov      word ptr [edi + 0x192], bx    
0x40bd89:  cmp      ebx, 0xc                      
0x40bd8c:  mov      edx, dword ptr [ecx + eax*4 + 0x10c]
0x40bd93:  movsd    xmm0, qword ptr [ecx + eax*8 + 0x10]
0x40bd99:  mov      dword ptr [esi + 0x1c], edx   
0x40bd9c:  mov      edx, dword ptr [ecx + eax*4 + 0x110]
0x40bda3:  mov      dword ptr [esi + 0x30], edx   
0x40bda6:  mov      edx, dword ptr [ecx + eax*4 + 0x114]
0x40bdad:  movsd    qword ptr [esi + 0x100], xmm0 
0x40bdb5:  movsd    xmm0, qword ptr [ecx + eax*8] 
0x40bdba:  movsd    xmm1, qword ptr [ecx + eax*8 + 8]
0x40bdc0:  movsd    qword ptr [esi + 0xf8], xmm1  
0x40bdc8:  movsd    qword ptr [esi + 0xf0], xmm0  
0x40bdd0:  jae      0x40c478                      
0x40bdd6:  lea      eax, [ecx + 0x10c]            
0x40bddc:  mov      ecx, dword ptr [esi + 4]      
0x40bddf:  mov      dword ptr [esi + 0x2c], edx   
0x40bde2:  lea      edx, [ebx*4]                  
0x40bde9:  lea      edx, [edx + edx*2]            
0x40bdec:  lea      edi, [ecx + ecx*2 + 3]        
0x40bdf0:  mov      ecx, dword ptr [esi + 0x14]   
0x40bdf3:  lea      eax, [eax + edi*4]            
0x40bdf6:  add      ecx, 0x10c                    
0x40bdfc:  push     edx                           
0x40bdfd:  push     eax                           
0x40bdfe:  push     ecx                           
0x40bdff:  call     0x5cf3c0                      
0x40be04:  add      esp, 0xc                      
0x40be07:  mov      eax, dword ptr [esi + 8]      
0x40be0a:  shl      ebx, 3                        
0x40be0d:  lea      ecx, [ebx + ebx*2]            
0x40be10:  lea      eax, [eax + edi*8]            
0x40be13:  push     ecx                           
0x40be14:  push     eax                           
0x40be15:  mov      ebx, dword ptr [esi + 0xc]    
0x40be18:  push     ebx                           
0x40be19:  call     0x5cf3c0                      
0x40be1e:  mov      edi, dword ptr [esi + 8]      
0x40be21:  add      esp, 0xc                      
0x40be24:  mov      eax, dword ptr [esi + 4]      
0x40be27:  mov      word ptr [edi + 0x192], ax    
0x40be2e:  mov      eax, dword ptr [esi + 0x1c]   
0x40be31:  movzx    ebx, word ptr [ebx + 0x192]   
0x40be38:  movsd    xmm0, qword ptr [esi + 0x100] 
0x40be40:  movsd    xmm2, qword ptr [esi + 0xf0]  
0x40be48:  movsd    xmm1, qword ptr [esi + 0xf8]  
0x40be50:  mov      dword ptr [esi + 0xa8], eax   
0x40be56:  mov      eax, dword ptr [esi + 0x30]   
0x40be59:  cmp      ebx, 0xb                      
0x40be5c:  mov      dword ptr [esi + 0xac], eax   
0x40be62:  mov      eax, dword ptr [esi + 0x2c]   
0x40be65:  mov      dword ptr [esi + 0xb0], eax   
0x40be6b:  lea      eax, [esi + 0xb8]             
0x40be71:  movsd    qword ptr [eax + 0x10], xmm0  
0x40be76:  movsd    qword ptr [eax + 8], xmm1     
0x40be7b:  movsd    qword ptr [eax], xmm2         
0x40be7f:  lea      eax, [ebx + 1]                
0x40be82:  ja       0x40c499                      
0x40be88:  mov      ecx, dword ptr [esi + 0x18]   
0x40be8b:  sub      ecx, dword ptr [esi + 4]      
0x40be8e:  cmp      ecx, eax                      
0x40be90:  jne      0x40c4fb                      
0x40be96:  mov      ecx, dword ptr [esi + 0x14]   
0x40be99:  mov      edx, edi                      
0x40be9b:  mov      edi, dword ptr [esi + 4]      
0x40be9e:  inc      dword ptr [esi + 0x20]        
0x40bea1:  shl      eax, 2                        
0x40bea4:  add      ecx, 0x198                    
0x40beaa:  lea      edx, [edx + edi*4 + 0x19c]    
0x40beb1:  push     eax                           
0x40beb2:  push     edx                           
0x40beb3:  push     ecx                           
0x40beb4:  call     0x5cf3c0                      
0x40beb9:  add      esp, 0xc                      
0x40bebc:  xor      eax, eax                      
0x40bebe:  nop                                    
0x40bec0:  mov      edi, dword ptr [esi + 0xc]    
0x40bec3:  mov      ecx, eax                      
0x40bec5:  cmp      eax, ebx                      
0x40bec7:  mov      edx, dword ptr [edi + eax*4 + 0x198]
0x40bece:  adc      eax, 0                        
0x40bed1:  cmp      ecx, ebx                      
0x40bed3:  mov      dword ptr [edx + 0x108], edi  
0x40bed9:  mov      word ptr [edx + 0x190], cx    
0x40bee0:  jae      0x40bee6                      
0x40bee2:  cmp      eax, ebx                      
0x40bee4:  jbe      0x40bec0                      
0x40bee6:  mov      eax, dword ptr [esi + 0xb0]   
0x40beec:  cmp      byte ptr [esi + 0x3c], 0      
0x40bef0:  mov      edi, dword ptr [esi + 0x14]   
0x40bef3:  mov      edx, dword ptr [esi + 0x10]   
0x40bef6:  mov      ecx, dword ptr [esi + 0xac]   
0x40befc:  mov      dword ptr [esi + 0xec], eax   
0x40bf02:  lea      eax, [esi + 0xb8]             
0x40bf08:  cmove    edi, dword ptr [esi + 8]      
0x40bf0c:  mov      dword ptr [esi + 0x18], ecx   
0x40bf0f:  movsd    xmm1, qword ptr [eax + 4]     
0x40bf14:  movsd    xmm0, qword ptr [eax - 4]     
0x40bf19:  movsd    qword ptr [esi + 0x70], xmm1  
0x40bf1e:  movsd    xmm1, qword ptr [eax + 0xc]   
0x40bf23:  mov      eax, dword ptr [eax + 0x14]   
0x40bf26:  movsd    qword ptr [esi + 0x68], xmm0  
0x40bf2b:  movsd    qword ptr [esi + 0x78], xmm1  
0x40bf30:  mov      dword ptr [esi + 0x80], eax   
0x40bf36:  movzx    eax, word ptr [edi + 0x192]   
0x40bf3d:  mov      ebx, eax                      
0x40bf3f:  sub      ebx, edx                      
0x40bf41:  mov      dword ptr [esi + 0x3c], ebx   
0x40bf44:  mov      ebx, eax                      
0x40bf46:  lea      eax, [eax + 1]                
0x40bf49:  mov      dword ptr [esi + 0x30], eax   
0x40bf4c:  lea      eax, [edx + 1]                
0x40bf4f:  mov      dword ptr [esi + 4], eax      
0x40bf52:  lea      eax, [edx + edx*2]            
0x40bf55:  mov      dword ptr [esi + 0x2c], eax   
0x40bf58:  lea      eax, [edi + eax*4 + 0x10c]    
0x40bf5f:  mov      dword ptr [esi + 0x14], eax   
0x40bf62:  jbe      0x40c030                      
0x40bf68:  mov      ecx, dword ptr [esi + 4]      
0x40bf6b:  lea      eax, [edi + 0x10c]            
0x40bf71:  lea      ecx, [ecx + ecx*2]            
0x40bf74:  mov      dword ptr [esi + 0xe4], ecx   
0x40bf7a:  lea      eax, [eax + ecx*4]            
0x40bf7d:  mov      ecx, dword ptr [esi + 0x3c]   
0x40bf80:  lea      ecx, [ecx*4]                  
0x40bf87:  mov      dword ptr [esi + 0xe8], ecx   
0x40bf8d:  lea      ecx, [ecx + ecx*2]            
0x40bf90:  push     ecx                           
0x40bf91:  push     dword ptr [esi + 0x14]        
0x40bf94:  push     eax                           
0x40bf95:  call     0x5cf3c0                      
0x40bf9a:  add      esp, 0xc                      
0x40bf9d:  mov      eax, dword ptr [esi + 0x28]   
0x40bfa0:  mov      ecx, dword ptr [esi + 0x14]   
0x40bfa3:  mov      edx, dword ptr [esi + 0x3c]   
0x40bfa6:  mov      dword ptr [ecx], eax          
0x40bfa8:  mov      eax, dword ptr [esi + 0x34]   
0x40bfab:  shl      edx, 3                        
0x40bfae:  lea      edx, [edx + edx*2]            
0x40bfb1:  mov      dword ptr [ecx + 4], eax      
0x40bfb4:  mov      eax, dword ptr [esi + 0x38]   
0x40bfb7:  mov      dword ptr [ecx + 8], eax      
0x40bfba:  mov      eax, dword ptr [esi + 0x2c]   
0x40bfbd:  mov      ecx, dword ptr [esi + 0xe4]   
0x40bfc3:  lea      eax, [edi + eax*8]            
0x40bfc6:  lea      ecx, [edi + ecx*8]            
0x40bfc9:  push     edx                           
0x40bfca:  push     eax                           
0x40bfcb:  push     ecx                           
0x40bfcc:  call     0x5cf3c0                      
0x40bfd1:  add      esp, 0xc                      
0x40bfd4:  lea      eax, [esi + 0x8c]             
0x40bfda:  mov      ecx, dword ptr [esi + 0x2c]   
0x40bfdd:  movsd    xmm0, qword ptr [eax]         
0x40bfe1:  movsd    xmm1, qword ptr [eax + 8]     
0x40bfe6:  movsd    qword ptr [edi + ecx*8], xmm0 
0x40bfeb:  movsd    qword ptr [edi + ecx*8 + 8], xmm1
0x40bff1:  movsd    xmm0, qword ptr [eax + 0x10]  
0x40bff6:  mov      eax, dword ptr [esi + 4]      
0x40bff9:  movsd    qword ptr [edi + ecx*8 + 0x10], xmm0
0x40bfff:  mov      ecx, dword ptr [esi + 0x10]   
0x40c002:  lea      eax, [edi + eax*4 + 0x198]    
0x40c009:  lea      ecx, [edi + ecx*4 + 0x1a0]    
0x40c010:  push     dword ptr [esi + 0xe8]        
0x40c016:  push     eax                           
0x40c017:  push     ecx                           
0x40c018:  call     0x5cf3c0                      
0x40c01d:  mov      edx, dword ptr [esi + 0x10]   
0x40c020:  add      esp, 0xc                      
0x40c023:  jmp      0x40c06c                      
0x40c025:  nop      word ptr cs:[eax + eax]       
0x40c02f:  nop                                    
0x40c030:  mov      eax, dword ptr [esi + 0x28]   
0x40c033:  mov      ecx, dword ptr [esi + 0x14]   
0x40c036:  mov      dword ptr [ecx], eax          
0x40c038:  mov      eax, dword ptr [esi + 0x34]   
0x40c03b:  mov      dword ptr [ecx + 4], eax      
0x40c03e:  mov      eax, dword ptr [esi + 0x38]   
0x40c041:  mov      dword ptr [ecx + 8], eax      
0x40c044:  lea      eax, [esi + 0x8c]             
0x40c04a:  lea      ecx, [edx + edx*2]            
0x40c04d:  movsd    xmm0, qword ptr [eax + 0x10]  
0x40c052:  movsd    qword ptr [edi + ecx*8 + 0x10], xmm0
0x40c058:  movsd    xmm0, qword ptr [eax]         
0x40c05c:  movsd    xmm1, qword ptr [eax + 8]     
0x40c061:  movsd    qword ptr [edi + ecx*8 + 8], xmm1
0x40c067:  movsd    qword ptr [edi + ecx*8], xmm0 
0x40c06c:  lea      eax, [ebx + 2]                
0x40c06f:  cmp      dword ptr [esi + 4], eax      
0x40c072:  mov      eax, dword ptr [esi + 0x60]   
0x40c075:  mov      dword ptr [edi + edx*4 + 0x19c], eax
0x40c07c:  mov      eax, dword ptr [esi + 0x30]   
0x40c07f:  mov      word ptr [edi + 0x192], ax    
0x40c086:  jae      0x40c0ac                      
0x40c088:  dec      edx                           
0x40c089:  nop      dword ptr [eax]               
0x40c090:  mov      eax, dword ptr [edi + edx*4 + 0x1a0]
0x40c097:  lea      ecx, [edx + 2]                
0x40c09a:  inc      edx                           
0x40c09b:  cmp      ebx, edx                      
0x40c09d:  mov      dword ptr [eax + 0x108], edi  
0x40c0a3:  mov      word ptr [eax + 0x190], cx    
0x40c0aa:  jne      0x40c090                      
0x40c0ac:  mov      ecx, dword ptr [esi + 0x1c]   
0x40c0af:  mov      eax, dword ptr [esi + 0x80]   
0x40c0b5:  movsd    xmm0, qword ptr [esi + 0x78]  
0x40c0ba:  movsd    xmm2, qword ptr [esi + 0x68]  
0x40c0bf:  movsd    xmm1, qword ptr [esi + 0x70]  
0x40c0c4:  cmp      ecx, -1                       
0x40c0c7:  mov      dword ptr [esi + 0x58], eax   
0x40c0ca:  movsd    qword ptr [esi + 0x50], xmm0  
0x40c0cf:  movsd    qword ptr [esi + 0x48], xmm1  
0x40c0d4:  movsd    qword ptr [esi + 0x40], xmm2  
0x40c0d9:  je       0x40c44f                      
0x40c0df:  mov      eax, dword ptr [esi + 0x58]   
0x40c0e2:  movsd    xmm0, qword ptr [esi + 0x50]  
0x40c0e7:  movsd    xmm2, qword ptr [esi + 0x40]  
0x40c0ec:  movsd    xmm1, qword ptr [esi + 0x48]  
0x40c0f1:  mov      ebx, dword ptr [esi + 8]      
0x40c0f4:  mov      edx, dword ptr [esi + 0x20]   
0x40c0f7:  mov      dword ptr [esi + 0x28], ecx   
0x40c0fa:  mov      edi, dword ptr [esi + 0xc]    
0x40c0fd:  mov      ecx, dword ptr [esi + 0xec]   
0x40c103:  mov      byte ptr [esi + 4], 1         
0x40c107:  mov      dword ptr [esi + 0xa0], eax   
0x40c10d:  movsd    qword ptr [esi + 0x98], xmm0  
0x40c115:  movsd    qword ptr [esi + 0x90], xmm1  
0x40c11d:  movsd    qword ptr [esi + 0x88], xmm2  
0x40c125:  mov      dword ptr [esi + 0x10], edx   
0x40c128:  mov      edx, dword ptr [esi + 0x18]   
0x40c12b:  mov      dword ptr [esi + 0x60], edi   
0x40c12e:  mov      dword ptr [esi + 0x38], ecx   
0x40c131:  mov      eax, dword ptr [ebx + 0x108]  
0x40c137:  mov      dword ptr [esi + 0x34], edx   
0x40c13a:  test     eax, eax                      
0x40c13c:  jne      0x40bc80                      
0x40c142:  jmp      0x40c166                      
0x40c144:  mov      edx, edi                      
0x40c146:  mov      ecx, dword ptr [esi + 0x24]   
0x40c149:  mov      edi, dword ptr [esi + 0x5c]   
0x40c14c:  mov      dword ptr [eax], edx          
0x40c14e:  mov      dword ptr [eax + 4], edi      
0x40c151:  jmp      0x40c460                      
0x40c156:  mov      ecx, dword ptr [esi + 0x38]   
0x40c159:  mov      edi, dword ptr [esi + 0xc]    
0x40c15c:  mov      edx, dword ptr [esi + 0x18]   
0x40c15f:  mov      dword ptr [esi + 0x20], 0     
0x40c166:  mov      eax, dword ptr [esi + 0xa0]   
0x40c16c:  movsd    xmm0, qword ptr [esi + 0x98]  
0x40c174:  movsd    xmm1, qword ptr [esi + 0x90]  
0x40c17c:  mov      dword ptr [esi + 0x18], edx   
0x40c17f:  mov      dword ptr [esi + 0xc], edi    
0x40c182:  mov      dword ptr [esi + 0xcc], eax   
0x40c188:  movsd    qword ptr [esi + 0xc4], xmm0  
0x40c190:  movsd    xmm0, qword ptr [esi + 0x88]  
0x40c198:  mov      eax, dword ptr [esi + 0x1c]   
0x40c19b:  movsd    qword ptr [esi + 0xbc], xmm1  
0x40c1a3:  movsd    qword ptr [esi + 0xb4], xmm0  
0x40c1ab:  mov      dword ptr [esi + 0xa8], eax   
0x40c1b1:  mov      dword ptr [esi + 0xac], edx   
0x40c1b7:  mov      dword ptr [esi + 0xb0], ecx   
0x40c1bd:  mov      dword ptr [esi + 0xd0], ebx   
0x40c1c3:  mov      ebx, dword ptr [esi + 0x10]   
0x40c1c6:  mov      eax, dword ptr [ebp + 0x18]   
0x40c1c9:  mov      edx, dword ptr [esi + 0x20]   
0x40c1cc:  mov      dword ptr [esi + 0xd4], ebx   
0x40c1d2:  mov      ebx, dword ptr [eax]          
0x40c1d4:  mov      dword ptr [esi + 0xd8], edi   
0x40c1da:  mov      dword ptr [esi + 0xdc], edx   
0x40c1e0:  mov      eax, dword ptr [ebx]          
0x40c1e2:  test     eax, eax                      
0x40c1e4:  mov      dword ptr [esi + 8], eax      
0x40c1e7:  je       0x40c55a                      
0x40c1ed:  mov      edi, dword ptr [ebx + 4]      
0x40c1f0:  call     0x40da80                      
0x40c1f5:  push     8                             
0x40c1f7:  push     0x1c8                         
0x40c1fc:  call     0x4177f0                      
0x40c201:  add      esp, 8                        
0x40c204:  test     eax, eax                      
0x40c206:  je       0x40c573                      
0x40c20c:  mov      edx, dword ptr [esi + 8]      
0x40c20f:  mov      ecx, edi                      
0x40c211:  mov      dword ptr [eax + 0x108], 0    
0x40c21b:  mov      word ptr [eax + 0x192], 0     
0x40c224:  mov      dword ptr [esi + 4], edi      
0x40c227:  mov      edi, eax                      
0x40c229:  inc      ecx                           
0x40c22a:  mov      dword ptr [eax + 0x198], edx  
0x40c230:  mov      eax, dword ptr [ebp + 8]      
0x40c233:  je       0x40c58e                      
0x40c239:  mov      dword ptr [edx + 0x108], edi  
0x40c23f:  mov      word ptr [edx + 0x190], 0     
0x40c248:  mov      dword ptr [ebx], edi          
0x40c24a:  mov      dword ptr [ebx + 4], ecx      
0x40c24d:  mov      ecx, dword ptr [esi + 4]      
0x40c250:  lea      edx, [esi + 0x8c]             
0x40c256:  movsd    xmm0, qword ptr [edx + 0x10]  
0x40c25b:  movsd    xmm2, qword ptr [edx]         
0x40c25f:  movsd    xmm1, qword ptr [edx + 8]     
0x40c264:  cmp      dword ptr [esi + 0x20], ecx   
0x40c267:  movsd    qword ptr [esi + 0x78], xmm0  
0x40c26c:  movsd    qword ptr [esi + 0x70], xmm1  
0x40c271:  movsd    qword ptr [esi + 0x68], xmm2  
0x40c276:  jne      0x40c5aa                      
0x40c27c:  mov      ecx, dword ptr [esi + 0xb0]   
0x40c282:  movsd    xmm0, qword ptr [edx]         
0x40c286:  movsd    xmm1, qword ptr [edx + 8]     
0x40c28b:  movsd    xmm2, qword ptr [edx + 0x10]  
0x40c290:  mov      edx, dword ptr [esi + 0xc]    
0x40c293:  movsd    xmm3, qword ptr [esi + 0xa8]  
0x40c29b:  mov      word ptr [edi + 0x192], 1     
0x40c2a4:  mov      dword ptr [edx + 0x108], edi  
0x40c2aa:  mov      dword ptr [edi + 0x114], ecx  
0x40c2b0:  movsd    qword ptr [edi + 0x10c], xmm3 
0x40c2b8:  movsd    qword ptr [edi], xmm0         
0x40c2bc:  movsd    qword ptr [edi + 8], xmm1     
0x40c2c1:  movsd    qword ptr [edi + 0x10], xmm2  
0x40c2c6:  mov      dword ptr [edi + 0x19c], edx  
0x40c2cc:  mov      word ptr [edx + 0x190], 1     
0x40c2d5:  jmp      0x40c452                      
0x40c2da:  mov      eax, dword ptr [esi + 0x18]   
0x40c2dd:  cmp      bx, word ptr [esi + 0x18]     
0x40c2e1:  lea      eax, [eax + 1]                
0x40c2e4:  mov      dword ptr [esi + 0x1c], eax   
0x40c2e7:  mov      eax, dword ptr [esi + 0x10]   
0x40c2ea:  lea      ecx, [eax + 1]                
0x40c2ed:  lea      eax, [eax + eax*2]            
0x40c2f0:  mov      dword ptr [esi + 4], eax      
0x40c2f3:  lea      eax, [edx + eax*4 + 0x10c]    
0x40c2fa:  mov      dword ptr [esi + 0xc], ecx    
0x40c2fd:  mov      dword ptr [esi + 0x14], eax   
0x40c300:  jae      0x40c3ce                      
0x40c306:  lea      eax, [edx + 0x10c]            
0x40c30c:  mov      edx, dword ptr [esi + 0xc]    
0x40c30f:  lea      ecx, [edx + edx*2]            
0x40c312:  mov      dword ptr [esi + 0x30], ecx   
0x40c315:  lea      eax, [eax + ecx*4]            
0x40c318:  mov      ecx, dword ptr [esi + 0x18]   
0x40c31b:  sub      ecx, dword ptr [esi + 0x10]   
0x40c31e:  lea      edx, [ecx*4]                  
0x40c325:  mov      dword ptr [esi + 0x2c], ecx   
0x40c328:  lea      ecx, [edx + edx*2]            
0x40c32b:  mov      dword ptr [esi + 0x20], edx   
0x40c32e:  push     ecx                           
0x40c32f:  push     dword ptr [esi + 0x14]        
0x40c332:  push     eax                           
0x40c333:  call     0x5cf3c0                      
0x40c338:  add      esp, 0xc                      
0x40c33b:  mov      eax, dword ptr [esi + 0x28]   
0x40c33e:  mov      ecx, dword ptr [esi + 0x14]   
0x40c341:  mov      edx, dword ptr [esi + 0x30]   
0x40c344:  mov      dword ptr [ecx], eax          
0x40c346:  mov      eax, dword ptr [esi + 0x34]   
0x40c349:  mov      dword ptr [ecx + 4], eax      
0x40c34c:  mov      eax, dword ptr [esi + 0x38]   
0x40c34f:  mov      dword ptr [ecx + 8], eax      
0x40c352:  mov      eax, dword ptr [esi + 8]      
0x40c355:  mov      ecx, dword ptr [esi + 4]      
0x40c358:  lea      eax, [eax + ecx*8]            
0x40c35b:  mov      ecx, dword ptr [esi + 8]      
0x40c35e:  lea      ecx, [ecx + edx*8]            
0x40c361:  mov      edx, dword ptr [esi + 0x2c]   
0x40c364:  shl      edx, 3                        
0x40c367:  lea      edx, [edx + edx*2]            
0x40c36a:  push     edx                           
0x40c36b:  push     eax                           
0x40c36c:  push     ecx                           
0x40c36d:  call     0x5cf3c0                      
0x40c372:  add      esp, 0xc                      
0x40c375:  movsd    xmm0, qword ptr [edi]         
0x40c379:  mov      eax, dword ptr [esi + 8]      
0x40c37c:  mov      ecx, dword ptr [esi + 4]      
0x40c37f:  movsd    xmm1, qword ptr [edi + 8]     
0x40c384:  mov      edx, dword ptr [esi + 0x10]   
0x40c387:  movsd    qword ptr [eax + ecx*8], xmm0 
0x40c38c:  mov      eax, dword ptr [esi + 8]      
0x40c38f:  movsd    qword ptr [eax + ecx*8 + 8], xmm1
0x40c395:  mov      eax, dword ptr [esi + 8]      
0x40c398:  movsd    xmm0, qword ptr [edi + 0x10]  
0x40c39d:  mov      edi, dword ptr [esi + 0xc]    
0x40c3a0:  movsd    qword ptr [eax + ecx*8 + 0x10], xmm0
0x40c3a6:  mov      ecx, dword ptr [esi + 8]      
0x40c3a9:  mov      eax, dword ptr [esi + 8]      
0x40c3ac:  lea      ecx, [ecx + edx*4 + 0x1a0]    
0x40c3b3:  lea      eax, [eax + edi*4 + 0x198]    
0x40c3ba:  push     dword ptr [esi + 0x20]        
0x40c3bd:  push     eax                           
0x40c3be:  push     ecx                           
0x40c3bf:  call     0x5cf3c0                      
0x40c3c4:  mov      edx, dword ptr [esi + 8]      
0x40c3c7:  add      esp, 0xc                      
0x40c3ca:  mov      ecx, edi                      
0x40c3cc:  jmp      0x40c407                      
0x40c3ce:  mov      eax, dword ptr [esi + 0x28]   
0x40c3d1:  mov      ecx, dword ptr [esi + 0x14]   
0x40c3d4:  mov      dword ptr [ecx], eax          
0x40c3d6:  mov      eax, dword ptr [esi + 0x34]   
0x40c3d9:  mov      dword ptr [ecx + 4], eax      
0x40c3dc:  mov      eax, dword ptr [esi + 0x38]   
0x40c3df:  mov      dword ptr [ecx + 8], eax      
0x40c3e2:  mov      eax, dword ptr [esi + 4]      
0x40c3e5:  mov      ecx, dword ptr [esi + 0xc]    
0x40c3e8:  movsd    xmm0, qword ptr [edi + 0x10]  
0x40c3ed:  movsd    qword ptr [edx + eax*8 + 0x10], xmm0
0x40c3f3:  movsd    xmm0, qword ptr [edi]         
0x40c3f7:  movsd    xmm1, qword ptr [edi + 8]     
0x40c3fc:  movsd    qword ptr [edx + eax*8 + 8], xmm1
0x40c402:  movsd    qword ptr [edx + eax*8], xmm0 
0x40c407:  mov      eax, dword ptr [esi + 0x60]   
0x40c40a:  mov      edi, dword ptr [esi + 0x10]   
0x40c40d:  mov      dword ptr [edx + edi*4 + 0x19c], eax
0x40c414:  mov      edi, dword ptr [esi + 0x18]   
0x40c417:  lea      eax, [edi + 2]                
0x40c41a:  cmp      ecx, eax                      
0x40c41c:  mov      eax, dword ptr [esi + 0x1c]   
0x40c41f:  mov      word ptr [edx + 0x192], ax    
0x40c426:  jae      0x40c44f                      
0x40c428:  movzx    eax, bx                       
0x40c42b:  dec      eax                           
0x40c42c:  nop      dword ptr [eax]               
0x40c430:  mov      ecx, dword ptr [edx + eax*4 + 0x1a0]
0x40c437:  mov      dword ptr [ecx + 0x108], edx  
0x40c43d:  lea      edx, [eax + 2]                
0x40c440:  inc      eax                           
0x40c441:  mov      word ptr [ecx + 0x190], dx    
0x40c448:  mov      edx, dword ptr [esi + 8]      
0x40c44b:  cmp      edi, eax                      
0x40c44d:  jne      0x40c430                      
0x40c44f:  mov      eax, dword ptr [ebp + 8]      
0x40c452:  mov      ecx, dword ptr [esi + 0x64]   
0x40c455:  mov      dword ptr [eax], ecx          
0x40c457:  mov      ecx, dword ptr [esi + 0x5c]   
0x40c45a:  mov      dword ptr [eax + 4], ecx      
0x40c45d:  mov      ecx, dword ptr [esi + 0x24]   
0x40c460:  mov      edx, dword ptr [esi + 0x128]  
0x40c466:  mov      dword ptr [eax + 8], ecx      
0x40c469:  mov      dword ptr fs:[0], edx         
0x40c470:  lea      esp, [ebp - 0xc]              
0x40c473:  pop      esi                           
0x40c474:  pop      edi                           
0x40c475:  pop      ebx                           
0x40c476:  pop      ebp                           
0x40c477:  ret                                    
0x40c478:  mov      dword ptr [esi + 0x130], 0xa  
0x40c482:  push     0x5e4cd4                       ; 'LE^'
0x40c487:  push     0xb                           
0x40c489:  push     ebx                           
0x40c48a:  push     0                             
0x40c48c:  call     0x5db940                      
0x40c491:  add      esp, 0x10                     
0x40c494:  jmp      0x40c5c8                      
0x40c499:  mov      dword ptr [esi + 0x130], 9    
0x40c4a3:  push     0x5e4600                       ; 'LE^'
0x40c4a8:  push     0xc                           
0x40c4aa:  push     eax                           
0x40c4ab:  push     0                             
0x40c4ad:  call     0x5db940                      
0x40c4b2:  add      esp, 0x10                     
0x40c4b5:  jmp      0x40c5c8                      
0x40c4ba:  mov      dword ptr [esi + 0x130], 7    
0x40c4c4:  push     0x5e45f0                       ; 'LE^'
0x40c4c9:  push     0x35                          
0x40c4cb:  push     0x5e45b8                       ; 'assertion failed: edge.height == self.node.height - 1'
0x40c4d0:  call     0x5db8e0                      
0x40c4d5:  add      esp, 0xc                      
0x40c4d8:  jmp      0x40c5c8                      
0x40c4dd:  mov      dword ptr [esi + 0x130], 7    
0x40c4e7:  push     0x1c8                         
0x40c4ec:  push     8                             
0x40c4ee:  call     0x5db4e0                      
0x40c4f3:  add      esp, 8                        
0x40c4f6:  jmp      0x40c5c8                      
0x40c4fb:  mov      dword ptr [esi + 0x130], 9    
0x40c505:  push     0x5e4c50                       ; 'LE^'
0x40c50a:  push     0x28                          
0x40c50c:  push     0x5e4c28                       ; 'assertion failed: src.len() == dst.len()LE^'
0x40c511:  call     0x5db8e0                      
0x40c516:  add      esp, 0xc                      
0x40c519:  jmp      0x40c5c8                      
0x40c51e:  mov      dword ptr [esi + 0x130], 2    
0x40c528:  push     0x5e4cd4                       ; 'LE^'
0x40c52d:  push     0xb                           
0x40c52f:  push     ebx                           
0x40c530:  push     0                             
0x40c532:  call     0x5db940                      
0x40c537:  add      esp, 0x10                     
0x40c53a:  jmp      0x40c5c8                      
0x40c53f:  mov      dword ptr [esi + 0x130], 0    
0x40c549:  push     0x198                         
0x40c54e:  push     8                             
0x40c550:  call     0x5db4e0                      
0x40c555:  add      esp, 8                        
0x40c558:  jmp      0x40c5c8                      
0x40c55a:  mov      dword ptr [esi + 0x130], 3    
0x40c564:  push     0x5e4cc4                       ; '`L^'
0x40c569:  call     0x5db6b0                      
0x40c56e:  add      esp, 4                        
0x40c571:  jmp      0x40c5c8                      
0x40c573:  mov      dword ptr [esi + 0x130], 5    
0x40c57d:  push     0x1c8                         
0x40c582:  push     8                             
0x40c584:  call     0x5db4e0                      
0x40c589:  add      esp, 8                        
0x40c58c:  jmp      0x40c5c8                      
0x40c58e:  mov      dword ptr [esi + 0xc], edi    
0x40c591:  mov      dword ptr [esi + 0x130], 6    
0x40c59b:  push     0x5e45a8                       ; 'LE^'
0x40c5a0:  call     0x5db6b0                      
0x40c5a5:  add      esp, 4                        
0x40c5a8:  jmp      0x40c5c8                      
0x40c5aa:  mov      dword ptr [esi + 0x130], 4    
0x40c5b4:  push     0x5e4d14                       ; 'LE^'
0x40c5b9:  push     0x30                          
0x40c5bb:  push     0x5e4ce4                       ; 'assertion failed: edge.height == self.height - 1LE^'
0x40c5c0:  call     0x5db8e0                      
0x40c5c5:  add      esp, 0xc                      
0x40c5c8:  ud2                                    
0x40c5ca:  nop      word ptr [eax + eax]          
0x40c5d0:  push     ebp                           
0x40c5d1:  sub      esp, 0x10                     
0x40c5d4:  lea      esi, [ebp - 0x134]            
0x40c5da:  mov      ebp, dword ptr [esi + 0x120]  
0x40c5e0:  lea      ecx, [esi + 0x40]             
0x40c5e3:  call     0x4017a0                      
0x40c5e8:  mov      eax, dword ptr [esi + 0x1c]   
0x40c5eb:  test     eax, eax                      
0x40c5ed:  je       0x40c5fd                      
0x40c5ef:  push     1                             
0x40c5f1:  push     eax                           
0x40c5f2:  push     dword ptr [esi + 0x18]        
0x40c5f5:  call     0x417800                      
0x40c5fa:  add      esp, 0xc                      
0x40c5fd:  add      esp, 0x10                     
0x40c600:  pop      ebp                           
0x40c601:  ret                                    
0x40c602:  nop      word ptr cs:[eax + eax]       
0x40c60c:  nop      dword ptr [eax]               
0x40c610:  push     ebp                           
0x40c611:  sub      esp, 0x10                     
0x40c614:  lea      esi, [ebp - 0x134]            
0x40c61a:  mov      ebp, dword ptr [esi + 0x120]  
0x40c620:  push     8                             
0x40c622:  push     0x198                         
0x40c627:  push     dword ptr [esi + 0xc]         
0x40c62a:  call     0x417800                      
0x40c62f:  add      esp, 0x1c                     
0x40c632:  pop      ebp                           
0x40c633:  ret                                    
0x40c634:  nop      word ptr cs:[eax + eax]       
0x40c63e:  nop                                    
0x40c640:  push     ebp                           
0x40c641:  sub      esp, 0x10                     
0x40c644:  lea      esi, [ebp - 0x134]            
0x40c64a:  mov      ebp, dword ptr [esi + 0x120]  
0x40c650:  mov      ecx, dword ptr [ebp + 0x14]   
0x40c653:  call     0x4017a0                      
0x40c658:  mov      eax, dword ptr [esi + 0x20]   
0x40c65b:  test     eax, eax                      
0x40c65d:  je       0x40c66d                      
0x40c65f:  push     1                             
0x40c661:  push     eax                           
0x40c662:  push     dword ptr [esi + 0x28]        
0x40c665:  call     0x417800                      
0x40c66a:  add      esp, 0xc                      
0x40c66d:  add      esp, 0x10                     
0x40c670:  pop      ebp                           
0x40c671:  ret                                    
0x40c672:  nop      word ptr cs:[eax + eax]       
0x40c67c:  nop      dword ptr [eax]               
0x40c680:  push     ebp                           
0x40c681:  sub      esp, 0x10                     
0x40c684:  lea      esi, [ebp - 0x134]            
0x40c68a:  mov      ebp, dword ptr [esi + 0x120]  
0x40c690:  push     8                             
0x40c692:  push     0x1c8                         
0x40c697:  push     dword ptr [esi + 0xc]         
0x40c69a:  call     0x417800                      
0x40c69f:  add      esp, 0x1c                     
0x40c6a2:  pop      ebp                           
0x40c6a3:  ret                                    
0x40c6a4:  nop      word ptr cs:[eax + eax]       
0x40c6ae:  nop                                    
0x40c6b0:  push     ebp                           
0x40c6b1:  sub      esp, 0x10                     
0x40c6b4:  lea      esi, [ebp - 0x134]            
0x40c6ba:  mov      ebp, dword ptr [esi + 0x120]  
0x40c6c0:  ud2                                    
0x40c6c2:  nop      word ptr cs:[eax + eax]       
0x40c6cc:  nop      dword ptr [eax]               
0x40c6d0:  push     ebp                           
0x40c6d1:  sub      esp, 0x10                     
0x40c6d4:  lea      esi, [ebp - 0x134]            
0x40c6da:  mov      ebp, dword ptr [esi + 0x120]  
0x40c6e0:  lea      ecx, [esi + 0x68]             
0x40c6e3:  call     0x4017a0                      
0x40c6e8:  cmp      dword ptr [esi + 0x1c], 0     
0x40c6ec:  je       0x40c6fe                      
0x40c6ee:  push     1                             
0x40c6f0:  push     dword ptr [esi + 0x1c]        
0x40c6f3:  push     dword ptr [esi + 0x18]        
0x40c6f6:  call     0x417800                      
0x40c6fb:  add      esp, 0xc                      
0x40c6fe:  add      esp, 0x10                     
0x40c701:  pop      ebp                           
0x40c702:  ret                                    
0x40c703:  nop      word ptr cs:[eax + eax]       
0x40c70d:  nop      dword ptr [eax]               
0x40c710:  push     ebp                           
0x40c711:  sub      esp, 0x10                     
0x40c714:  lea      esi, [ebp - 0x134]            
0x40c71a:  mov      ebp, dword ptr [esi + 0x120]  
0x40c720:  cmp      dword ptr [esi + 8], 0        
0x40c724:  je       0x40c72b                      
0x40c726:  add      esp, 0x10                     
0x40c729:  pop      ebp                           
0x40c72a:  ret                                    
0x40c72b:  cmp      dword ptr [esi + 0x1c], 0     
0x40c72f:  je       0x40c741                      
0x40c731:  push     1                             
0x40c733:  push     dword ptr [esi + 0x1c]        
0x40c736:  push     dword ptr [esi + 0x18]        
0x40c739:  call     0x417800                      
0x40c73e:  add      esp, 0xc                      
0x40c741:  lea      ecx, [esi + 0xb8]             
0x40c747:  call     0x4017a0                      
0x40c74c:  add      esp, 0x10                     
0x40c74f:  pop      ebp                           
0x40c750:  ret                                    
0x40c751:  nop      word ptr cs:[eax + eax]       
0x40c75b:  nop      dword ptr [eax + eax]         
0x40c760:  push     ebp                           
0x40c761:  sub      esp, 0x10                     
0x40c764:  lea      esi, [ebp - 0x134]            
0x40c76a:  mov      ebp, dword ptr [esi + 0x120]  
0x40c770:  lea      ecx, [esi + 0x108]            
0x40c776:  call     0x4017a0                      
0x40c77b:  mov      eax, dword ptr [esi + 0x28]   
0x40c77e:  test     eax, eax                      
0x40c780:  je       0x40c790                      
0x40c782:  push     1                             
0x40c784:  push     eax                           
0x40c785:  push     dword ptr [esi + 0x34]        
0x40c788:  call     0x417800                      
0x40c78d:  add      esp, 0xc                      
0x40c790:  add      esp, 0x10                     
0x40c793:  pop      ebp                           
0x40c794:  ret                                    
0x40c795:  nop      word ptr cs:[eax + eax]       
0x40c79f:  nop                                    
0x40c7a0:  push     ebp                           
0x40c7a1:  sub      esp, 0x10                     
0x40c7a4:  lea      esi, [ebp - 0x134]            
0x40c7aa:  mov      ebp, dword ptr [esi + 0x120]  
0x40c7b0:  lea      ecx, [esi + 0xf0]             
0x40c7b6:  call     0x4017a0                      
0x40c7bb:  mov      eax, dword ptr [esi + 0x1c]   
0x40c7be:  test     eax, eax                      
0x40c7c0:  je       0x40c7d0                      
0x40c7c2:  push     1                             
0x40c7c4:  push     eax                           
0x40c7c5:  push     dword ptr [esi + 0x30]        
0x40c7c8:  call     0x417800                      
0x40c7cd:  add      esp, 0xc                      
0x40c7d0:  add      esp, 0x10                     
0x40c7d3:  pop      ebp                           
0x40c7d4:  ret                                    
0x40c7d5:  nop      word ptr cs:[eax + eax]       
0x40c7df:  nop                                    
0x40c7e0:  push     ebp                           
0x40c7e1:  sub      esp, 0x10                     
0x40c7e4:  lea      esi, [ebp - 0x134]            
0x40c7ea:  mov      ebp, dword ptr [esi + 0x120]  
0x40c7f0:  lea      ecx, [esi + 0xa8]             
0x40c7f6:  call     0x40d230                      
0x40c7fb:  add      esp, 0x10                     
0x40c7fe:  pop      ebp                           
0x40c7ff:  ret                                    
0x40c800:  push     ebp                           
0x40c801:  sub      esp, 0x10                     
0x40c804:  lea      esi, [ebp - 0x134]            
0x40c80a:  mov      ebp, dword ptr [esi + 0x120]  
0x40c810:  push     8                             
0x40c812:  push     0x1c8                         
0x40c817:  push     dword ptr [esi + 0xc]         
0x40c81a:  call     0x417800                      
0x40c81f:  add      esp, 0x1c                     
0x40c822:  pop      ebp                           
0x40c823:  ret                                    
0x40c824:  int3                                   
0x40c825:  int3                                   
0x40c826:  int3                                   
0x40c827:  int3                                   
0x40c828:  int3                                   
0x40c829:  int3                                   
0x40c82a:  int3                                   
0x40c82b:  int3                                   
0x40c82c:  int3                                   
0x40c82d:  int3                                   
0x40c82e:  int3                                   
0x40c82f:  int3                                   
0x40c830:  push     esi                           
0x40c831:  mov      esi, dword ptr [esp + 8]      
0x40c835:  mov      eax, dword ptr [esi]          
0x40c837:  test     eax, eax                      
0x40c839:  je       0x40c849                      
0x40c83b:  push     1                             
0x40c83d:  push     eax                           
0x40c83e:  push     dword ptr [esi + 4]           
0x40c841:  call     0x417800                      
0x40c846:  add      esp, 0xc                      
0x40c849:  mov      eax, dword ptr [esi + 0xc]    
0x40c84c:  test     eax, eax                      
0x40c84e:  je       0x40c85e                      
0x40c850:  push     1                             
0x40c852:  push     eax                           
0x40c853:  push     dword ptr [esi + 0x10]        
0x40c856:  call     0x417800                      
0x40c85b:  add      esp, 0xc                      
0x40c85e:  pop      esi                           
0x40c85f:  ret                                    
0x40c860:  push     esi                           
0x40c861:  mov      esi, dword ptr [esp + 8]      
0x40c865:  mov      eax, dword ptr [esi]          
0x40c867:  test     eax, eax                      
0x40c869:  je       0x40c879                      
0x40c86b:  push     1                             
0x40c86d:  push     eax                           
0x40c86e:  push     dword ptr [esi + 4]           
0x40c871:  call     0x417800                      
0x40c876:  add      esp, 0xc                      
0x40c879:  add      esi, 0xc                      
0x40c87c:  push     esi                           
0x40c87d:  call     0x40d060                      
0x40c882:  add      esp, 4                        
0x40c885:  pop      esi                           
0x40c886:  ret                                    
0x40c887:  int3                                   
0x40c888:  int3                                   
0x40c889:  int3                                   
0x40c88a:  int3                                   
0x40c88b:  int3                                   
0x40c88c:  int3                                   
0x40c88d:  int3                                   
0x40c88e:  int3                                   
0x40c88f:  int3                                   
0x40c890:  mov      eax, dword ptr [esp + 4]      
0x40c894:  mov      ecx, dword ptr [eax]          
0x40c896:  test     ecx, ecx                      
0x40c898:  je       0x40c8a8                      
0x40c89a:  push     1                             
0x40c89c:  push     ecx                           
0x40c89d:  push     dword ptr [eax + 4]           
0x40c8a0:  call     0x417800                      
0x40c8a5:  add      esp, 0xc                      
0x40c8a8:  ret                                    
0x40c8a9:  int3                                   
0x40c8aa:  int3                                   
0x40c8ab:  int3                                   
0x40c8ac:  int3                                   
0x40c8ad:  int3                                   
0x40c8ae:  int3                                   
0x40c8af:  int3                                   
0x40c8b0:  mov      eax, dword ptr [esp + 4]      
0x40c8b4:  add      eax, 8                        
0x40c8b7:  push     eax                           
0x40c8b8:  call     0x474dc0                      
0x40c8bd:  add      esp, 4                        
0x40c8c0:  ret                                    
0x40c8c1:  int3                                   
0x40c8c2:  int3                                   
0x40c8c3:  int3                                   
0x40c8c4:  int3                                   
0x40c8c5:  int3                                   
0x40c8c6:  int3                                   
0x40c8c7:  int3                                   
0x40c8c8:  int3                                   
0x40c8c9:  int3                                   
0x40c8ca:  int3                                   
0x40c8cb:  int3                                   
0x40c8cc:  int3                                   
0x40c8cd:  int3                                   
0x40c8ce:  int3                                   
0x40c8cf:  int3                                   
0x40c8d0:  mov      eax, dword ptr [esp + 4]      
0x40c8d4:  cmp      byte ptr [eax + 8], 3         
0x40c8d8:  ja       0x40c8e6                      
0x40c8da:  add      eax, 8                        
0x40c8dd:  push     eax                           
0x40c8de:  call     0x40d150                      
0x40c8e3:  add      esp, 4                        
0x40c8e6:  ret                                    
0x40c8e7:  int3                                   
0x40c8e8:  int3                                   
0x40c8e9:  int3                                   
0x40c8ea:  int3                                   
0x40c8eb:  int3                                   
0x40c8ec:  int3                                   
0x40c8ed:  int3                                   
0x40c8ee:  int3                                   
0x40c8ef:  int3                                   
0x40c8f0:  push     ebp                           
0x40c8f1:  mov      ebp, esp                      
0x40c8f3:  push     ebx                           
0x40c8f4:  push     edi                           
0x40c8f5:  push     esi                           
0x40c8f6:  sub      esp, 0x14                     
0x40c8f9:  mov      dword ptr [ebp - 0x1c], esp   
0x40c8fc:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40c903:  mov      dword ptr [ebp - 0x14], 0x40dfa0
0x40c90a:  mov      eax, dword ptr [ebp + 8]      
0x40c90d:  lea      ecx, [ebp - 0x18]             
0x40c910:  mov      edx, dword ptr fs:[0]         
0x40c917:  mov      dword ptr [ebp - 0x18], edx   
0x40c91a:  mov      dword ptr fs:[0], ecx         
0x40c921:  mov      ecx, dword ptr [eax + 8]      
0x40c924:  mov      eax, dword ptr [ecx]          
0x40c926:  mov      dword ptr [ebp - 0x20], ecx   
0x40c929:  cmp      eax, 1                        
0x40c92c:  je       0x40c94f                      
0x40c92e:  test     eax, eax                      
0x40c930:  jne      0x40c962                      
0x40c932:  mov      eax, dword ptr [ebp - 0x20]   
0x40c935:  mov      eax, dword ptr [eax + 8]      
0x40c938:  test     eax, eax                      
0x40c93a:  je       0x40c962                      
0x40c93c:  push     1                             
0x40c93e:  push     eax                           
0x40c93f:  mov      eax, dword ptr [ebp - 0x20]   
0x40c942:  push     dword ptr [eax + 4]           
0x40c945:  call     0x417800                      
0x40c94a:  add      esp, 0xc                      
0x40c94d:  jmp      0x40c962                      
0x40c94f:  lea      eax, [ecx + 4]                
0x40c952:  mov      dword ptr [ebp - 0x10], 0     
0x40c959:  push     eax                           
0x40c95a:  call     0x40d150                      
0x40c95f:  add      esp, 4                        
0x40c962:  push     4                             
0x40c964:  push     0x14                          
0x40c966:  push     dword ptr [ebp - 0x20]        
0x40c969:  call     0x417800                      
0x40c96e:  add      esp, 0xc                      
0x40c971:  mov      eax, dword ptr [ebp - 0x18]   
0x40c974:  mov      dword ptr fs:[0], eax         
0x40c97a:  add      esp, 0x14                     
0x40c97d:  pop      esi                           
0x40c97e:  pop      edi                           
0x40c97f:  pop      ebx                           
0x40c980:  pop      ebp                           
0x40c981:  ret                                    
0x40c982:  nop      word ptr cs:[eax + eax]       
0x40c98c:  nop      dword ptr [eax]               
0x40c990:  push     ebp                           
0x40c991:  sub      esp, 0xc                      
0x40c994:  add      ebp, 0xc                      
0x40c997:  push     4                             
0x40c999:  push     0x14                          
0x40c99b:  push     dword ptr [ebp - 0x20]        
0x40c99e:  call     0x417800                      
0x40c9a3:  add      esp, 0x18                     
0x40c9a6:  pop      ebp                           
0x40c9a7:  ret                                    
0x40c9a8:  int3                                   
0x40c9a9:  int3                                   
0x40c9aa:  int3                                   
0x40c9ab:  int3                                   
0x40c9ac:  int3                                   
0x40c9ad:  int3                                   
0x40c9ae:  int3                                   
0x40c9af:  int3                                   
0x40c9b0:  mov      eax, dword ptr [esp + 4]      
0x40c9b4:  add      eax, 8                        
0x40c9b7:  push     eax                           
0x40c9b8:  call     0x40d060                      
0x40c9bd:  add      esp, 4                        
0x40c9c0:  ret                                    
0x40c9c1:  int3                                   
0x40c9c2:  int3                                   
0x40c9c3:  int3                                   
0x40c9c4:  int3                                   
0x40c9c5:  int3                                   
0x40c9c6:  int3                                   
0x40c9c7:  int3                                   
0x40c9c8:  int3                                   
0x40c9c9:  int3                                   
0x40c9ca:  int3                                   
0x40c9cb:  int3                                   
0x40c9cc:  int3                                   
0x40c9cd:  int3                                   
0x40c9ce:  int3                                   
0x40c9cf:  int3                                   
0x40c9d0:  mov      eax, dword ptr [esp + 4]      
0x40c9d4:  add      eax, 8                        
0x40c9d7:  push     eax                           
0x40c9d8:  call     0x40d150                      
0x40c9dd:  add      esp, 4                        
0x40c9e0:  ret                                    
0x40c9e1:  int3                                   
0x40c9e2:  int3                                   
0x40c9e3:  int3                                   
0x40c9e4:  int3                                   
0x40c9e5:  int3                                   
0x40c9e6:  int3                                   
0x40c9e7:  int3                                   
0x40c9e8:  int3                                   
0x40c9e9:  int3                                   
0x40c9ea:  int3                                   
0x40c9eb:  int3                                   
0x40c9ec:  int3                                   
0x40c9ed:  int3                                   
0x40c9ee:  int3                                   
0x40c9ef:  int3                                   
0x40c9f0:  push     ebp                           
0x40c9f1:  mov      ebp, esp                      
0x40c9f3:  push     ebx                           
0x40c9f4:  push     edi                           
0x40c9f5:  push     esi                           
0x40c9f6:  sub      esp, 0x10                     
0x40c9f9:  mov      dword ptr [ebp - 0x1c], esp   
0x40c9fc:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40ca03:  mov      dword ptr [ebp - 0x14], 0x40dfb0
0x40ca0a:  mov      edx, dword ptr [ebp + 8]      
0x40ca0d:  lea      eax, [ebp - 0x18]             
0x40ca10:  mov      ecx, dword ptr fs:[0]         
0x40ca17:  mov      dword ptr [ebp - 0x18], ecx   
0x40ca1a:  mov      dword ptr fs:[0], eax         
0x40ca20:  cmp      dword ptr [edx + 4], 2        
0x40ca24:  jne      0x40ca3c                      
0x40ca26:  mov      eax, dword ptr [ebp + 8]      
0x40ca29:  mov      dword ptr [ebp - 0x10], 0     
0x40ca30:  add      eax, 8                        
0x40ca33:  push     eax                           
0x40ca34:  call     0x416f00                      
0x40ca39:  add      esp, 4                        
0x40ca3c:  mov      esi, dword ptr [ebp + 8]      
0x40ca3f:  mov      eax, dword ptr [esi + 0x1c]   
0x40ca42:  test     eax, eax                      
0x40ca44:  je       0x40ca54                      
0x40ca46:  push     1                             
0x40ca48:  push     eax                           
0x40ca49:  push     dword ptr [esi + 0x20]        
0x40ca4c:  call     0x417800                      
0x40ca51:  add      esp, 0xc                      
0x40ca54:  mov      eax, dword ptr [esi + 0x28]   
0x40ca57:  test     eax, eax                      
0x40ca59:  je       0x40ca69                      
0x40ca5b:  push     1                             
0x40ca5d:  push     eax                           
0x40ca5e:  push     dword ptr [esi + 0x2c]        
0x40ca61:  call     0x417800                      
0x40ca66:  add      esp, 0xc                      
0x40ca69:  mov      eax, dword ptr [ebp - 0x18]   
0x40ca6c:  mov      dword ptr fs:[0], eax         
0x40ca72:  add      esp, 0x10                     
0x40ca75:  pop      esi                           
0x40ca76:  pop      edi                           
0x40ca77:  pop      ebx                           
0x40ca78:  pop      ebp                           
0x40ca79:  ret                                    
0x40ca7a:  nop      word ptr [eax + eax]          
0x40ca80:  push     ebp                           
0x40ca81:  sub      esp, 0xc                      
0x40ca84:  add      ebp, 0xc                      
0x40ca87:  mov      eax, dword ptr [ebp + 8]      
0x40ca8a:  add      eax, 0x1c                     
0x40ca8d:  push     eax                           
0x40ca8e:  call     0x40c830                      
0x40ca93:  add      esp, 0x10                     
0x40ca96:  pop      ebp                           
0x40ca97:  ret                                    
0x40ca98:  int3                                   
0x40ca99:  int3                                   
0x40ca9a:  int3                                   
0x40ca9b:  int3                                   
0x40ca9c:  int3                                   
0x40ca9d:  int3                                   
0x40ca9e:  int3                                   
0x40ca9f:  int3                                   
0x40caa0:  push     ebp                           
0x40caa1:  mov      ebp, esp                      
0x40caa3:  push     ebx                           
0x40caa4:  push     edi                           
0x40caa5:  push     esi                           
0x40caa6:  sub      esp, 0x10                     
0x40caa9:  mov      dword ptr [ebp - 0x1c], esp   
0x40caac:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cab3:  mov      dword ptr [ebp - 0x14], 0x40dfc0
0x40caba:  mov      edx, dword ptr [ebp + 8]      
0x40cabd:  lea      eax, [ebp - 0x18]             
0x40cac0:  mov      ecx, dword ptr fs:[0]         
0x40cac7:  mov      dword ptr [ebp - 0x18], ecx   
0x40caca:  mov      dword ptr fs:[0], eax         
0x40cad0:  cmp      dword ptr [edx + 4], 2        
0x40cad4:  jne      0x40caec                      
0x40cad6:  mov      eax, dword ptr [ebp + 8]      
0x40cad9:  mov      dword ptr [ebp - 0x10], 0     
0x40cae0:  add      eax, 8                        
0x40cae3:  push     eax                           
0x40cae4:  call     0x416f00                      
0x40cae9:  add      esp, 4                        
0x40caec:  mov      esi, dword ptr [ebp + 8]      
0x40caef:  mov      eax, dword ptr [esi + 0x1c]   
0x40caf2:  test     eax, eax                      
0x40caf4:  je       0x40cb0b                      
0x40caf6:  push     1                             
0x40caf8:  push     eax                           
0x40caf9:  push     dword ptr [esi + 0x20]        
0x40cafc:  call     0x417800                      
0x40cb01:  add      esp, 0xc                      
0x40cb04:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cb0b:  add      esi, 0x28                     
0x40cb0e:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cb15:  push     esi                           
0x40cb16:  call     0x40d060                      
0x40cb1b:  add      esp, 4                        
0x40cb1e:  mov      eax, dword ptr [ebp - 0x18]   
0x40cb21:  mov      dword ptr fs:[0], eax         
0x40cb27:  add      esp, 0x10                     
0x40cb2a:  pop      esi                           
0x40cb2b:  pop      edi                           
0x40cb2c:  pop      ebx                           
0x40cb2d:  pop      ebp                           
0x40cb2e:  ret                                    
0x40cb2f:  nop                                    
0x40cb30:  push     ebp                           
0x40cb31:  sub      esp, 0xc                      
0x40cb34:  add      ebp, 0xc                      
0x40cb37:  mov      eax, dword ptr [ebp + 8]      
0x40cb3a:  add      eax, 0x1c                     
0x40cb3d:  push     eax                           
0x40cb3e:  call     0x40c860                      
0x40cb43:  add      esp, 0x10                     
0x40cb46:  pop      ebp                           
0x40cb47:  ret                                    
0x40cb48:  int3                                   
0x40cb49:  int3                                   
0x40cb4a:  int3                                   
0x40cb4b:  int3                                   
0x40cb4c:  int3                                   
0x40cb4d:  int3                                   
0x40cb4e:  int3                                   
0x40cb4f:  int3                                   
0x40cb50:  push     ebp                           
0x40cb51:  mov      ebp, esp                      
0x40cb53:  push     ebx                           
0x40cb54:  push     edi                           
0x40cb55:  push     esi                           
0x40cb56:  sub      esp, 0x10                     
0x40cb59:  mov      dword ptr [ebp - 0x1c], esp   
0x40cb5c:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cb63:  mov      dword ptr [ebp - 0x14], 0x40dfd0
0x40cb6a:  mov      edx, dword ptr [ebp + 8]      
0x40cb6d:  lea      eax, [ebp - 0x18]             
0x40cb70:  mov      ecx, dword ptr fs:[0]         
0x40cb77:  mov      dword ptr [ebp - 0x18], ecx   
0x40cb7a:  mov      dword ptr fs:[0], eax         
0x40cb80:  cmp      dword ptr [edx + 4], 2        
0x40cb84:  jne      0x40cb9c                      
0x40cb86:  mov      eax, dword ptr [ebp + 8]      
0x40cb89:  mov      dword ptr [ebp - 0x10], 0     
0x40cb90:  add      eax, 8                        
0x40cb93:  push     eax                           
0x40cb94:  call     0x416f00                      
0x40cb99:  add      esp, 4                        
0x40cb9c:  mov      ecx, dword ptr [ebp + 8]      
0x40cb9f:  mov      eax, dword ptr [ecx + 0x1c]   
0x40cba2:  test     eax, eax                      
0x40cba4:  je       0x40cbb4                      
0x40cba6:  push     1                             
0x40cba8:  push     eax                           
0x40cba9:  push     dword ptr [ecx + 0x20]        
0x40cbac:  call     0x417800                      
0x40cbb1:  add      esp, 0xc                      
0x40cbb4:  mov      eax, dword ptr [ebp - 0x18]   
0x40cbb7:  mov      dword ptr fs:[0], eax         
0x40cbbd:  add      esp, 0x10                     
0x40cbc0:  pop      esi                           
0x40cbc1:  pop      edi                           
0x40cbc2:  pop      ebx                           
0x40cbc3:  pop      ebp                           
0x40cbc4:  ret                                    
0x40cbc5:  nop      word ptr cs:[eax + eax]       
0x40cbcf:  nop                                    
0x40cbd0:  push     ebp                           
0x40cbd1:  sub      esp, 0xc                      
0x40cbd4:  add      ebp, 0xc                      
0x40cbd7:  mov      eax, dword ptr [ebp + 8]      
0x40cbda:  mov      eax, dword ptr [eax + 0x1c]   
0x40cbdd:  test     eax, eax                      
0x40cbdf:  je       0x40cbf2                      
0x40cbe1:  push     1                             
0x40cbe3:  push     eax                           
0x40cbe4:  mov      eax, dword ptr [ebp + 8]      
0x40cbe7:  push     dword ptr [eax + 0x20]        
0x40cbea:  call     0x417800                      
0x40cbef:  add      esp, 0xc                      
0x40cbf2:  add      esp, 0xc                      
0x40cbf5:  pop      ebp                           
0x40cbf6:  ret                                    
0x40cbf7:  int3                                   
0x40cbf8:  int3                                   
0x40cbf9:  int3                                   
0x40cbfa:  int3                                   
0x40cbfb:  int3                                   
0x40cbfc:  int3                                   
0x40cbfd:  int3                                   
0x40cbfe:  int3                                   
0x40cbff:  int3                                   
0x40cc00:  push     ebp                           
0x40cc01:  mov      ebp, esp                      
0x40cc03:  push     ebx                           
0x40cc04:  push     edi                           
0x40cc05:  push     esi                           
0x40cc06:  sub      esp, 0x10                     
0x40cc09:  mov      dword ptr [ebp - 0x1c], esp   
0x40cc0c:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cc13:  mov      dword ptr [ebp - 0x14], 0x40dfe0
0x40cc1a:  mov      edx, dword ptr [ebp + 8]      
0x40cc1d:  lea      eax, [ebp - 0x18]             
0x40cc20:  mov      ecx, dword ptr fs:[0]         
0x40cc27:  mov      dword ptr [ebp - 0x18], ecx   
0x40cc2a:  mov      dword ptr fs:[0], eax         
0x40cc30:  cmp      dword ptr [edx + 4], 2        
0x40cc34:  jne      0x40cc4c                      
0x40cc36:  mov      eax, dword ptr [ebp + 8]      
0x40cc39:  mov      dword ptr [ebp - 0x10], 0     
0x40cc40:  add      eax, 8                        
0x40cc43:  push     eax                           
0x40cc44:  call     0x416f00                      
0x40cc49:  add      esp, 4                        
0x40cc4c:  mov      eax, dword ptr [ebp + 8]      
0x40cc4f:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cc56:  add      eax, 0x24                     
0x40cc59:  push     eax                           
0x40cc5a:  call     0x474dc0                      
0x40cc5f:  add      esp, 4                        
0x40cc62:  mov      eax, dword ptr [ebp - 0x18]   
0x40cc65:  mov      dword ptr fs:[0], eax         
0x40cc6b:  add      esp, 0x10                     
0x40cc6e:  pop      esi                           
0x40cc6f:  pop      edi                           
0x40cc70:  pop      ebx                           
0x40cc71:  pop      ebp                           
0x40cc72:  ret                                    
0x40cc73:  nop      word ptr cs:[eax + eax]       
0x40cc7d:  nop      dword ptr [eax]               
0x40cc80:  push     ebp                           
0x40cc81:  push     eax                           
0x40cc82:  add      ebp, 0xc                      
0x40cc85:  mov      eax, dword ptr [ebp + 8]      
0x40cc88:  add      eax, 0x24                     
0x40cc8b:  push     eax                           
0x40cc8c:  call     0x474dc0                      
0x40cc91:  add      esp, 8                        
0x40cc94:  pop      ebp                           
0x40cc95:  ret                                    
0x40cc96:  int3                                   
0x40cc97:  int3                                   
0x40cc98:  int3                                   
0x40cc99:  int3                                   
0x40cc9a:  int3                                   
0x40cc9b:  int3                                   
0x40cc9c:  int3                                   
0x40cc9d:  int3                                   
0x40cc9e:  int3                                   
0x40cc9f:  int3                                   
0x40cca0:  push     ebp                           
0x40cca1:  mov      ebp, esp                      
0x40cca3:  push     ebx                           
0x40cca4:  push     edi                           
0x40cca5:  push     esi                           
0x40cca6:  sub      esp, 0x10                     
0x40cca9:  mov      dword ptr [ebp - 0x1c], esp   
0x40ccac:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40ccb3:  mov      dword ptr [ebp - 0x14], 0x40dff0
0x40ccba:  mov      edx, dword ptr [ebp + 8]      
0x40ccbd:  lea      eax, [ebp - 0x18]             
0x40ccc0:  mov      ecx, dword ptr fs:[0]         
0x40ccc7:  mov      dword ptr [ebp - 0x18], ecx   
0x40ccca:  mov      dword ptr fs:[0], eax         
0x40ccd0:  cmp      dword ptr [edx + 4], 2        
0x40ccd4:  jne      0x40ccec                      
0x40ccd6:  mov      eax, dword ptr [ebp + 8]      
0x40ccd9:  mov      dword ptr [ebp - 0x10], 0     
0x40cce0:  add      eax, 8                        
0x40cce3:  push     eax                           
0x40cce4:  call     0x416f00                      
0x40cce9:  add      esp, 4                        
0x40ccec:  mov      eax, dword ptr [ebp + 8]      
0x40ccef:  cmp      byte ptr [eax + 0x24], 3      
0x40ccf3:  ja       0x40cd08                      
0x40ccf5:  add      eax, 0x24                     
0x40ccf8:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40ccff:  push     eax                           
0x40cd00:  call     0x40d150                      
0x40cd05:  add      esp, 4                        
0x40cd08:  mov      eax, dword ptr [ebp - 0x18]   
0x40cd0b:  mov      dword ptr fs:[0], eax         
0x40cd11:  add      esp, 0x10                     
0x40cd14:  pop      esi                           
0x40cd15:  pop      edi                           
0x40cd16:  pop      ebx                           
0x40cd17:  pop      ebp                           
0x40cd18:  ret                                    
0x40cd19:  nop      dword ptr [eax]               
0x40cd20:  push     ebp                           
0x40cd21:  push     eax                           
0x40cd22:  add      ebp, 0xc                      
0x40cd25:  mov      eax, dword ptr [ebp + 8]      
0x40cd28:  cmp      byte ptr [eax + 0x24], 3      
0x40cd2c:  ja       0x40cd3a                      
0x40cd2e:  add      eax, 0x24                     
0x40cd31:  push     eax                           
0x40cd32:  call     0x40d150                      
0x40cd37:  add      esp, 4                        
0x40cd3a:  add      esp, 4                        
0x40cd3d:  pop      ebp                           
0x40cd3e:  ret                                    
0x40cd3f:  int3                                   
0x40cd40:  mov      eax, dword ptr [esp + 4]      
0x40cd44:  cmp      dword ptr [eax + 4], 2        
0x40cd48:  jne      0x40cd56                      
0x40cd4a:  add      eax, 8                        
0x40cd4d:  push     eax                           
0x40cd4e:  call     0x416f00                      
0x40cd53:  add      esp, 4                        
0x40cd56:  ret                                    
0x40cd57:  int3                                   
0x40cd58:  int3                                   
0x40cd59:  int3                                   
0x40cd5a:  int3                                   
0x40cd5b:  int3                                   
0x40cd5c:  int3                                   
0x40cd5d:  int3                                   
0x40cd5e:  int3                                   
0x40cd5f:  int3                                   
0x40cd60:  push     ebp                           
0x40cd61:  mov      ebp, esp                      
0x40cd63:  push     ebx                           
0x40cd64:  push     edi                           
0x40cd65:  push     esi                           
0x40cd66:  sub      esp, 0x14                     
0x40cd69:  mov      dword ptr [ebp - 0x1c], esp   
0x40cd6c:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cd73:  mov      dword ptr [ebp - 0x14], 0x40e000
0x40cd7a:  mov      edx, dword ptr [ebp + 8]      
0x40cd7d:  lea      eax, [ebp - 0x18]             
0x40cd80:  mov      ecx, dword ptr fs:[0]         
0x40cd87:  mov      dword ptr [ebp - 0x18], ecx   
0x40cd8a:  mov      dword ptr fs:[0], eax         
0x40cd90:  cmp      dword ptr [edx + 4], 2        
0x40cd94:  jne      0x40cdac                      
0x40cd96:  mov      eax, dword ptr [ebp + 8]      
0x40cd99:  mov      dword ptr [ebp - 0x10], 0     
0x40cda0:  add      eax, 8                        
0x40cda3:  push     eax                           
0x40cda4:  call     0x416f00                      
0x40cda9:  add      esp, 4                        
0x40cdac:  mov      eax, dword ptr [ebp + 8]      
0x40cdaf:  mov      ecx, dword ptr [eax + 0x24]   
0x40cdb2:  mov      eax, dword ptr [ecx]          
0x40cdb4:  mov      dword ptr [ebp - 0x20], ecx   
0x40cdb7:  cmp      eax, 1                        
0x40cdba:  je       0x40cddd                      
0x40cdbc:  test     eax, eax                      
0x40cdbe:  jne      0x40cdf0                      
0x40cdc0:  mov      eax, dword ptr [ebp - 0x20]   
0x40cdc3:  mov      eax, dword ptr [eax + 8]      
0x40cdc6:  test     eax, eax                      
0x40cdc8:  je       0x40cdf0                      
0x40cdca:  push     1                             
0x40cdcc:  push     eax                           
0x40cdcd:  mov      eax, dword ptr [ebp - 0x20]   
0x40cdd0:  push     dword ptr [eax + 4]           
0x40cdd3:  call     0x417800                      
0x40cdd8:  add      esp, 0xc                      
0x40cddb:  jmp      0x40cdf0                      
0x40cddd:  lea      eax, [ecx + 4]                
0x40cde0:  mov      dword ptr [ebp - 0x10], 1     
0x40cde7:  push     eax                           
0x40cde8:  call     0x40d150                      
0x40cded:  add      esp, 4                        
0x40cdf0:  push     4                             
0x40cdf2:  push     0x14                          
0x40cdf4:  push     dword ptr [ebp - 0x20]        
0x40cdf7:  call     0x417800                      
0x40cdfc:  add      esp, 0xc                      
0x40cdff:  mov      eax, dword ptr [ebp - 0x18]   
0x40ce02:  mov      dword ptr fs:[0], eax         
0x40ce08:  add      esp, 0x14                     
0x40ce0b:  pop      esi                           
0x40ce0c:  pop      edi                           
0x40ce0d:  pop      ebx                           
0x40ce0e:  pop      ebp                           
0x40ce0f:  ret                                    
0x40ce10:  push     ebp                           
0x40ce11:  sub      esp, 0xc                      
0x40ce14:  add      ebp, 0xc                      
0x40ce17:  push     4                             
0x40ce19:  push     0x14                          
0x40ce1b:  push     dword ptr [ebp - 0x20]        
0x40ce1e:  call     0x417800                      
0x40ce23:  add      esp, 0x18                     
0x40ce26:  pop      ebp                           
0x40ce27:  ret                                    
0x40ce28:  nop      dword ptr [eax + eax]         
0x40ce30:  push     ebp                           
0x40ce31:  sub      esp, 0xc                      
0x40ce34:  add      ebp, 0xc                      
0x40ce37:  mov      eax, dword ptr [ebp + 8]      
0x40ce3a:  add      eax, 0x1c                     
0x40ce3d:  push     eax                           
0x40ce3e:  call     0x40c8f0                      
0x40ce43:  add      esp, 0x10                     
0x40ce46:  pop      ebp                           
0x40ce47:  ret                                    
0x40ce48:  int3                                   
0x40ce49:  int3                                   
0x40ce4a:  int3                                   
0x40ce4b:  int3                                   
0x40ce4c:  int3                                   
0x40ce4d:  int3                                   
0x40ce4e:  int3                                   
0x40ce4f:  int3                                   
0x40ce50:  push     ebp                           
0x40ce51:  mov      ebp, esp                      
0x40ce53:  push     ebx                           
0x40ce54:  push     edi                           
0x40ce55:  push     esi                           
0x40ce56:  sub      esp, 0x10                     
0x40ce59:  mov      dword ptr [ebp - 0x1c], esp   
0x40ce5c:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40ce63:  mov      dword ptr [ebp - 0x14], 0x40e010
0x40ce6a:  mov      edx, dword ptr [ebp + 8]      
0x40ce6d:  lea      eax, [ebp - 0x18]             
0x40ce70:  mov      ecx, dword ptr fs:[0]         
0x40ce77:  mov      dword ptr [ebp - 0x18], ecx   
0x40ce7a:  mov      dword ptr fs:[0], eax         
0x40ce80:  cmp      dword ptr [edx + 4], 2        
0x40ce84:  jne      0x40ce9c                      
0x40ce86:  mov      eax, dword ptr [ebp + 8]      
0x40ce89:  mov      dword ptr [ebp - 0x10], 0     
0x40ce90:  add      eax, 8                        
0x40ce93:  push     eax                           
0x40ce94:  call     0x416f00                      
0x40ce99:  add      esp, 4                        
0x40ce9c:  mov      eax, dword ptr [ebp + 8]      
0x40ce9f:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cea6:  add      eax, 0x24                     
0x40cea9:  push     eax                           
0x40ceaa:  call     0x40d060                      
0x40ceaf:  add      esp, 4                        
0x40ceb2:  mov      eax, dword ptr [ebp - 0x18]   
0x40ceb5:  mov      dword ptr fs:[0], eax         
0x40cebb:  add      esp, 0x10                     
0x40cebe:  pop      esi                           
0x40cebf:  pop      edi                           
0x40cec0:  pop      ebx                           
0x40cec1:  pop      ebp                           
0x40cec2:  ret                                    
0x40cec3:  nop      word ptr cs:[eax + eax]       
0x40cecd:  nop      dword ptr [eax]               
0x40ced0:  push     ebp                           
0x40ced1:  push     eax                           
0x40ced2:  add      ebp, 0xc                      
0x40ced5:  mov      eax, dword ptr [ebp + 8]      
0x40ced8:  add      eax, 0x24                     
0x40cedb:  push     eax                           
0x40cedc:  call     0x40d060                      
0x40cee1:  add      esp, 8                        
0x40cee4:  pop      ebp                           
0x40cee5:  ret                                    
0x40cee6:  int3                                   
0x40cee7:  int3                                   
0x40cee8:  int3                                   
0x40cee9:  int3                                   
0x40ceea:  int3                                   
0x40ceeb:  int3                                   
0x40ceec:  int3                                   
0x40ceed:  int3                                   
0x40ceee:  int3                                   
0x40ceef:  int3                                   
0x40cef0:  push     ebp                           
0x40cef1:  mov      ebp, esp                      
0x40cef3:  push     ebx                           
0x40cef4:  push     edi                           
0x40cef5:  push     esi                           
0x40cef6:  sub      esp, 0x10                     
0x40cef9:  mov      dword ptr [ebp - 0x1c], esp   
0x40cefc:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cf03:  mov      dword ptr [ebp - 0x14], 0x40e020
0x40cf0a:  mov      edx, dword ptr [ebp + 8]      
0x40cf0d:  lea      eax, [ebp - 0x18]             
0x40cf10:  mov      ecx, dword ptr fs:[0]         
0x40cf17:  mov      dword ptr [ebp - 0x18], ecx   
0x40cf1a:  mov      dword ptr fs:[0], eax         
0x40cf20:  cmp      dword ptr [edx + 4], 2        
0x40cf24:  jne      0x40cf3c                      
0x40cf26:  mov      eax, dword ptr [ebp + 8]      
0x40cf29:  mov      dword ptr [ebp - 0x10], 0     
0x40cf30:  add      eax, 8                        
0x40cf33:  push     eax                           
0x40cf34:  call     0x416f00                      
0x40cf39:  add      esp, 4                        
0x40cf3c:  mov      eax, dword ptr [ebp + 8]      
0x40cf3f:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cf46:  add      eax, 0x24                     
0x40cf49:  push     eax                           
0x40cf4a:  call     0x40d150                      
0x40cf4f:  add      esp, 4                        
0x40cf52:  mov      eax, dword ptr [ebp - 0x18]   
0x40cf55:  mov      dword ptr fs:[0], eax         
0x40cf5b:  add      esp, 0x10                     
0x40cf5e:  pop      esi                           
0x40cf5f:  pop      edi                           
0x40cf60:  pop      ebx                           
0x40cf61:  pop      ebp                           
0x40cf62:  ret                                    
0x40cf63:  nop      word ptr cs:[eax + eax]       
0x40cf6d:  nop      dword ptr [eax]               
0x40cf70:  push     ebp                           
0x40cf71:  push     eax                           
0x40cf72:  add      ebp, 0xc                      
0x40cf75:  mov      eax, dword ptr [ebp + 8]      
0x40cf78:  add      eax, 0x24                     
0x40cf7b:  push     eax                           
0x40cf7c:  call     0x40d150                      
0x40cf81:  add      esp, 8                        
0x40cf84:  pop      ebp                           
0x40cf85:  ret                                    
0x40cf86:  int3                                   
0x40cf87:  int3                                   
0x40cf88:  int3                                   
0x40cf89:  int3                                   
0x40cf8a:  int3                                   
0x40cf8b:  int3                                   
0x40cf8c:  int3                                   
0x40cf8d:  int3                                   
0x40cf8e:  int3                                   
0x40cf8f:  int3                                   
0x40cf90:  mov      eax, dword ptr [esp + 4]      
0x40cf94:  cmp      byte ptr [eax], 3             
0x40cf97:  jbe      0x40d150                      
0x40cf9d:  ret                                    
0x40cf9e:  int3                                   
0x40cf9f:  int3                                   
0x40cfa0:  push     ebp                           
0x40cfa1:  mov      ebp, esp                      
0x40cfa3:  push     ebx                           
0x40cfa4:  push     edi                           
0x40cfa5:  push     esi                           
0x40cfa6:  sub      esp, 0x14                     
0x40cfa9:  mov      dword ptr [ebp - 0x1c], esp   
0x40cfac:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x40cfb3:  mov      dword ptr [ebp - 0x14], 0x40e030
0x40cfba:  mov      eax, dword ptr [ebp + 8]      
0x40cfbd:  lea      ecx, [ebp - 0x18]             
0x40cfc0:  mov      edx, dword ptr fs:[0]         
0x40cfc7:  mov      dword ptr [ebp - 0x18], edx   
0x40cfca:  mov      dword ptr fs:[0], ecx         
0x40cfd1:  mov      ecx, dword ptr [eax]          
0x40cfd3:  mov      eax, dword ptr [ecx]          
0x40cfd5:  mov      dword ptr [ebp - 0x20], ecx   
0x40cfd8:  cmp      eax, 1                        
0x40cfdb:  je       0x40cffe                      
0x40cfdd:  test     eax, eax                      
0x40cfdf:  jne      0x40d011                      
0x40cfe1:  mov      eax, dword ptr [ebp - 0x20]   
0x40cfe4:  mov      eax, dword ptr [eax + 8]      
0x40cfe7:  test     eax, eax                      
0x40cfe9:  je       0x40d011                      
0x40cfeb:  push     1                             
0x40cfed:  push     eax                           
0x40cfee:  mov      eax, dword ptr [ebp - 0x20]   
0x40cff1:  push     dword ptr [eax + 4]           
0x40cff4:  call     0x417800                      
0x40cff9:  add      esp, 0xc                      
0x40cffc:  jmp      0x40d011                      