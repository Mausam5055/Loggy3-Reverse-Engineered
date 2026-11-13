0x409870:  push     ebp                             
0x409871:  mov      ebp, esp                        
0x409873:  push     ebx                             
0x409874:  push     edi                             
0x409875:  push     esi                             
0x409876:  and      esp, 0xfffffff0                 
0x409879:  sub      esp, 0x680                      
0x40987f:  mov      esi, esp                        
0x409881:  mov      dword ptr [esi + 0x668], ebp    
0x409887:  mov      dword ptr [esi + 0x66c], esp    
0x40988d:  mov      dword ptr [esi + 0x678], 0xffffffff
0x409897:  mov      dword ptr [esi + 0x674], 0x40b7b0
0x4098a1:  lea      eax, [esi + 0x670]              
0x4098a7:  lea      edi, [esi + 0x120]              
0x4098ad:  lea      ebx, [esi + 0x90]               
0x4098b3:  mov      ecx, dword ptr fs:[0]           
0x4098ba:  mov      dword ptr [esi + 0x670], ecx    
0x4098c0:  mov      dword ptr fs:[0], eax           
0x4098c6:  mov      dword ptr [esi + 0x120], 0x5e32d8
0x4098d0:  mov      dword ptr [esi + 0x124], 0x5c6  
0x4098da:  mov      dword ptr [esi + 0x128], 0      
0x4098e4:  mov      dword ptr [esi + 0x12c], 0      
0x4098ee:  mov      dword ptr [esi + 0x130], 0x5e32d8
0x4098f8:  mov      dword ptr [esi + 0x134], 0x5c6  
0x409902:  push     edi                             
0x409903:  push     ebx                             
0x409904:  call     0x401000                        
0x409909:  add      esp, 8                          
0x40990c:  movzx    eax, byte ptr [esi + 0x90]      
0x409913:  cmp      al, 0xff                        
0x409915:  je       0x409ab3                        
0x40991b:  movzx    ecx, byte ptr [esi + 0x93]      
0x409922:  movq     xmm0, qword ptr [esi + 0x98]    
0x40992a:  movq     xmm1, qword ptr [esi + 0xa0]    
0x409932:  mov      dword ptr [esi + 0x120], 0x5e38c8
0x40993c:  mov      dword ptr [esi + 0x124], 0x205  
0x409946:  mov      dword ptr [esi + 0x128], 0      
0x409950:  mov      dword ptr [esi + 0x12c], 0      
0x40995a:  mov      dword ptr [esi + 0x130], 0x5e38c8
0x409964:  mov      dword ptr [esi + 0x134], 0x205  
0x40996e:  mov      dword ptr [esi + 0x678], 1      
0x409978:  mov      byte ptr [esi + 0x6b], cl       
0x40997b:  movzx    ecx, word ptr [esi + 0x91]      
0x409982:  mov      word ptr [esi + 0x69], cx       
0x409986:  mov      ecx, dword ptr [esi + 0x94]     
0x40998c:  movq     qword ptr [esi + 0x70], xmm0    
0x409991:  movq     qword ptr [esi + 0x78], xmm1    
0x409996:  mov      byte ptr [esi + 0x68], al       
0x409999:  mov      dword ptr [esi + 0x6c], ecx     
0x40999c:  push     edi                             
0x40999d:  push     ebx                             
0x40999e:  call     0x401000                        
0x4099a3:  add      esp, 8                          
0x4099a6:  movzx    eax, byte ptr [esi + 0x90]      
0x4099ad:  cmp      al, 0xff                        
0x4099af:  je       0x409b81                        
0x4099b5:  movzx    ecx, byte ptr [esi + 0x93]      
0x4099bc:  movq     xmm0, qword ptr [esi + 0x98]    
0x4099c4:  movq     xmm1, qword ptr [esi + 0xa0]    
0x4099cc:  mov      dword ptr [esi + 0x678], 3      
0x4099d6:  mov      byte ptr [esi + 0x43], cl       
0x4099d9:  movzx    ecx, word ptr [esi + 0x91]      
0x4099e0:  mov      word ptr [esi + 0x41], cx       
0x4099e4:  mov      ecx, dword ptr [esi + 0x94]     
0x4099ea:  movq     qword ptr [esi + 0x48], xmm0    
0x4099ef:  movq     qword ptr [esi + 0x50], xmm1    
0x4099f4:  mov      byte ptr [esi + 0x40], al       
0x4099f7:  lea      eax, [esi + 0x68]               
0x4099fa:  mov      dword ptr [esi + 0x44], ecx     
0x4099fd:  push     0x17                            
0x4099ff:  push     0x5e3afa                         ; '/plugins/updater/pubkeythe embedded updater public key is missing/plugins/updater/endpoints/0the embedded Windows updater endpoint is missingthe updater endpoint is invalidthe updater endpoint is not trusted\x01'
0x409a04:  push     eax                             
0x409a05:  call     0x457040                        
0x409a0a:  add      esp, 0xc                        
0x409a0d:  test     eax, eax                        
0x409a0f:  je       0x409b3c                        
0x409a15:  cmp      byte ptr [eax], 3               
0x409a18:  jne      0x409b3c                        
0x409a1e:  mov      ecx, dword ptr [eax + 8]        
0x409a21:  mov      eax, dword ptr [eax + 0xc]      
0x409a24:  mov      dword ptr [esi + 0x24], eax     
0x409a27:  lea      eax, [esi + 0x40]               
0x409a2a:  mov      dword ptr [esi + 0xc], ecx      
0x409a2d:  push     0x1c                            
0x409a2f:  push     0x5e3b3b                         ; '/plugins/updater/endpoints/0the embedded Windows updater endpoint is missingthe updater endpoint is invalidthe updater endpoint is not trusted\x01'
0x409a34:  push     eax                             
0x409a35:  call     0x457040                        
0x409a3a:  add      esp, 0xc                        
0x409a3d:  test     eax, eax                        
0x409a3f:  je       0x409c10                        
0x409a45:  cmp      byte ptr [eax], 3               
0x409a48:  jne      0x409c10                        
0x409a4e:  mov      ecx, dword ptr [eax + 8]        
0x409a51:  mov      eax, dword ptr [eax + 0xc]      
0x409a54:  mov      dword ptr [esi + 0xa0], 0       
0x409a5e:  mov      dword ptr [esi + 0x90], 0       
0x409a68:  mov      dword ptr [esi + 0x98], 0       
0x409a72:  push     eax                             
0x409a73:  push     ecx                             
0x409a74:  lea      eax, [esi + 0x90]               
0x409a7a:  push     eax                             
0x409a7b:  lea      eax, [esi + 0x120]              
0x409a81:  push     eax                             
0x409a82:  call     0x461870                        
0x409a87:  add      esp, 0x10                       
0x409a8a:  mov      eax, dword ptr [esi + 0x120]    
0x409a90:  cmp      eax, 2                          
0x409a93:  jne      0x409c55                        
0x409a99:  mov      ecx, dword ptr [esi + 0x124]    
0x409a9f:  mov      edx, 0x5e3b87                    ; 'the updater endpoint is invalidthe updater endpoint is not trusted\x01'
0x409aa4:  push     0x1f                            
0x409aa6:  call     0x5d8740                        
0x409aab:  add      esp, 4                          
0x409aae:  jmp      0x409dfa                        
0x409ab3:  mov      eax, dword ptr [esi + 0x94]     
0x409ab9:  mov      byte ptr [esi + 0x1d], 1        
0x409abd:  mov      dword ptr [esi + 0x678], 0      
0x409ac7:  mov      dword ptr [esi + 0xc], eax      
0x409aca:  push     edi                             
0x409acb:  call     0x4794a0                        
0x409ad0:  add      esp, 4                          
0x409ad3:  movq     xmm2, qword ptr [esi + 0x120]   
0x409adb:  movq     xmm0, qword ptr [esi + 0x130]   
0x409ae3:  movq     xmm1, qword ptr [esi + 0x128]   
0x409aeb:  mov      eax, dword ptr [esi + 0xc]      
0x409aee:  lea      ecx, [esi + 0x120]              
0x409af4:  lea      edx, [esi + 0x270]              
0x409afa:  mov      dword ptr [esi + 0x120], 0x5e389e
0x409b04:  mov      dword ptr [esi + 0x124], 0x2a   
0x409b0e:  mov      byte ptr [esi + 0x1d], 0        
0x409b12:  movq     qword ptr [esi + 0x280], xmm0   
0x409b1a:  movq     qword ptr [esi + 0x278], xmm1   
0x409b22:  movq     qword ptr [esi + 0x270], xmm2   
0x409b2a:  mov      dword ptr [esi + 0x128], eax    
0x409b30:  call     0x5d7e00                        
0x409b35:  mov      edi, eax                        
0x409b37:  jmp      0x409e2e                        
0x409b3c:  lea      eax, [esi + 0x120]              
0x409b42:  push     eax                             
0x409b43:  call     0x4794a0                        
0x409b48:  add      esp, 4                          
0x409b4b:  lea      eax, [esi + 0x120]              
0x409b51:  mov      ecx, 0x5e3b11                    ; 'the embedded updater public key is missing/plugins/updater/endpoints/0the embedded Windows updater endpoint is missingthe updater endpoint is invalidthe updater endpoint is not trusted\x01'
0x409b56:  mov      edx, 0x2a                       
0x409b5b:  push     eax                             
0x409b5c:  call     0x5d81d0                        
0x409b61:  add      esp, 4                          
0x409b64:  mov      dword ptr [esi + 0xc], eax      
0x409b67:  lea      ecx, [esi + 0x40]               
0x409b6a:  mov      dword ptr [esi + 0x678], 1      
0x409b74:  call     0x4017a0                        
0x409b79:  mov      edi, dword ptr [esi + 0xc]      
0x409b7c:  jmp      0x409e1c                        
0x409b81:  mov      eax, dword ptr [esi + 0x94]     
0x409b87:  mov      byte ptr [esi + 0x1e], 1        
0x409b8b:  mov      dword ptr [esi + 0x678], 2      
0x409b95:  mov      dword ptr [esi + 0xc], eax      
0x409b98:  lea      eax, [esi + 0x120]              
0x409b9e:  push     eax                             
0x409b9f:  call     0x4794a0                        
0x409ba4:  add      esp, 4                          
0x409ba7:  movq     xmm2, qword ptr [esi + 0x120]   
0x409baf:  movq     xmm0, qword ptr [esi + 0x130]   
0x409bb7:  movq     xmm1, qword ptr [esi + 0x128]   
0x409bbf:  mov      eax, dword ptr [esi + 0xc]      
0x409bc2:  lea      ecx, [esi + 0x120]              
0x409bc8:  lea      edx, [esi + 0x270]              
0x409bce:  mov      dword ptr [esi + 0x120], 0x5e3acd
0x409bd8:  mov      dword ptr [esi + 0x124], 0x2d   
0x409be2:  mov      byte ptr [esi + 0x1e], 0        
0x409be6:  movq     qword ptr [esi + 0x280], xmm0   
0x409bee:  movq     qword ptr [esi + 0x278], xmm1   
0x409bf6:  movq     qword ptr [esi + 0x270], xmm2   
0x409bfe:  mov      dword ptr [esi + 0x128], eax    
0x409c04:  call     0x5d7e00                        
0x409c09:  mov      edi, eax                        
0x409c0b:  jmp      0x409e1c                        
0x409c10:  lea      eax, [esi + 0x120]              
0x409c16:  push     eax                             
0x409c17:  call     0x4794a0                        
0x409c1c:  add      esp, 4                          
0x409c1f:  lea      eax, [esi + 0x120]              
0x409c25:  mov      ecx, 0x5e3b57                    ; 'the embedded Windows updater endpoint is missingthe updater endpoint is invalidthe updater endpoint is not trusted\x01'
0x409c2a:  mov      edx, 0x30                       
0x409c2f:  push     eax                             
0x409c30:  call     0x5d81d0                        
0x409c35:  add      esp, 4                          
0x409c38:  mov      dword ptr [esi + 0xc], eax      
0x409c3b:  lea      ecx, [esi + 0x40]               
0x409c3e:  mov      dword ptr [esi + 0x678], 1      
0x409c48:  call     0x4017a0                        
0x409c4d:  mov      edi, dword ptr [esi + 0xc]      
0x409c50:  jmp      0x409e1c                        
0x409c55:  movsd    xmm1, qword ptr [esi + 0x130]   
0x409c5d:  movsd    xmm2, qword ptr [esi + 0x138]   
0x409c65:  mov      ecx, dword ptr [esi + 0x124]    
0x409c6b:  movq     xmm0, qword ptr [esi + 0x128]   
0x409c73:  mov      dword ptr [esi + 0x34], eax     
0x409c76:  movsd    qword ptr [esi + 0x280], xmm1   
0x409c7e:  movsd    xmm1, qword ptr [esi + 0x140]   
0x409c86:  movsd    qword ptr [esi + 0x288], xmm2   
0x409c8e:  movsd    xmm2, qword ptr [esi + 0x148]   
0x409c96:  movq     qword ptr [esi + 0x278], xmm0   
0x409c9e:  mov      dword ptr [esi + 0x2c], ecx     
0x409ca1:  movsd    qword ptr [esi + 0x290], xmm1   
0x409ca9:  movsd    xmm1, qword ptr [esi + 0x150]   
0x409cb1:  movsd    qword ptr [esi + 0x298], xmm2   
0x409cb9:  movq     xmm2, qword ptr [esi + 0x158]   
0x409cc1:  movsd    qword ptr [esi + 0x2a0], xmm1   
0x409cc9:  movq     xmm1, qword ptr [esi + 0x160]   
0x409cd1:  movq     qword ptr [esi + 0x2a8], xmm2   
0x409cd9:  movq     qword ptr [esi + 0x2b0], xmm1   
0x409ce1:  mov      dword ptr [esi + 0x270], eax    
0x409ce7:  mov      dword ptr [esi + 0x274], ecx    
0x409ced:  mov      eax, dword ptr [esi + 0x290]    
0x409cf3:  mov      ecx, dword ptr [esi + 0x284]    
0x409cf9:  test     eax, eax                        
0x409cfb:  mov      dword ptr [esi + 0x14], ecx     
0x409cfe:  je       0x409dc1                        
0x409d04:  mov      ecx, dword ptr [esi + 0x288]    
0x409d0a:  cmp      eax, ecx                        
0x409d0c:  jae      0x409d3e                        
0x409d0e:  mov      edx, dword ptr [esi + 0x14]     
0x409d11:  cmp      byte ptr [edx + eax], 0xbf      
0x409d15:  jg       0x409d40                        
0x409d17:  mov      byte ptr [esi + 0x13], 1        
0x409d1b:  mov      dword ptr [esi + 0x678], 4      
0x409d25:  push     0x5e4338                        
0x409d2a:  push     eax                             
0x409d2b:  push     0                               
0x409d2d:  push     ecx                             
0x409d2e:  push     dword ptr [esi + 0x14]          
0x409d31:  call     0x5db5f0                        
0x409d36:  add      esp, 0x14                       
0x409d39:  jmp      0x40ad1c                        
0x409d3e:  jne      0x409d17                        
0x409d40:  cmp      eax, 5                          
0x409d43:  jne      0x409dc1                        
0x409d45:  mov      ecx, dword ptr [esi + 0x14]     
0x409d48:  mov      eax, 0x70747468                 
0x409d4d:  xor      eax, dword ptr [ecx]            
0x409d4f:  movzx    ecx, byte ptr [ecx + 4]         
0x409d53:  xor      ecx, 0x73                       
0x409d56:  or       ecx, eax                        
0x409d58:  jne      0x409dc1                        
0x409d5a:  lea      eax, [esi + 0x270]              
0x409d60:  mov      byte ptr [esi + 0x13], 1        
0x409d64:  mov      dword ptr [esi + 0x678], 4      
0x409d6e:  push     eax                             
0x409d6f:  call     0x462a00                        
0x409d74:  add      esp, 4                          
0x409d77:  test     eax, eax                        
0x409d79:  jne      0x409dc1                        
0x409d7b:  lea      eax, [esi + 0x270]              
0x409d81:  mov      byte ptr [esi + 0x13], 1        
0x409d85:  push     eax                             
0x409d86:  call     0x462a90                        
0x409d8b:  add      esp, 4                          
0x409d8e:  test     eax, eax                        
0x409d90:  jne      0x409dc1                        
0x409d92:  mov      edi, dword ptr [esi + 0x24]     
0x409d95:  mov      ebx, dword ptr [esi + 0x280]    
0x409d9b:  xor      eax, eax                        
0x409d9d:  test     edi, edi                        
0x409d9f:  mov      dword ptr [esi + 0x30], ebx     
0x409da2:  jns      0x409e44                        
0x409da8:  mov      dword ptr [esi + 0x678], 5      
0x409db2:  push     edi                             
0x409db3:  push     eax                             
0x409db4:  call     0x5db4f2                        
0x409db9:  add      esp, 8                          
0x409dbc:  jmp      0x40ad1c                        
0x409dc1:  mov      byte ptr [esi + 0x13], 1        
0x409dc5:  mov      dword ptr [esi + 0x678], 4      
0x409dcf:  push     0x23                            
0x409dd1:  push     0x5e3ba6                         ; 'the updater endpoint is not trusted\x01'
0x409dd6:  call     0x5d77c0                        
0x409ddb:  add      esp, 8                          
0x409dde:  mov      edi, eax                        
0x409de0:  mov      eax, dword ptr [esi + 0x280]    
0x409de6:  test     eax, eax                        
0x409de8:  je       0x409df8                        
0x409dea:  push     1                               
0x409dec:  push     eax                             
0x409ded:  push     dword ptr [esi + 0x14]          
0x409df0:  call     0x417800                        
0x409df5:  add      esp, 0xc                        
0x409df8:  mov      eax, edi                        
0x409dfa:  mov      dword ptr [esi + 0xc], eax      
0x409dfd:  mov      dword ptr [esi + 0x678], 1      
0x409e07:  lea      ecx, [esi + 0x40]               
0x409e0a:  mov      dword ptr [esi + 0x678], 1      
0x409e14:  call     0x4017a0                        
0x409e19:  mov      edi, dword ptr [esi + 0xc]      
0x409e1c:  lea      ecx, [esi + 0x68]               
0x409e1f:  mov      dword ptr [esi + 0x678], 0xffffffff
0x409e29:  call     0x4017a0                        
0x409e2e:  mov      eax, dword ptr [esi + 0x670]    
0x409e34:  mov      dword ptr fs:[0], eax           
0x409e3a:  mov      eax, edi                        
0x409e3c:  lea      esp, [ebp - 0xc]                
0x409e3f:  pop      esi                             
0x409e40:  pop      edi                             
0x409e41:  pop      ebx                             
0x409e42:  pop      ebp                             
0x409e43:  ret                                      
0x409e44:  mov      eax, dword ptr [esi + 0x278]    
0x409e4a:  mov      ecx, dword ptr [esi + 0x27c]    
0x409e50:  mov      dword ptr [esi + 0x28], eax     
0x409e53:  mov      dword ptr [esi + 0x3c], ecx     
0x409e56:  je       0x409e82                        
0x409e58:  call     0x40da80                        
0x409e5d:  push     1                               
0x409e5f:  push     edi                             
0x409e60:  call     0x4177f0                        
0x409e65:  add      esp, 8                          
0x409e68:  test     eax, eax                        
0x409e6a:  je       0x40ad1e                        
0x409e70:  push     edi                             
0x409e71:  push     dword ptr [esi + 0xc]           
0x409e74:  mov      dword ptr [esi + 0x38], eax     
0x409e77:  push     eax                             
0x409e78:  call     0x5cf3c0                        
0x409e7d:  add      esp, 0xc                        
0x409e80:  jmp      0x409e89                        
0x409e82:  mov      dword ptr [esi + 0x38], 1       
0x409e89:  lea      eax, [esi + 0x288]              
0x409e8f:  lea      ecx, [esi + 0x40]               
0x409e92:  mov      dword ptr [esi + 0x678], 1      
0x409e9c:  movsd    xmm1, qword ptr [eax + 0x20]    
0x409ea1:  movsd    xmm2, qword ptr [eax + 0x18]    
0x409ea6:  movq     xmm0, qword ptr [eax + 0x28]    
0x409eab:  movsd    qword ptr [esi + 0x3e0], xmm1   
0x409eb3:  movsd    xmm1, qword ptr [eax + 0x10]    
0x409eb8:  movsd    qword ptr [esi + 0x3d8], xmm2   
0x409ec0:  movq     xmm2, qword ptr [eax]           
0x409ec4:  movq     qword ptr [esi + 0x3e8], xmm0   
0x409ecc:  movsd    qword ptr [esi + 0x3d0], xmm1   
0x409ed4:  movq     xmm1, qword ptr [eax + 8]       
0x409ed9:  movq     qword ptr [esi + 0x3c0], xmm2   
0x409ee1:  movq     qword ptr [esi + 0x3c8], xmm1   
0x409ee9:  call     0x4017a0                        
0x409eee:  lea      ecx, [esi + 0x68]               
0x409ef1:  mov      dword ptr [esi + 0x678], 0xffffffff
0x409efb:  call     0x4017a0                        
0x409f00:  mov      eax, dword ptr [esi + 0x3c]     
0x409f03:  movsd    xmm1, qword ptr [esi + 0x3c8]   
0x409f0b:  movsd    xmm2, qword ptr [esi + 0x3d0]   
0x409f13:  movq     xmm0, qword ptr [esi + 0x3c0]   
0x409f1b:  mov      dword ptr [esi + 0x124], 0x5e3f58 ; 'kernel32.dllIsWow64Process2'
0x409f25:  mov      word ptr [esi + 0x68], 0        
0x409f2b:  mov      word ptr [esi + 0x40], 0        
0x409f31:  mov      dword ptr [esi + 0x678], 6      
0x409f3b:  mov      dword ptr [esi + 0x9c], eax     
0x409f41:  mov      eax, dword ptr [esi + 0x28]     
0x409f44:  mov      dword ptr [esi + 0x98], eax     
0x409f4a:  mov      eax, dword ptr [esi + 0x30]     
0x409f4d:  mov      dword ptr [esi + 0xa0], eax     
0x409f53:  mov      eax, dword ptr [esi + 0x14]     
0x409f56:  mov      dword ptr [esi + 0xa4], eax     
0x409f5c:  movsd    qword ptr [esi + 0xb0], xmm1    
0x409f64:  movsd    xmm1, qword ptr [esi + 0x3d8]   
0x409f6c:  movsd    qword ptr [esi + 0xb8], xmm2    
0x409f74:  movq     xmm2, qword ptr [esi + 0x3e0]   
0x409f7c:  mov      eax, dword ptr [esi + 0x34]     
0x409f7f:  movq     qword ptr [esi + 0xa8], xmm0    
0x409f87:  movsd    qword ptr [esi + 0xc0], xmm1    
0x409f8f:  movq     xmm1, qword ptr [esi + 0x3e8]   
0x409f97:  movq     qword ptr [esi + 0xc8], xmm2    
0x409f9f:  movq     qword ptr [esi + 0xd0], xmm1    
0x409fa7:  mov      dword ptr [esi + 0x90], eax     
0x409fad:  mov      eax, dword ptr [esi + 0x2c]     
0x409fb0:  mov      dword ptr [esi + 0x94], eax     
0x409fb6:  lea      eax, [0x5e3f64]                 
0x409fbc:  mov      dword ptr [esi + 0x128], eax    
0x409fc2:  lea      eax, [esi + 0x120]              
0x409fc8:  mov      word ptr [esi + 0x12c], 0       
0x409fd1:  mov      dword ptr [esi + 0x120], 1      
0x409fdb:  push     eax                             
0x409fdc:  lea      eax, [esi + 0x270]              
0x409fe2:  push     eax                             
0x409fe3:  call     0x412040                        
0x409fe8:  add      esp, 8                          
0x409feb:  mov      ebx, dword ptr [esi + 0x274]    
0x409ff1:  push     ebx                             
0x409ff2:  call     dword ptr [0x652abc]            
0x409ff8:  mov      edi, eax                        
0x409ffa:  mov      eax, dword ptr [esi + 0x270]    
0x40a000:  test     eax, eax                        
0x40a002:  je       0x40a012                        
0x40a004:  add      eax, eax                        
0x40a006:  push     2                               
0x40a008:  push     eax                             
0x40a009:  push     ebx                             
0x40a00a:  call     0x417800                        
0x40a00f:  add      esp, 0xc                        
0x40a012:  test     edi, edi                        
0x40a014:  je       0x40a09a                        
0x40a01a:  push     0x5e3f64                         ; 'IsWow64Process2'
0x40a01f:  push     edi                             
0x40a020:  call     dword ptr [0x652ac8]            
0x40a026:  test     eax, eax                        
0x40a028:  je       0x40a09a                        
0x40a02a:  mov      edi, eax                        
0x40a02c:  call     dword ptr [0x652a84]            
0x40a032:  lea      ecx, [esi + 0x40]               
0x40a035:  push     ecx                             
0x40a036:  lea      ecx, [esi + 0x68]               
0x40a039:  push     ecx                             
0x40a03a:  push     eax                             
0x40a03b:  call     edi                             
0x40a03d:  test     eax, eax                        
0x40a03f:  je       0x40a09a                        
0x40a041:  movzx    eax, word ptr [esi + 0x40]      
0x40a045:  cmp      eax, 0x14c                      
0x40a04a:  je       0x40a102                        
0x40a050:  cmp      eax, 0x8664                     
0x40a055:  lea      edi, [esi + 0x120]              
0x40a05b:  je       0x40a0ea                        
0x40a061:  cmp      eax, 0xaa64                     
0x40a066:  je       0x40a0de                        
0x40a068:  mov      word ptr [esi + 0x270], ax      
0x40a06f:  lea      eax, [esi + 0x270]              
0x40a075:  lea      edx, [esi + 0x120]              
0x40a07b:  mov      ecx, 0x5e3d4b                   
0x40a080:  mov      dword ptr [esi + 0x120], eax    
0x40a086:  mov      dword ptr [esi + 0x124], 0x491db0
0x40a090:  call     0x5d76c0                        
0x40a095:  jmp      0x40acc6                        
0x40a09a:  pxor     xmm0, xmm0                      
0x40a09e:  lea      edi, [esi + 0x120]              
0x40a0a4:  mov      dword ptr [esi + 0x140], 0      
0x40a0ae:  movdqa   xmmword ptr [esi + 0x130], xmm0 
0x40a0b6:  movdqa   xmmword ptr [esi + 0x120], xmm0 
0x40a0be:  push     edi                             
0x40a0bf:  call     dword ptr [0x652ac0]            
0x40a0c5:  movzx    eax, word ptr [esi + 0x120]     
0x40a0cc:  test     eax, eax                        
0x40a0ce:  je       0x40a0f6                        
0x40a0d0:  cmp      eax, 9                          
0x40a0d3:  je       0x40a0ea                        
0x40a0d5:  cmp      eax, 0xc                        
0x40a0d8:  jne      0x40ac99                        
0x40a0de:  mov      eax, 0x5e3d44                   
0x40a0e3:  mov      ecx, 7                          
0x40a0e8:  jmp      0x40a112                        
0x40a0ea:  mov      eax, 0x5e3d3e                   
0x40a0ef:  mov      ecx, 6                          
0x40a0f4:  jmp      0x40a112                        
0x40a0f6:  mov      eax, 0x5e3d3a                   
0x40a0fb:  mov      ecx, 4                          
0x40a100:  jmp      0x40a112                        
0x40a102:  mov      eax, 0x5e3d3a                   
0x40a107:  mov      ecx, 4                          
0x40a10c:  lea      edi, [esi + 0x120]              
0x40a112:  mov      dword ptr [esi + 0xe8], eax     
0x40a118:  mov      dword ptr [esi + 0x14], eax     
0x40a11b:  lea      eax, [esi + 0xe8]               
0x40a121:  mov      dword ptr [esi + 0x34], ecx     
0x40a124:  mov      dword ptr [esi + 0xec], ecx     
0x40a12a:  mov      dword ptr [esi + 0x270], eax    
0x40a130:  lea      eax, [esi + 0x270]              
0x40a136:  mov      dword ptr [esi + 0x274], 0x410900
0x40a140:  push     eax                             
0x40a141:  push     0x5e4084                        
0x40a146:  push     edi                             
0x40a147:  call     0x486300                        
0x40a14c:  add      esp, 0xc                        
0x40a14f:  mov      eax, dword ptr [esi + 0x128]    
0x40a155:  movq     xmm0, qword ptr [esi + 0x120]   
0x40a15d:  mov      dword ptr [esi + 0x678], 7      
0x40a167:  mov      dword ptr [esi + 0x88], eax     
0x40a16d:  lea      eax, [esi + 0x518]              
0x40a173:  movq     qword ptr [esi + 0x80], xmm0    
0x40a17b:  push     eax                             
0x40a17c:  call     0x429550                        
0x40a181:  add      esp, 4                          
0x40a184:  lea      eax, [esi + 0x270]              
0x40a18a:  mov      byte ptr [esi + 0x63c], 1       
0x40a191:  mov      dword ptr [esi + 0x270], 2      
0x40a19b:  push     eax                             
0x40a19c:  lea      eax, [esi + 0x518]              
0x40a1a2:  push     eax                             
0x40a1a3:  lea      eax, [esi + 0x120]              
0x40a1a9:  push     eax                             
0x40a1aa:  call     0x42b830                        
0x40a1af:  add      esp, 0xc                        
0x40a1b2:  mov      eax, dword ptr [esi + 0x26c]    
0x40a1b8:  lea      edi, [esi + 0x3c0]              
0x40a1be:  mov      dword ptr [esi + 0xc], eax      
0x40a1c1:  push     0x58                            
0x40a1c3:  lea      ebx, [esi + 0x120]              
0x40a1c9:  push     ebx                             
0x40a1ca:  push     edi                             
0x40a1cb:  call     0x5cf3c0                        
0x40a1d0:  add      esp, 0xc                        
0x40a1d3:  push     0xdc                            
0x40a1d8:  lea      eax, [esi + 0x184]              
0x40a1de:  push     eax                             
0x40a1df:  lea      eax, [esi + 0x270]              
0x40a1e5:  push     eax                             
0x40a1e6:  call     0x5cf3c0                        
0x40a1eb:  add      esp, 0xc                        
0x40a1ee:  push     0x58                            
0x40a1f0:  push     edi                             
0x40a1f1:  push     ebx                             
0x40a1f2:  call     0x5cf3c0                        
0x40a1f7:  add      esp, 0xc                        
0x40a1fa:  mov      dword ptr [esi + 0x17c], 0      
0x40a204:  mov      dword ptr [esi + 0x178], 0x14   
0x40a20e:  mov      dword ptr [esi + 0x180], 0      
0x40a218:  push     0xdc                            
0x40a21d:  lea      eax, [esi + 0x270]              
0x40a223:  push     eax                             
0x40a224:  lea      eax, [esi + 0x184]              
0x40a22a:  push     eax                             
0x40a22b:  call     0x5cf3c0                        
0x40a230:  add      esp, 0xc                        
0x40a233:  mov      eax, dword ptr [esi + 0xc]      
0x40a236:  mov      dword ptr [esi + 0x264], 0      
0x40a240:  mov      dword ptr [esi + 0x260], 0x384  
0x40a24a:  mov      dword ptr [esi + 0x268], 0      
0x40a254:  mov      dword ptr [esi + 0x26c], eax    
0x40a25a:  call     0x40da80                        
0x40a25f:  push     1                               
0x40a261:  push     0x16                            
0x40a263:  call     0x4177f0                        
0x40a268:  add      esp, 8                          
0x40a26b:  test     eax, eax                        
0x40a26d:  mov      dword ptr [esi + 0xc], eax      
0x40a270:  je       0x40ad06                        
0x40a276:  mov      dword ptr [esi + 0x108], 0x16   
0x40a280:  mov      dword ptr [esi + 0x10c], eax    
0x40a286:  mov      word ptr [eax + 0x14], 0x352e   
0x40a28c:  mov      dword ptr [eax + 0x10], 0x30312e30
0x40a293:  mov      dword ptr [eax + 0xc], 0x2f706172
0x40a29a:  mov      dword ptr [eax + 8], 0x7473746f 
0x40a2a1:  mov      dword ptr [eax + 4], 0x6f423379 
0x40a2a8:  mov      dword ptr [eax], 0x67676f4c     
0x40a2ae:  mov      dword ptr [esi + 0x110], 0x16   
0x40a2b8:  push     0x140                           
0x40a2bd:  lea      eax, [esi + 0x120]              
0x40a2c3:  push     eax                             
0x40a2c4:  lea      edi, [esi + 0x270]              
0x40a2ca:  push     edi                             
0x40a2cb:  call     0x5cf3c0                        
0x40a2d0:  add      esp, 0xc                        
0x40a2d3:  lea      eax, [esi + 0x108]              
0x40a2d9:  mov      dword ptr [esi + 0x678], 9      
0x40a2e3:  push     eax                             
0x40a2e4:  push     edi                             
0x40a2e5:  lea      eax, [esi + 0x3c0]              
0x40a2eb:  push     eax                             
0x40a2ec:  call     0x4145e0                        
0x40a2f1:  add      esp, 0xc                        
0x40a2f4:  push     0x140                           
0x40a2f9:  lea      eax, [esi + 0x3c0]              
0x40a2ff:  push     eax                             
0x40a300:  lea      edi, [esi + 0x120]              
0x40a306:  push     edi                             
0x40a307:  call     0x5cf3c0                        
0x40a30c:  add      esp, 0xc                        
0x40a30f:  push     0x150                           
0x40a314:  push     edi                             
0x40a315:  lea      edi, [esi + 0x270]              
0x40a31b:  push     edi                             
0x40a31c:  call     0x5cf3c0                        
0x40a321:  add      esp, 0xc                        
0x40a324:  mov      dword ptr [esi + 0x678], 7      
0x40a32e:  push     edi                             
0x40a32f:  lea      eax, [esi + 0x40]               
0x40a332:  push     eax                             
0x40a333:  call     0x42aff0                        
0x40a338:  add      esp, 8                          
0x40a33b:  mov      eax, dword ptr [esi + 0x48]     
0x40a33e:  mov      edi, dword ptr [esi + 0x40]     
0x40a341:  cmp      eax, -2                         
0x40a344:  jne      0x40a3d3                        
0x40a34a:  lea      eax, [esi + 0x120]              
0x40a350:  mov      dword ptr [esi + 0xc], edi      
0x40a353:  mov      byte ptr [esi + 0x1f], 1        
0x40a357:  mov      dword ptr [esi + 0x678], 8      
0x40a361:  push     eax                             
0x40a362:  call     0x4794a0                        
0x40a367:  add      esp, 4                          
0x40a36a:  movq     xmm2, qword ptr [esi + 0x120]   
0x40a372:  movq     xmm0, qword ptr [esi + 0x130]   
0x40a37a:  movq     xmm1, qword ptr [esi + 0x128]   
0x40a382:  mov      eax, dword ptr [esi + 0xc]      
0x40a385:  lea      ecx, [esi + 0x120]              
0x40a38b:  lea      edx, [esi + 0x270]              
0x40a391:  mov      dword ptr [esi + 0x120], 0x5e408f
0x40a39b:  mov      dword ptr [esi + 0x124], 0x2a   
0x40a3a5:  mov      byte ptr [esi + 0x1f], 0        
0x40a3a9:  movq     qword ptr [esi + 0x280], xmm0   
0x40a3b1:  movq     qword ptr [esi + 0x278], xmm1   
0x40a3b9:  movq     qword ptr [esi + 0x270], xmm2   
0x40a3c1:  mov      dword ptr [esi + 0x128], eax    
0x40a3c7:  call     0x5d7ef0                        
0x40a3cc:  mov      edi, eax                        
0x40a3ce:  jmp      0x40a79f                        
0x40a3d3:  movq     xmm0, qword ptr [esi + 0x4c]    
0x40a3d8:  mov      edx, dword ptr [esi + 0x54]     
0x40a3db:  mov      ecx, dword ptr [esi + 0x44]     
0x40a3de:  mov      dword ptr [esi + 0x678], 0xa    
0x40a3e8:  mov      dword ptr [esi + 0x7c], edx     
0x40a3eb:  movq     qword ptr [esi + 0x74], xmm0    
0x40a3f0:  mov      dword ptr [esi + 0x68], edi     
0x40a3f3:  mov      dword ptr [esi + 0x6c], ecx     
0x40a3f6:  mov      dword ptr [esi + 0x70], eax     
0x40a3f9:  lea      ecx, [esi + 0x3c0]              
0x40a3ff:  lea      edx, [esi + 0x68]               
0x40a402:  push     0x100000                        
0x40a407:  lea      eax, [esi + 0x90]               
0x40a40d:  push     eax                             
0x40a40e:  call     0x40b040                        
0x40a413:  add      esp, 8                          
0x40a416:  mov      eax, dword ptr [esi + 0x3c0]    
0x40a41c:  mov      edx, dword ptr [esi + 0x3c4]    
0x40a422:  lea      ecx, [esi + 0x120]              
0x40a428:  cmp      eax, -1                         
0x40a42b:  je       0x40a655                        
0x40a431:  mov      dword ptr [esi + 0x2c], eax     
0x40a434:  mov      eax, dword ptr [esi + 0x3c8]    
0x40a43a:  mov      dword ptr [esi + 0x40], edx     
0x40a43d:  mov      dword ptr [esi + 0x30], edx     
0x40a440:  mov      dword ptr [esi + 0x678], 0xb    
0x40a44a:  mov      dword ptr [esi + 0x44], eax     
0x40a44d:  lea      eax, [esi + 0x40]               
0x40a450:  mov      dword ptr [esi + 0x48], 0       
0x40a457:  mov      dword ptr [esi + 0x4c], 0       
0x40a45e:  push     eax                             
0x40a45f:  push     ecx                             
0x40a460:  call     0x401190                        
0x40a465:  add      esp, 8                          
0x40a468:  push     0x26                            
0x40a46a:  push     0x5e40e0                        
0x40a46f:  lea      eax, [esi + 0x120]              
0x40a475:  push     eax                             
0x40a476:  lea      eax, [esi + 0x270]              
0x40a47c:  push     eax                             
0x40a47d:  call     0x413e30                        
0x40a482:  add      esp, 0x10                       
0x40a485:  mov      ecx, dword ptr [esi + 0x290]    
0x40a48b:  mov      edi, dword ptr [esi + 0x270]    
0x40a491:  cmp      ecx, -1                         
0x40a494:  je       0x40a766                        
0x40a49a:  mov      eax, dword ptr [esi + 0x28c]    
0x40a4a0:  movsd    xmm1, qword ptr [esi + 0x27c]   
0x40a4a8:  movq     xmm0, qword ptr [esi + 0x284]   
0x40a4b0:  movq     xmm2, qword ptr [esi + 0x274]   
0x40a4b8:  mov      dword ptr [esi + 0x28], ecx     
0x40a4bb:  mov      dword ptr [esi + 0xc], edi      
0x40a4be:  mov      dword ptr [esi + 0x678], 0xc    
0x40a4c8:  mov      dword ptr [esi + 0x3dc], eax    
0x40a4ce:  movsd    qword ptr [esi + 0x3cc], xmm1   
0x40a4d6:  movq     xmm1, qword ptr [esi + 0x294]   
0x40a4de:  mov      eax, dword ptr [esi + 0x29c]    
0x40a4e4:  movq     qword ptr [esi + 0x3d4], xmm0   
0x40a4ec:  movq     qword ptr [esi + 0x3c4], xmm2   
0x40a4f4:  movq     qword ptr [esi + 0x3e4], xmm1   
0x40a4fc:  mov      dword ptr [esi + 0x3ec], eax    
0x40a502:  mov      dword ptr [esi + 0x3c0], edi    
0x40a508:  mov      dword ptr [esi + 0x3e0], ecx    
0x40a50e:  mov      ecx, dword ptr [esi + 0x3e8]    
0x40a514:  mov      eax, dword ptr [esi + 0x3e4]    
0x40a51a:  push     ecx                             
0x40a51b:  push     eax                             
0x40a51c:  call     0x413630                        
0x40a521:  add      esp, 8                          
0x40a524:  test     edx, edx                        
0x40a526:  je       0x40acd8                        
0x40a52c:  cmp      dword ptr [esi + 0x3cc], 0      
0x40a533:  je       0x40a6a5                        
0x40a539:  lea      eax, [esi + 0x3d0]              
0x40a53f:  lea      ecx, [esi + 0x80]               
0x40a545:  push     ecx                             
0x40a546:  push     eax                             
0x40a547:  call     0x412bd0                        
0x40a54c:  add      esp, 8                          
0x40a54f:  mov      edx, dword ptr [esi + 0x3c4]    
0x40a555:  movd     xmm0, eax                       
0x40a559:  mov      ecx, dword ptr [esi + 0x84]     
0x40a55f:  mov      edi, dword ptr [esi + 0x88]     
0x40a565:  pcmpeqd  xmm2, xmm2                      
0x40a569:  mov      dword ptr [esi + 0x18], 0       
0x40a570:  psrld    xmm0, 0x19                      
0x40a575:  punpcklbw xmm0, xmm0                      
0x40a579:  pshuflw  xmm0, xmm0, 0                   
0x40a57e:  mov      ebx, edx                        
0x40a580:  pshufd   xmm1, xmm0, 0x44                
0x40a585:  mov      dword ptr [esi + 0x3c], ecx     
0x40a588:  and      ebx, eax                        
0x40a58a:  movdqa   xmmword ptr [esi + 0xf0], xmm1  
0x40a592:  mov      ecx, dword ptr [esi + 0xc]      
0x40a595:  movdqu   xmm3, xmmword ptr [ecx + ebx]   
0x40a59a:  movdqa   xmm0, xmm3                      
0x40a59e:  pcmpeqb  xmm0, xmm1                      
0x40a5a2:  pmovmskb eax, xmm0                       
0x40a5a6:  test     eax, eax                        
0x40a5a8:  je       0x40a623                        
0x40a5aa:  mov      dword ptr [esi + 0xe0], edx     
0x40a5b0:  movdqa   xmmword ptr [esi + 0x500], xmm3 
0x40a5b8:  mov      dword ptr [esi + 0x20], edi     
0x40a5bb:  mov      dword ptr [esi + 0xdc], ebx     
0x40a5c1:  mov      dword ptr [esi + 0xe4], eax     
0x40a5c7:  tzcnt    eax, eax                        
0x40a5cb:  add      eax, ebx                        
0x40a5cd:  mov      ebx, ecx                        
0x40a5cf:  and      eax, edx                        
0x40a5d1:  neg      eax                             
0x40a5d3:  lea      eax, [eax + eax*8]              
0x40a5d6:  cmp      edi, dword ptr [ecx + eax*4 - 0x1c]
0x40a5da:  jne      0x40a5f8                        
0x40a5dc:  lea      edi, [ebx + eax*4]              
0x40a5df:  push     dword ptr [esi + 0x20]          
0x40a5e2:  push     dword ptr [edi - 0x20]          
0x40a5e5:  push     dword ptr [esi + 0x3c]          
0x40a5e8:  call     0x5cd6d0                        
0x40a5ed:  add      esp, 0xc                        
0x40a5f0:  test     eax, eax                        
0x40a5f2:  je       0x40a691                        
0x40a5f8:  mov      ecx, dword ptr [esi + 0xe4]     
0x40a5fe:  mov      edx, dword ptr [esi + 0xe0]     
0x40a604:  mov      edi, dword ptr [esi + 0x20]     
0x40a607:  movdqa   xmm3, xmmword ptr [esi + 0x500] 
0x40a60f:  pcmpeqd  xmm2, xmm2                      
0x40a613:  lea      eax, [ecx - 1]                  
0x40a616:  and      ax, cx                          
0x40a619:  mov      ecx, ebx                        
0x40a61b:  mov      ebx, dword ptr [esi + 0xdc]     
0x40a621:  jne      0x40a5c1                        
0x40a623:  pcmpeqb  xmm3, xmm2                      
0x40a627:  mov      ecx, edi                        
0x40a629:  xor      edi, edi                        
0x40a62b:  pmovmskb eax, xmm3                       
0x40a62f:  test     eax, eax                        
0x40a631:  jne      0x40a691                        
0x40a633:  mov      eax, dword ptr [esi + 0x18]     
0x40a636:  movdqa   xmm1, xmmword ptr [esi + 0xf0]  
0x40a63e:  mov      edi, ecx                        
0x40a640:  pcmpeqd  xmm2, xmm2                      
0x40a644:  lea      ebx, [ebx + eax + 0x10]         
0x40a648:  add      eax, 0x10                       
0x40a64b:  mov      dword ptr [esi + 0x18], eax     
0x40a64e:  and      ebx, edx                        
0x40a650:  jmp      0x40a592                        
0x40a655:  mov      dword ptr [esi + 0x270], 0x5e40b9
0x40a65f:  mov      dword ptr [esi + 0x274], 0x27   
0x40a669:  mov      dword ptr [esi + 0x278], edx    
0x40a66f:  lea      ecx, [esi + 0x270]              
0x40a675:  lea      edx, [esi + 0x120]              
0x40a67b:  mov      dword ptr [esi + 0x120], 0xffffffff
0x40a685:  call     0x5d7b20                        
0x40a68a:  mov      edi, eax                        
0x40a68c:  jmp      0x40a77b                        
0x40a691:  lea      eax, [edi - 0x18]               
0x40a694:  test     edi, edi                        
0x40a696:  mov      dword ptr [esi + 0x678], 0xc    
0x40a6a0:  cmove    eax, edi                        
0x40a6a3:  jmp      0x40a6a7                        
0x40a6a5:  xor      eax, eax                        
0x40a6a7:  lea      ecx, [esi + 0xe8]               
0x40a6ad:  push     ecx                             
0x40a6ae:  push     eax                             
0x40a6af:  call     0x415b90                        
0x40a6b4:  add      esp, 8                          
0x40a6b7:  mov      dword ptr [esi + 0xc], edx      
0x40a6ba:  test     al, 1                           
0x40a6bc:  jne      0x40a728                        
0x40a6be:  mov      ecx, dword ptr [esi + 0xc]      
0x40a6c1:  mov      eax, dword ptr [ecx + 8]        
0x40a6c4:  test     eax, eax                        
0x40a6c6:  mov      dword ptr [esi + 0x3c], eax     
0x40a6c9:  je       0x40acef                        
0x40a6cf:  mov      eax, dword ptr [ecx + 0x10]     
0x40a6d2:  mov      ecx, dword ptr [ecx + 0x14]     
0x40a6d5:  lea      edx, [esi + 0x90]               
0x40a6db:  mov      dword ptr [esi + 0x40], 0       
0x40a6e2:  mov      dword ptr [esi + 0x48], 0       
0x40a6e9:  mov      dword ptr [esi + 0x50], edx     
0x40a6ec:  push     ecx                             
0x40a6ed:  push     eax                             
0x40a6ee:  lea      eax, [esi + 0x40]               
0x40a6f1:  push     eax                             
0x40a6f2:  lea      eax, [esi + 0x120]              
0x40a6f8:  push     eax                             
0x40a6f9:  call     0x461870                        
0x40a6fe:  add      esp, 0x10                       
0x40a701:  mov      eax, dword ptr [esi + 0x120]    
0x40a707:  cmp      eax, 2                          
0x40a70a:  jne      0x40a7f3                        
0x40a710:  mov      ecx, dword ptr [esi + 0x124]    
0x40a716:  mov      edx, 0x5e414d                    ; 'the release contains an invalid installer URLlatest.jsoncould not download the installerthe release installer URL is not trustedthe download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
0x40a71b:  push     0x2d                            
0x40a71d:  call     0x5d8740                        
0x40a722:  add      esp, 4                          
0x40a725:  mov      dword ptr [esi + 0xc], eax      
0x40a728:  mov      ebx, dword ptr [esi + 0x28]     
0x40a72b:  lea      edi, [esi + 0x3c0]              
0x40a731:  test     ebx, ebx                        
0x40a733:  je       0x40a750                        
0x40a735:  push     1                               
0x40a737:  push     ebx                             
0x40a738:  push     dword ptr [esi + 0x3e4]         
0x40a73e:  call     0x417800                        
0x40a743:  add      esp, 0xc                        
0x40a746:  mov      dword ptr [esi + 0x678], 0xb    
0x40a750:  mov      dword ptr [esi + 0x678], 0xb    
0x40a75a:  push     edi                             
0x40a75b:  call     0x417680                        
0x40a760:  add      esp, 4                          
0x40a763:  mov      edi, dword ptr [esi + 0xc]      
0x40a766:  mov      eax, dword ptr [esi + 0x2c]     
0x40a769:  test     eax, eax                        
0x40a76b:  je       0x40a77b                        
0x40a76d:  push     1                               
0x40a76f:  push     eax                             
0x40a770:  push     dword ptr [esi + 0x30]          
0x40a773:  call     0x417800                        
0x40a778:  add      esp, 0xc                        
0x40a77b:  mov      eax, dword ptr [esi + 0x78]     
0x40a77e:  lock dec dword ptr [eax]                 
0x40a781:  jne      0x40a79f                        
0x40a783:  lea      eax, [esi + 0x78]               
0x40a786:  mov      dword ptr [esi + 0x678], 7      
0x40a790:  push     eax                             
0x40a791:  mov      dword ptr [esi + 0xc], edi      
0x40a794:  call     0x44e510                        
0x40a799:  mov      edi, dword ptr [esi + 0xc]      
0x40a79c:  add      esp, 4                          
0x40a79f:  mov      eax, dword ptr [esi + 0x80]     
0x40a7a5:  test     eax, eax                        
0x40a7a7:  je       0x40a7ba                        
0x40a7a9:  push     1                               
0x40a7ab:  push     eax                             
0x40a7ac:  push     dword ptr [esi + 0x84]          
0x40a7b2:  call     0x417800                        
0x40a7b7:  add      esp, 0xc                        
0x40a7ba:  mov      eax, dword ptr [esi + 0x24]     
0x40a7bd:  test     eax, eax                        
0x40a7bf:  je       0x40a7cf                        
0x40a7c1:  push     1                               
0x40a7c3:  push     eax                             
0x40a7c4:  push     dword ptr [esi + 0x38]          
0x40a7c7:  call     0x417800                        
0x40a7cc:  add      esp, 0xc                        
0x40a7cf:  mov      eax, dword ptr [esi + 0xa0]     
0x40a7d5:  test     eax, eax                        
0x40a7d7:  je       0x409e2e                        
0x40a7dd:  push     1                               
0x40a7df:  push     eax                             
0x40a7e0:  push     dword ptr [esi + 0xa4]          
0x40a7e6:  call     0x417800                        
0x40a7eb:  add      esp, 0xc                        
0x40a7ee:  jmp      0x409e2e                        
0x40a7f3:  movsd    xmm1, qword ptr [esi + 0x130]   
0x40a7fb:  movsd    xmm2, qword ptr [esi + 0x138]   
0x40a803:  movq     xmm0, qword ptr [esi + 0x128]   
0x40a80b:  mov      ecx, dword ptr [esi + 0x124]    
0x40a811:  mov      dword ptr [esi + 0x678], 0xd    
0x40a81b:  movsd    qword ptr [esi + 0x280], xmm1   
0x40a823:  movsd    xmm1, qword ptr [esi + 0x140]   
0x40a82b:  movsd    qword ptr [esi + 0x288], xmm2   
0x40a833:  movsd    xmm2, qword ptr [esi + 0x148]   
0x40a83b:  movq     qword ptr [esi + 0x278], xmm0   
0x40a843:  movsd    qword ptr [esi + 0x290], xmm1   
0x40a84b:  movsd    xmm1, qword ptr [esi + 0x150]   
0x40a853:  movsd    qword ptr [esi + 0x298], xmm2   
0x40a85b:  movq     xmm2, qword ptr [esi + 0x158]   
0x40a863:  movsd    qword ptr [esi + 0x2a0], xmm1   
0x40a86b:  movq     xmm1, qword ptr [esi + 0x160]   
0x40a873:  movq     qword ptr [esi + 0x2a8], xmm2   
0x40a87b:  movq     qword ptr [esi + 0x2b0], xmm1   
0x40a883:  mov      dword ptr [esi + 0x270], eax    
0x40a889:  mov      dword ptr [esi + 0x274], ecx    
0x40a88f:  mov      eax, dword ptr [esi + 0x290]    
0x40a895:  mov      edx, dword ptr [esi + 0x288]    
0x40a89b:  mov      ecx, dword ptr [esi + 0x284]    
0x40a8a1:  push     eax                             
0x40a8a2:  call     0x4062c0                        
0x40a8a7:  add      esp, 4                          
0x40a8aa:  cmp      edx, 5                          
0x40a8ad:  lea      edx, [esi + 0x270]              
0x40a8b3:  jne      0x40aa4d                        
0x40a8b9:  mov      ecx, 0x70747468                 
0x40a8be:  xor      ecx, dword ptr [eax]            
0x40a8c0:  movzx    eax, byte ptr [eax + 4]         
0x40a8c4:  xor      eax, 0x73                       
0x40a8c7:  or       eax, ecx                        
0x40a8c9:  jne      0x40aa4d                        
0x40a8cf:  push     edx                             
0x40a8d0:  lea      eax, [esi + 0x40]               
0x40a8d3:  push     eax                             
0x40a8d4:  call     0x462dd0                        
0x40a8d9:  add      esp, 8                          
0x40a8dc:  lea      eax, [esi + 0x90]               
0x40a8e2:  mov      dword ptr [esi + 0x678], 0x10   
0x40a8ec:  push     eax                             
0x40a8ed:  lea      eax, [esi + 0x120]              
0x40a8f3:  push     eax                             
0x40a8f4:  call     0x462dd0                        
0x40a8f9:  add      esp, 8                          
0x40a8fc:  lea      edi, [esi + 0x120]              
0x40a902:  lea      ecx, [esi + 0x40]               
0x40a905:  mov      edx, edi                        
0x40a907:  call     0x40b560                        
0x40a90c:  mov      ecx, edi                        
0x40a90e:  mov      ebx, eax                        
0x40a910:  call     0x406a60                        
0x40a915:  lea      ecx, [esi + 0x40]               
0x40a918:  call     0x406a60                        
0x40a91d:  test     bl, bl                          
0x40a91f:  lea      eax, [esi + 0x270]              
0x40a925:  je       0x40aa4d                        
0x40a92b:  mov      dword ptr [esi + 0x678], 0xd    
0x40a935:  push     eax                             
0x40a936:  call     0x462960                        
0x40a93b:  add      esp, 4                          
0x40a93e:  mov      dword ptr [esi + 0x18], eax     
0x40a941:  mov      dword ptr [esi + 0x20], edx     
0x40a944:  lea      eax, [esi + 0x90]               
0x40a94a:  push     eax                             
0x40a94b:  call     0x462960                        
0x40a950:  add      esp, 4                          
0x40a953:  push     0xb                             
0x40a955:  push     0x5e417a                         ; 'latest.jsoncould not download the installerthe release installer URL is not trustedthe download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
0x40a95a:  push     edx                             
0x40a95b:  push     eax                             
0x40a95c:  call     0x4138b0                        
0x40a961:  add      esp, 0x10                       
0x40a964:  cmp      dword ptr [esi + 0x20], edx     
0x40a967:  lea      edi, [esi + 0x270]              
0x40a96d:  jb       0x40aa4d                        
0x40a973:  push     edx                             
0x40a974:  push     dword ptr [esi + 0x18]          
0x40a977:  push     eax                             
0x40a978:  call     0x5cd6d0                        
0x40a97d:  add      esp, 0xc                        
0x40a980:  test     eax, eax                        
0x40a982:  jne      0x40aa4d                        
0x40a988:  push     edi                             
0x40a989:  call     0x462960                        
0x40a98e:  add      esp, 4                          
0x40a991:  cmp      edx, 0x14                       
0x40a994:  lea      ecx, [esi + 0x270]              
0x40a99a:  jb       0x40a9c8                        
0x40a99c:  movdqu   xmm0, xmmword ptr [eax]         
0x40a9a0:  movd     xmm1, dword ptr [eax + 0x10]    
0x40a9a5:  pcmpeqb  xmm1, xmmword ptr [0x5e31d0]    
0x40a9ad:  pcmpeqb  xmm0, xmmword ptr [0x5e31e0]    
0x40a9b5:  pand     xmm0, xmm1                      
0x40a9b9:  pmovmskb eax, xmm0                       
0x40a9bd:  cmp      eax, 0xffff                     
0x40a9c2:  je       0x40aa4d                        
0x40a9c8:  push     ecx                             
0x40a9c9:  call     0x462a00                        
0x40a9ce:  add      esp, 4                          
0x40a9d1:  test     eax, eax                        
0x40a9d3:  lea      eax, [esi + 0x270]              
0x40a9d9:  jne      0x40aa4d                        
0x40a9db:  push     eax                             
0x40a9dc:  call     0x462a90                        
0x40a9e1:  add      esp, 4                          
0x40a9e4:  test     eax, eax                        
0x40a9e6:  lea      eax, [esi + 0x270]              
0x40a9ec:  jne      0x40aa4d                        
0x40a9ee:  lea      ecx, [esi + 0x114]              
0x40a9f4:  lea      edx, [esi + 0x68]               
0x40a9f7:  push     0x20000000                      
0x40a9fc:  push     eax                             
0x40a9fd:  call     0x40b040                        
0x40aa02:  add      esp, 8                          
0x40aa05:  mov      eax, dword ptr [esi + 0x114]    
0x40aa0b:  mov      edx, dword ptr [esi + 0x118]    
0x40aa11:  cmp      eax, -1                         
0x40aa14:  mov      dword ptr [esi + 0x20], eax     
0x40aa17:  je       0x40aa6e                        
0x40aa19:  mov      eax, dword ptr [esi + 0x11c]    
0x40aa1f:  mov      dword ptr [esi + 0x678], 0xe    
0x40aa29:  lea      ecx, [esi + 0x270]              
0x40aa2f:  mov      dword ptr [esi + 0x18], edx     
0x40aa32:  mov      dword ptr [esi + 0xf0], eax     
0x40aa38:  push     eax                             
0x40aa39:  call     0x408410                        
0x40aa3e:  add      esp, 4                          
0x40aa41:  test     eax, eax                        
0x40aa43:  je       0x40aa9c                        
0x40aa45:  mov      dword ptr [esi + 0xc], eax      
0x40aa48:  jmp      0x40aae5                        
0x40aa4d:  mov      dword ptr [esi + 0x678], 0xd    
0x40aa57:  push     0x28                            
0x40aa59:  push     0x5e41a5                         ; 'the release installer URL is not trustedthe download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
0x40aa5e:  call     0x5d77c0                        
0x40aa63:  add      esp, 8                          
0x40aa66:  mov      dword ptr [esi + 0xc], eax      
0x40aa69:  jmp      0x40aafa                        
0x40aa6e:  mov      dword ptr [esi + 0x40], 0x5e4185 ; 'could not download the installerthe release installer URL is not trustedthe download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
0x40aa75:  mov      dword ptr [esi + 0x44], 0x20    
0x40aa7c:  mov      dword ptr [esi + 0x48], edx     
0x40aa7f:  lea      ecx, [esi + 0x40]               
0x40aa82:  lea      edx, [esi + 0x120]              
0x40aa88:  mov      dword ptr [esi + 0x120], 0xffffffff
0x40aa92:  call     0x5d7b20                        
0x40aa97:  mov      dword ptr [esi + 0xc], eax      
0x40aa9a:  jmp      0x40aafa                        
0x40aa9c:  mov      ecx, dword ptr [esi + 0x18]     
0x40aa9f:  mov      edx, dword ptr [esi + 0xf0]     
0x40aaa5:  push     dword ptr [esi + 0x24]          
0x40aaa8:  push     dword ptr [esi + 0x38]          
0x40aaab:  push     dword ptr [esi + 0x3c]          
0x40aaae:  mov      eax, dword ptr [esi + 0xc]      
0x40aab1:  push     dword ptr [eax + 4]             
0x40aab4:  call     0x409190                        
0x40aab9:  add      esp, 0x10                       
0x40aabc:  mov      dword ptr [esi + 0xc], eax      
0x40aabf:  cmp      dword ptr [esi + 0xc], 0        
0x40aac3:  jne      0x40aae5                        
0x40aac5:  mov      ecx, dword ptr [esi + 0x18]     
0x40aac8:  mov      edx, dword ptr [esi + 0xf0]     
0x40aace:  push     dword ptr [esi + 0x34]          
0x40aad1:  push     dword ptr [esi + 0x14]          
0x40aad4:  call     0x409740                        
0x40aad9:  add      esp, 8                          
0x40aadc:  mov      dword ptr [esi + 0xc], eax      
0x40aadf:  cmp      dword ptr [esi + 0xc], 0        
0x40aae3:  je       0x40ab27                        
0x40aae5:  mov      eax, dword ptr [esi + 0x20]     
0x40aae8:  test     eax, eax                        
0x40aaea:  je       0x40aafa                        
0x40aaec:  push     1                               
0x40aaee:  push     eax                             
0x40aaef:  push     dword ptr [esi + 0x18]          
0x40aaf2:  call     0x417800                        
0x40aaf7:  add      esp, 0xc                        
0x40aafa:  mov      eax, dword ptr [esi + 0x280]    
0x40ab00:  mov      ebx, dword ptr [esi + 0x28]     
0x40ab03:  lea      edi, [esi + 0x3c0]              
0x40ab09:  test     eax, eax                        
0x40ab0b:  je       0x40a731                        
0x40ab11:  push     1                               
0x40ab13:  push     eax                             
0x40ab14:  push     dword ptr [esi + 0x284]         
0x40ab1a:  call     0x417800                        
0x40ab1f:  add      esp, 0xc                        
0x40ab22:  jmp      0x40a731                        
0x40ab27:  mov      edx, dword ptr [esi + 0x14]     
0x40ab2a:  lea      ecx, [esi + 0x120]              
0x40ab30:  push     dword ptr [esi + 0xf0]          
0x40ab36:  push     dword ptr [esi + 0x18]          
0x40ab39:  push     dword ptr [esi + 0x34]          
0x40ab3c:  call     0x408cc0                        
0x40ab41:  add      esp, 0xc                        
0x40ab44:  mov      eax, dword ptr [esi + 0x120]    
0x40ab4a:  mov      ecx, dword ptr [esi + 0x124]    
0x40ab50:  cmp      eax, -1                         
0x40ab53:  mov      dword ptr [esi + 0xc], ecx      
0x40ab56:  je       0x40aae5                        
0x40ab58:  mov      edx, dword ptr [esi + 0x128]    
0x40ab5e:  mov      ecx, dword ptr [esi + 0xc]      
0x40ab61:  mov      edi, dword ptr [esi + 0x12c]    
0x40ab67:  mov      dword ptr [esi + 0x40], eax     
0x40ab6a:  mov      dword ptr [esi + 0x678], 0xf    
0x40ab74:  mov      dword ptr [esi + 0x44], ecx     
0x40ab77:  mov      dword ptr [esi + 0x4c], edi     
0x40ab7a:  mov      dword ptr [esi + 0x48], edx     
0x40ab7d:  mov      dword ptr [esi + 0x34], edx     
0x40ab80:  call     0x408250                        
0x40ab85:  mov      dword ptr [esi + 0x14], eax     
0x40ab88:  cmp      dword ptr [esi + 0x14], 0       
0x40ab8c:  je       0x40abab                        
0x40ab8e:  lea      ecx, [esi + 0x40]               
0x40ab91:  mov      dword ptr [esi + 0x678], 0xe    
0x40ab9b:  call     0x406aa0                        
0x40aba0:  mov      eax, dword ptr [esi + 0x14]     
0x40aba3:  mov      dword ptr [esi + 0xc], eax      
0x40aba6:  jmp      0x40aae5                        
0x40abab:  mov      ecx, dword ptr [esi + 0xc]      
0x40abae:  mov      edx, dword ptr [esi + 0x34]     
0x40abb1:  call     0x407b90                        
0x40abb6:  mov      dword ptr [esi + 0xc], eax      
0x40abb9:  lea      ecx, [esi + 0x40]               
0x40abbc:  mov      dword ptr [esi + 0x678], 0xe    
0x40abc6:  call     0x406aa0                        
0x40abcb:  cmp      dword ptr [esi + 0x20], 0       
0x40abcf:  je       0x40abe1                        
0x40abd1:  push     1                               
0x40abd3:  push     dword ptr [esi + 0x20]          
0x40abd6:  push     dword ptr [esi + 0x18]          
0x40abd9:  call     0x417800                        
0x40abde:  add      esp, 0xc                        
0x40abe1:  mov      eax, dword ptr [esi + 0x280]    
0x40abe7:  test     eax, eax                        
0x40abe9:  je       0x40abfc                        
0x40abeb:  push     1                               
0x40abed:  push     eax                             
0x40abee:  push     dword ptr [esi + 0x284]         
0x40abf4:  call     0x417800                        
0x40abf9:  add      esp, 0xc                        
0x40abfc:  lea      ecx, [esi + 0x3c0]              
0x40ac02:  mov      dword ptr [esi + 0x678], 0xb    
0x40ac0c:  call     0x401680                        
0x40ac11:  cmp      dword ptr [esi + 0x2c], 0       
0x40ac15:  je       0x40ac27                        
0x40ac17:  push     1                               
0x40ac19:  push     dword ptr [esi + 0x2c]          
0x40ac1c:  push     dword ptr [esi + 0x30]          
0x40ac1f:  call     0x417800                        
0x40ac24:  add      esp, 0xc                        
0x40ac27:  mov      eax, dword ptr [esi + 0x78]     
0x40ac2a:  lock dec dword ptr [eax]                 
0x40ac2d:  jne      0x40ac45                        
0x40ac2f:  lea      eax, [esi + 0x78]               
0x40ac32:  mov      dword ptr [esi + 0x678], 7      
0x40ac3c:  push     eax                             
0x40ac3d:  call     0x44e510                        
0x40ac42:  add      esp, 4                          
0x40ac45:  mov      eax, dword ptr [esi + 0x80]     
0x40ac4b:  test     eax, eax                        
0x40ac4d:  je       0x40ac60                        
0x40ac4f:  push     1                               
0x40ac51:  push     eax                             
0x40ac52:  push     dword ptr [esi + 0x84]          
0x40ac58:  call     0x417800                        
0x40ac5d:  add      esp, 0xc                        
0x40ac60:  cmp      dword ptr [esi + 0x24], 0       
0x40ac64:  je       0x40ac76                        
0x40ac66:  push     1                               
0x40ac68:  push     dword ptr [esi + 0x24]          
0x40ac6b:  push     dword ptr [esi + 0x38]          