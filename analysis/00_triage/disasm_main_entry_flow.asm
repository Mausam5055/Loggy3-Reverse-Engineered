0x40a500:  add      byte ptr [eax], al            
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
0x40a716:  mov      edx, 0x5e414d                  ; 'the release contains an invalid installer URLlatest.jsoncould not download the installerthe release installer URL is not trustedthe download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
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
0x40a955:  push     0x5e417a                       ; 'latest.jsoncould not download the installerthe release installer URL is not trustedthe download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
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
0x40aa59:  push     0x5e41a5                       ; 'the release installer URL is not trustedthe download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
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
0x40ac6e:  call     0x417800                      
0x40ac73:  add      esp, 0xc                      
0x40ac76:  mov      eax, dword ptr [esi + 0xa0]   
0x40ac7c:  test     eax, eax                      
0x40ac7e:  je       0x40ac91                      
0x40ac80:  push     1                             
0x40ac82:  push     eax                           
0x40ac83:  push     dword ptr [esi + 0xa4]        
0x40ac89:  call     0x417800                      
0x40ac8e:  add      esp, 0xc                      
0x40ac91:  mov      edi, dword ptr [esi + 0xc]    
0x40ac94:  jmp      0x409e2e                      
0x40ac99:  mov      word ptr [esi + 0x3c0], ax    
0x40aca0:  lea      eax, [esi + 0x3c0]            
0x40aca6:  lea      edx, [esi + 0x270]            
0x40acac:  mov      ecx, 0x5e3d0c                 
0x40acb1:  mov      dword ptr [esi + 0x270], eax  
0x40acb7:  mov      dword ptr [esi + 0x274], 0x490300
0x40acc1:  call     0x5d76c0                      
0x40acc6:  mov      edi, eax                      
0x40acc8:  mov      eax, dword ptr [esi + 0x24]   
0x40accb:  test     eax, eax                      
0x40accd:  jne      0x40a7c1                      
0x40acd3:  jmp      0x40a7cf                      
0x40acd8:  push     0x23                          
0x40acda:  push     0x5e4106                      
0x40acdf:  call     0x5d77c0                      
0x40ace4:  add      esp, 8                        
0x40ace7:  mov      dword ptr [esi + 0xc], eax    
0x40acea:  jmp      0x40a728                      
0x40acef:  push     0x24                          
0x40acf1:  push     0x5e4129                      
0x40acf6:  call     0x5d77c0                      
0x40acfb:  add      esp, 8                        
0x40acfe:  mov      dword ptr [esi + 0xc], eax    
0x40ad01:  jmp      0x40a728                      
0x40ad06:  mov      dword ptr [esi + 0x678], 9    
0x40ad10:  push     0x16                          
0x40ad12:  push     1                             
0x40ad14:  call     0x5db4f2                      
0x40ad19:  add      esp, 8                        
0x40ad1c:  ud2                                    
0x40ad1e:  mov      eax, 1                        
0x40ad23:  jmp      0x409da8                      
0x40ad28:  nop      dword ptr [eax + eax]         
0x40ad30:  push     ebp                           
0x40ad31:  sub      esp, 0x14                     
0x40ad34:  lea      esi, [ebp - 0x67c]            
0x40ad3a:  mov      ebp, dword ptr [esi + 0x668]  
0x40ad40:  mov      ecx, dword ptr [esi + 0xc]    
0x40ad43:  cmp      byte ptr [esi + 0x1d], 0      
0x40ad47:  jne      0x40ad4e                      
0x40ad49:  add      esp, 0x14                     
0x40ad4c:  pop      ebp                           
0x40ad4d:  ret                                    
0x40ad4e:  call     0x412ab0                      
0x40ad53:  add      esp, 0x14                     
0x40ad56:  pop      ebp                           
0x40ad57:  ret                                    
0x40ad58:  nop      dword ptr [eax + eax]         
0x40ad60:  push     ebp                           
0x40ad61:  sub      esp, 0x14                     
0x40ad64:  lea      esi, [ebp - 0x67c]            
0x40ad6a:  mov      ebp, dword ptr [esi + 0x668]  
0x40ad70:  lea      ecx, [esi + 0x68]             
0x40ad73:  call     0x4017a0                      
0x40ad78:  add      esp, 0x14                     
0x40ad7b:  pop      ebp                           
0x40ad7c:  ret                                    
0x40ad7d:  nop      dword ptr [eax]               
0x40ad80:  push     ebp                           
0x40ad81:  sub      esp, 0x14                     
0x40ad84:  lea      esi, [ebp - 0x67c]            
0x40ad8a:  mov      ebp, dword ptr [esi + 0x668]  
0x40ad90:  mov      ecx, dword ptr [esi + 0xc]    
0x40ad93:  cmp      byte ptr [esi + 0x1e], 0      
0x40ad97:  je       0x40ad9e                      
0x40ad99:  call     0x412ab0                      
0x40ad9e:  add      esp, 0x14                     
0x40ada1:  pop      ebp                           
0x40ada2:  ret                                    
0x40ada3:  nop      word ptr cs:[eax + eax]       
0x40adad:  nop      dword ptr [eax]               
0x40adb0:  push     ebp                           
0x40adb1:  sub      esp, 0x14                     
0x40adb4:  lea      esi, [ebp - 0x67c]            
0x40adba:  mov      ebp, dword ptr [esi + 0x668]  
0x40adc0:  lea      ecx, [esi + 0x40]             
0x40adc3:  call     0x4017a0                      
0x40adc8:  add      esp, 0x14                     
0x40adcb:  pop      ebp                           
0x40adcc:  ret                                    
0x40adcd:  nop      dword ptr [eax]               
0x40add0:  push     ebp                           
0x40add1:  sub      esp, 0x14                     
0x40add4:  lea      esi, [ebp - 0x67c]            
0x40adda:  mov      ebp, dword ptr [esi + 0x668]  
0x40ade0:  mov      eax, dword ptr [esi + 0x30]   
0x40ade3:  test     eax, eax                      
0x40ade5:  je       0x40adf5                      
0x40ade7:  push     1                             
0x40ade9:  push     eax                           
0x40adea:  push     dword ptr [esi + 0x14]        
0x40aded:  call     0x417800                      
0x40adf2:  add      esp, 0xc                      
0x40adf5:  mov      byte ptr [esi + 0x13], 0      
0x40adf9:  add      esp, 0x14                     
0x40adfc:  pop      ebp                           
0x40adfd:  ret                                    
0x40adfe:  nop                                    
0x40ae00:  push     ebp                           
0x40ae01:  sub      esp, 0x14                     
0x40ae04:  lea      esi, [ebp - 0x67c]            
0x40ae0a:  mov      ebp, dword ptr [esi + 0x668]  
0x40ae10:  cmp      byte ptr [esi + 0x13], 0      
0x40ae14:  je       0x40ae36                      
0x40ae16:  mov      eax, dword ptr [esi + 0x280]  
0x40ae1c:  test     eax, eax                      
0x40ae1e:  je       0x40ae31                      
0x40ae20:  push     1                             
0x40ae22:  push     eax                           
0x40ae23:  push     dword ptr [esi + 0x284]       
0x40ae29:  call     0x417800                      
0x40ae2e:  add      esp, 0xc                      
0x40ae31:  add      esp, 0x14                     
0x40ae34:  pop      ebp                           
0x40ae35:  ret                                    
0x40ae36:  add      esp, 0x14                     
0x40ae39:  pop      ebp                           
0x40ae3a:  ret                                    
0x40ae3b:  nop      dword ptr [eax + eax]         
0x40ae40:  push     ebp                           
0x40ae41:  sub      esp, 0x14                     
0x40ae44:  lea      esi, [ebp - 0x67c]            
0x40ae4a:  mov      ebp, dword ptr [esi + 0x668]  
0x40ae50:  cmp      dword ptr [esi + 0x24], 0     
0x40ae54:  je       0x40ae66                      
0x40ae56:  push     1                             
0x40ae58:  push     dword ptr [esi + 0x24]        
0x40ae5b:  push     dword ptr [esi + 0x38]        
0x40ae5e:  call     0x417800                      
0x40ae63:  add      esp, 0xc                      
0x40ae66:  mov      eax, dword ptr [esi + 0xa0]   
0x40ae6c:  test     eax, eax                      
0x40ae6e:  je       0x40ae81                      
0x40ae70:  push     1                             
0x40ae72:  push     eax                           
0x40ae73:  push     dword ptr [esi + 0xa4]        
0x40ae79:  call     0x417800                      
0x40ae7e:  add      esp, 0xc                      
0x40ae81:  add      esp, 0x14                     
0x40ae84:  pop      ebp                           
0x40ae85:  ret                                    
0x40ae86:  nop      word ptr cs:[eax + eax]       
0x40ae90:  push     ebp                           
0x40ae91:  sub      esp, 0x14                     
0x40ae94:  lea      esi, [ebp - 0x67c]            
0x40ae9a:  mov      ebp, dword ptr [esi + 0x668]  
0x40aea0:  mov      eax, dword ptr [esi + 0x80]   
0x40aea6:  test     eax, eax                      
0x40aea8:  je       0x40aebb                      
0x40aeaa:  push     1                             
0x40aeac:  push     eax                           
0x40aead:  push     dword ptr [esi + 0x84]        
0x40aeb3:  call     0x417800                      
0x40aeb8:  add      esp, 0xc                      
0x40aebb:  add      esp, 0x14                     
0x40aebe:  pop      ebp                           
0x40aebf:  ret                                    
0x40aec0:  push     ebp                           
0x40aec1:  sub      esp, 0x14                     
0x40aec4:  lea      esi, [ebp - 0x67c]            
0x40aeca:  mov      ebp, dword ptr [esi + 0x668]  
0x40aed0:  cmp      byte ptr [esi + 0x1f], 0      
0x40aed4:  je       0x40aede                      
0x40aed6:  mov      ecx, dword ptr [esi + 0xc]    
0x40aed9:  call     0x4167e0                      
0x40aede:  add      esp, 0x14                     
0x40aee1:  pop      ebp                           
0x40aee2:  ret                                    
0x40aee3:  nop      word ptr cs:[eax + eax]       
0x40aeed:  nop      dword ptr [eax]               
0x40aef0:  push     ebp                           
0x40aef1:  sub      esp, 0x14                     
0x40aef4:  lea      esi, [ebp - 0x67c]            
0x40aefa:  mov      ebp, dword ptr [esi + 0x668]  
0x40af00:  mov      eax, dword ptr [esi + 0x78]   
0x40af03:  lock dec dword ptr [eax]               
0x40af06:  jne      0x40af14                      
0x40af08:  lea      eax, [esi + 0x78]             
0x40af0b:  push     eax                           
0x40af0c:  call     0x44e510                      
0x40af11:  add      esp, 4                        
0x40af14:  add      esp, 0x14                     
0x40af17:  pop      ebp                           
0x40af18:  ret                                    
0x40af19:  nop      dword ptr [eax]               
0x40af20:  push     ebp                           
0x40af21:  sub      esp, 0x14                     
0x40af24:  lea      esi, [ebp - 0x67c]            
0x40af2a:  mov      ebp, dword ptr [esi + 0x668]  
0x40af30:  cmp      dword ptr [esi + 0x2c], 0     
0x40af34:  je       0x40af46                      
0x40af36:  push     1                             
0x40af38:  push     dword ptr [esi + 0x2c]        
0x40af3b:  push     dword ptr [esi + 0x30]        
0x40af3e:  call     0x417800                      
0x40af43:  add      esp, 0xc                      
0x40af46:  add      esp, 0x14                     
0x40af49:  pop      ebp                           
0x40af4a:  ret                                    
0x40af4b:  nop      dword ptr [eax + eax]         
0x40af50:  push     ebp                           
0x40af51:  sub      esp, 0x14                     
0x40af54:  lea      esi, [ebp - 0x67c]            
0x40af5a:  mov      ebp, dword ptr [esi + 0x668]  
0x40af60:  mov      eax, dword ptr [esi + 0x280]  
0x40af66:  test     eax, eax                      
0x40af68:  je       0x40af7b                      
0x40af6a:  push     1                             
0x40af6c:  push     eax                           
0x40af6d:  push     dword ptr [esi + 0x284]       
0x40af73:  call     0x417800                      
0x40af78:  add      esp, 0xc                      
0x40af7b:  add      esp, 0x14                     
0x40af7e:  pop      ebp                           
0x40af7f:  ret                                    
0x40af80:  push     ebp                           
0x40af81:  sub      esp, 0x14                     
0x40af84:  lea      esi, [ebp - 0x67c]            
0x40af8a:  mov      ebp, dword ptr [esi + 0x668]  
0x40af90:  cmp      dword ptr [esi + 0x20], 0     
0x40af94:  je       0x40afa6                      
0x40af96:  push     1                             
0x40af98:  push     dword ptr [esi + 0x20]        
0x40af9b:  push     dword ptr [esi + 0x18]        
0x40af9e:  call     0x417800                      
0x40afa3:  add      esp, 0xc                      
0x40afa6:  add      esp, 0x14                     
0x40afa9:  pop      ebp                           
0x40afaa:  ret                                    
0x40afab:  nop      dword ptr [eax + eax]         
0x40afb0:  push     ebp                           
0x40afb1:  sub      esp, 0x14                     
0x40afb4:  lea      esi, [ebp - 0x67c]            
0x40afba:  mov      ebp, dword ptr [esi + 0x668]  
0x40afc0:  cmp      dword ptr [esi + 0xc], 0      
0x40afc4:  jne      0x40afd6                      
0x40afc6:  lea      ecx, [esi + 0x120]            
0x40afcc:  call     0x406ee0                      
0x40afd1:  add      esp, 0x14                     
0x40afd4:  pop      ebp                           
0x40afd5:  ret                                    
0x40afd6:  add      esp, 0x14                     
0x40afd9:  pop      ebp                           
0x40afda:  ret                                    
0x40afdb:  nop      dword ptr [eax + eax]         
0x40afe0:  push     ebp                           
0x40afe1:  sub      esp, 0x14                     
0x40afe4:  lea      esi, [ebp - 0x67c]            
0x40afea:  mov      ebp, dword ptr [esi + 0x668]  
0x40aff0:  lea      ecx, [esi + 0x3c0]            
0x40aff6:  call     0x401680                      
0x40affb:  add      esp, 0x14                     
0x40affe:  pop      ebp                           
0x40afff:  ret                                    
0x40b000:  push     ebp                           
0x40b001:  sub      esp, 0x14                     
0x40b004:  lea      esi, [ebp - 0x67c]            
0x40b00a:  mov      ebp, dword ptr [esi + 0x668]  
0x40b010:  lea      ecx, [esi + 0x40]             
0x40b013:  call     0x406a60                      
0x40b018:  add      esp, 0x14                     
0x40b01b:  pop      ebp                           
0x40b01c:  ret                                    
0x40b01d:  nop      dword ptr [eax]               
0x40b020:  push     ebp                           
0x40b021:  sub      esp, 0x14                     
0x40b024:  lea      esi, [ebp - 0x67c]            
0x40b02a:  mov      ebp, dword ptr [esi + 0x668]  
0x40b030:  lea      ecx, [esi + 0x40]             
0x40b033:  call     0x406aa0                      
0x40b038:  add      esp, 0x14                     
0x40b03b:  pop      ebp                           
0x40b03c:  ret                                    
0x40b03d:  int3                                   
0x40b03e:  int3                                   
0x40b03f:  int3                                   
0x40b040:  push     ebp                           
0x40b041:  mov      ebp, esp                      
0x40b043:  push     ebx                           
0x40b044:  push     edi                           
0x40b045:  push     esi                           
0x40b046:  and      esp, 0xfffffff0               
0x40b049:  mov      eax, 0x102c0                  
0x40b04e:  call     0x5cccf0                      
0x40b053:  mov      esi, esp                      
0x40b055:  mov      dword ptr [esi + 0x102a8], ebp
0x40b05b:  mov      dword ptr [esi + 8], ecx      
0x40b05e:  mov      dword ptr [esi], edx          
0x40b060:  lea      ecx, [esi + 0xb8]             
0x40b066:  mov      ebx, dword ptr [ebp + 8]      
0x40b069:  mov      dword ptr [esi + 0x102ac], esp
0x40b06f:  mov      dword ptr [esi + 0x102b8], 0xffffffff
0x40b079:  mov      dword ptr [esi + 0x102b4], 0x40b7c0
0x40b083:  mov      eax, dword ptr fs:[0]         
0x40b089:  mov      dword ptr [esi + 0x102b0], eax
0x40b08f:  lea      eax, [esi + 0x102b0]          
0x40b095:  mov      dword ptr fs:[0], eax         
0x40b09b:  lea      eax, [ebx + 0x10]             
0x40b09e:  push     eax                           
0x40b09f:  push     ecx                           
0x40b0a0:  call     0x486530                      
0x40b0a5:  add      esp, 8                        
0x40b0a8:  movsd    xmm1, qword ptr [ebx + 0x3c]  
0x40b0ad:  movzx    eax, byte ptr [ebx + 0x44]    
0x40b0b1:  movsd    xmm0, qword ptr [ebx + 0x34]  
0x40b0b6:  mov      ecx, dword ptr [ebx + 0x1c]   
0x40b0b9:  movups   xmm2, xmmword ptr [ebx]       
0x40b0bc:  lea      edi, [esi + 0x2a8]            
0x40b0c2:  mov      dword ptr [esi + 0x20], 0x1010101
0x40b0c9:  movsd    qword ptr [esi + 0xe4], xmm1  
0x40b0d1:  movups   xmm1, xmmword ptr [ebx + 0x20]
0x40b0d5:  mov      byte ptr [esi + 0xec], al     
0x40b0db:  movsd    qword ptr [esi + 0xdc], xmm0  
0x40b0e3:  mov      eax, dword ptr [ebx + 0x30]   
0x40b0e6:  lea      ebx, [esi + 0xa8]             
0x40b0ec:  movups   xmmword ptr [esi + 0xc8], xmm1
0x40b0f3:  movaps   xmm1, xmmword ptr [0x5e31f0]  
0x40b0fa:  mov      dword ptr [esi + 0xc4], ecx   
0x40b100:  mov      dword ptr [esi + 0xd8], eax   
0x40b106:  movups   xmmword ptr [esi + 0xa8], xmm2
0x40b10d:  lea      eax, [esi + 0x10]             
0x40b110:  movaps   xmmword ptr [esi + 0x10], xmm1
0x40b114:  push     ebx                           
0x40b115:  push     eax                           
0x40b116:  push     dword ptr [esi]               
0x40b118:  push     edi                           
0x40b119:  call     0x416100                      
0x40b11e:  add      esp, 0x10                     
0x40b121:  push     edi                           
0x40b122:  push     ebx                           
0x40b123:  call     0x433430                      
0x40b128:  add      esp, 8                        
0x40b12b:  lea      ecx, [ebp + 8]                
0x40b12e:  lea      eax, [esi + 0x128]            
0x40b134:  push     ecx                           
0x40b135:  push     ebx                           
0x40b136:  push     eax                           
0x40b137:  call     0x414100                      
0x40b13c:  add      esp, 0xc                      
0x40b13f:  mov      ebx, dword ptr [esi + 0x128]  
0x40b145:  mov      edi, dword ptr [esi + 0x12c]  
0x40b14b:  mov      ecx, dword ptr [esi + 0x130]  
0x40b151:  mov      eax, ebx                      
0x40b153:  and      eax, edi                      
0x40b155:  cmp      eax, -1                       
0x40b158:  je       0x40b2a0                      
0x40b15e:  mov      dword ptr [esi], ecx          
0x40b160:  lea      ecx, [esi + 0x234]            
0x40b166:  lea      eax, [esi + 0x134]            
0x40b16c:  push     0x74                          
0x40b16e:  push     eax                           
0x40b16f:  push     ecx                           
0x40b170:  call     0x5cf3c0                      
0x40b175:  add      esp, 0xc                      
0x40b178:  mov      eax, dword ptr [esi]          
0x40b17a:  mov      dword ptr [esi + 0x22c], edi  
0x40b180:  mov      dword ptr [esi + 0x228], ebx  
0x40b186:  lea      edi, [esi + 0x1a8]            
0x40b18c:  mov      dword ptr [esi + 0x230], eax  
0x40b192:  lea      eax, [esi + 0x228]            
0x40b198:  push     eax                           
0x40b199:  push     edi                           
0x40b19a:  call     0x43f230                      
0x40b19f:  add      esp, 8                        
0x40b1a2:  lea      ecx, [ebp + 8]                
0x40b1a5:  lea      eax, [esi + 0x28]             
0x40b1a8:  push     ecx                           
0x40b1a9:  push     edi                           
0x40b1aa:  push     eax                           
0x40b1ab:  call     0x414270                      
0x40b1b0:  add      esp, 0xc                      
0x40b1b3:  mov      edi, dword ptr [esi + 0x28]   
0x40b1b6:  mov      ebx, dword ptr [esi + 0x2c]   
0x40b1b9:  mov      ecx, dword ptr [esi + 0x30]   
0x40b1bc:  mov      eax, edi                      
0x40b1be:  and      eax, ebx                      
0x40b1c0:  cmp      eax, -1                       
0x40b1c3:  je       0x40b2a0                      
0x40b1c9:  mov      dword ptr [esi], ecx          
0x40b1cb:  lea      eax, [esi + 0x34]             
0x40b1ce:  lea      ecx, [esi + 0xb4]             
0x40b1d4:  push     0x74                          
0x40b1d6:  push     eax                           
0x40b1d7:  push     ecx                           
0x40b1d8:  call     0x5cf3c0                      
0x40b1dd:  add      esp, 0xc                      
0x40b1e0:  mov      eax, dword ptr [esi]          
0x40b1e2:  mov      dword ptr [esi + 0xac], ebx   
0x40b1e8:  mov      dword ptr [esi + 0xa8], edi   
0x40b1ee:  mov      dword ptr [esi + 0x102b8], 0  
0x40b1f8:  mov      dword ptr [esi + 0xb0], eax   
0x40b1fe:  lea      eax, [esi + 0xa8]             
0x40b204:  push     eax                           
0x40b205:  lea      eax, [esi + 0x2a8]            
0x40b20b:  push     eax                           
0x40b20c:  call     0x43f1c0                      
0x40b211:  add      esp, 8                        
0x40b214:  mov      ecx, dword ptr [ebp + 0xc]    
0x40b217:  test     byte ptr [esi + 0x2a8], 1     
0x40b21e:  je       0x40b234                      
0x40b220:  xor      eax, eax                      
0x40b222:  cmp      ecx, dword ptr [esi + 0x2b0]  
0x40b228:  sbb      eax, dword ptr [esi + 0x2b4]  
0x40b22e:  jb       0x40b4a6                      
0x40b234:  lea      eax, [esi + 0xa8]             
0x40b23a:  push     eax                           
0x40b23b:  lea      eax, [esi + 0x2a8]            
0x40b241:  push     eax                           
0x40b242:  call     0x43f1c0                      
0x40b247:  add      esp, 8                        
0x40b24a:  mov      edi, dword ptr [esi + 0x2b0]  
0x40b250:  mov      ecx, dword ptr [ebp + 0xc]    
0x40b253:  mov      eax, 0                        
0x40b258:  mov      ebx, 0                        
0x40b25d:  mov      dword ptr [esi], 0            
0x40b263:  cmp      ecx, edi                      
0x40b265:  sbb      eax, dword ptr [esi + 0x2b4]  
0x40b26b:  cmovb    edi, ecx                      
0x40b26e:  test     byte ptr [esi + 0x2a8], 1     
0x40b275:  cmovne   ebx, edi                      
0x40b278:  test     ebx, ebx                      
0x40b27a:  je       0x40b2b1                      
0x40b27c:  call     0x40da80                      
0x40b281:  push     1                             
0x40b283:  push     ebx                           
0x40b284:  call     0x4177f0                      
0x40b289:  add      esp, 8                        
0x40b28c:  test     eax, eax                      
0x40b28e:  jne      0x40b2b8                      
0x40b290:  push     edi                           
0x40b291:  push     1                             
0x40b293:  call     0x5db4f2                      
0x40b298:  add      esp, 8                        
0x40b29b:  jmp      0x40b490                      
0x40b2a0:  mov      eax, dword ptr [esi + 8]      
0x40b2a3:  mov      dword ptr [eax + 4], ecx      
0x40b2a6:  mov      dword ptr [eax], 0xffffffff   
0x40b2ac:  jmp      0x40b467                      
0x40b2b1:  mov      eax, 1                        
0x40b2b6:  xor      edi, edi                      
0x40b2b8:  lea      ebx, [esi + 0x2a8]            
0x40b2be:  mov      dword ptr [esi + 0x28], edi   
0x40b2c1:  mov      dword ptr [esi + 0x2c], eax   
0x40b2c4:  mov      dword ptr [esi + 0xc], eax    
0x40b2c7:  mov      dword ptr [esi + 0x30], 0     
0x40b2ce:  push     0x10000                       
0x40b2d3:  push     0                             
0x40b2d5:  push     ebx                           
0x40b2d6:  call     0x5cf940                      
0x40b2db:  add      esp, 0xc                      
0x40b2de:  nop                                    
0x40b2e0:  mov      dword ptr [esi + 0x102b8], 1  
0x40b2ea:  push     0x10000                       
0x40b2ef:  push     ebx                           
0x40b2f0:  lea      eax, [esi + 0xa8]             
0x40b2f6:  push     eax                           
0x40b2f7:  lea      eax, [esi + 0x10]             
0x40b2fa:  push     eax                           
0x40b2fb:  call     0x43f870                      
0x40b300:  add      esp, 0x10                     
0x40b303:  cmp      byte ptr [esi + 0x10], 0xff   
0x40b307:  jne      0x40b378                      
0x40b309:  mov      edx, dword ptr [esi + 0x14]   
0x40b30c:  test     edx, edx                      
0x40b30e:  je       0x40b437                      
0x40b314:  mov      ecx, dword ptr [esi]          
0x40b316:  lea      edi, [ecx + edx]              
0x40b319:  cmp      edi, dword ptr [ebp + 0xc]    
0x40b31c:  ja       0x40b492                      
0x40b322:  cmp      edx, 0x10001                  
0x40b328:  jae      0x40b47b                      
0x40b32e:  mov      eax, dword ptr [esi + 0x28]   
0x40b331:  sub      eax, ecx                      
0x40b333:  cmp      edx, eax                      
0x40b335:  ja       0x40b357                      
0x40b337:  mov      eax, dword ptr [esi + 0xc]    
0x40b33a:  mov      dword ptr [esi + 0xc], eax    
0x40b33d:  add      ecx, eax                      
0x40b33f:  push     edx                           
0x40b340:  lea      ebx, [esi + 0x2a8]            
0x40b346:  push     ebx                           
0x40b347:  push     ecx                           
0x40b348:  call     0x5cf3c0                      
0x40b34d:  add      esp, 0xc                      
0x40b350:  mov      dword ptr [esi + 0x30], edi   
0x40b353:  mov      dword ptr [esi], edi          
0x40b355:  jmp      0x40b2e0                      
0x40b357:  push     1                             
0x40b359:  push     1                             
0x40b35b:  push     edx                           
0x40b35c:  push     ecx                           
0x40b35d:  lea      eax, [esi + 0x28]             
0x40b360:  push     eax                           
0x40b361:  mov      dword ptr [esi], edx          
0x40b363:  call     0x5d8780                      
0x40b368:  add      esp, 0x14                     
0x40b36b:  mov      ecx, dword ptr [esi + 0x30]   
0x40b36e:  mov      edx, dword ptr [esi]          
0x40b370:  mov      eax, dword ptr [esi + 0x2c]   
0x40b373:  lea      edi, [ecx + edx]              
0x40b376:  jmp      0x40b33a                      
0x40b378:  mov      eax, dword ptr [esi + 0x10]   
0x40b37b:  mov      byte ptr [esi + 7], 1         
0x40b37f:  mov      dword ptr [esi + 0x102b8], 2  
0x40b389:  mov      dword ptr [esi], eax          
0x40b38b:  mov      eax, dword ptr [esi + 0x14]   
0x40b38e:  mov      dword ptr [esi + 0xc], eax    
0x40b391:  lea      eax, [esi + 0x128]            
0x40b397:  push     eax                           
0x40b398:  call     0x4794a0                      
0x40b39d:  add      esp, 4                        
0x40b3a0:  mov      eax, dword ptr [esi]          
0x40b3a2:  movsd    xmm2, qword ptr [esi + 0x128] 
0x40b3aa:  movsd    xmm0, qword ptr [esi + 0x138] 
0x40b3b2:  movsd    xmm1, qword ptr [esi + 0x130] 
0x40b3ba:  mov      dword ptr [esi + 0x128], 0x5e41ef ; 'the download was interruptedthe server returned an empty downloadt?^'
0x40b3c4:  mov      dword ptr [esi + 0x12c], 0x1c 
0x40b3ce:  lea      ecx, [esi + 0x128]            
0x40b3d4:  lea      edx, [esi + 0x1a8]            
0x40b3da:  mov      byte ptr [esi + 7], 0         
0x40b3de:  mov      dword ptr [esi + 0x130], eax  
0x40b3e4:  mov      eax, dword ptr [esi + 0xc]    
0x40b3e7:  movsd    qword ptr [esi + 0x1b8], xmm0 
0x40b3ef:  movsd    qword ptr [esi + 0x1b0], xmm1 
0x40b3f7:  movsd    qword ptr [esi + 0x1a8], xmm2 
0x40b3ff:  mov      dword ptr [esi + 0x134], eax  
0x40b405:  call     0x5d7fe0                      
0x40b40a:  mov      ecx, dword ptr [esi + 8]      
0x40b40d:  mov      dword ptr [ecx + 4], eax      
0x40b410:  mov      eax, dword ptr [esi + 0x28]   
0x40b413:  mov      dword ptr [ecx], 0xffffffff   
0x40b419:  test     eax, eax                      
0x40b41b:  je       0x40b42b                      
0x40b41d:  push     1                             
0x40b41f:  push     eax                           
0x40b420:  push     dword ptr [esi + 0x2c]        
0x40b423:  call     0x417800                      
0x40b428:  add      esp, 0xc                      
0x40b42b:  mov      dword ptr [esi + 0x102b8], 0xffffffff
0x40b435:  jmp      0x40b452                      
0x40b437:  cmp      dword ptr [esi], 0            
0x40b43a:  mov      ecx, dword ptr [esi + 8]      
0x40b43d:  je       0x40b4c3                      
0x40b443:  mov      eax, dword ptr [esi + 0x30]   
0x40b446:  movsd    xmm0, qword ptr [esi + 0x28]  
0x40b44b:  mov      dword ptr [ecx + 8], eax      
0x40b44e:  movsd    qword ptr [ecx], xmm0         
0x40b452:  lea      ecx, [esi + 0xa8]             
0x40b458:  mov      dword ptr [esi + 0x102b8], 0xffffffff
0x40b462:  call     0x407300                      
0x40b467:  mov      eax, dword ptr [esi + 0x102b0]
0x40b46d:  mov      dword ptr fs:[0], eax         
0x40b473:  lea      esp, [ebp - 0xc]              
0x40b476:  pop      esi                           
0x40b477:  pop      edi                           
0x40b478:  pop      ebx                           
0x40b479:  pop      ebp                           
0x40b47a:  ret                                    
0x40b47b:  push     0x5e4230                       ; 't?^'
0x40b480:  push     0x10000                       
0x40b485:  push     edx                           
0x40b486:  push     0                             
0x40b488:  call     0x5db940                      
0x40b48d:  add      esp, 0x10                     
0x40b490:  ud2                                    
0x40b492:  push     0x22                          
0x40b494:  push     0x5e41cd                       ; 'the download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
0x40b499:  call     0x5d77c0                      
0x40b49e:  add      esp, 8                        
0x40b4a1:  jmp      0x40b40a                      
0x40b4a6:  push     0x22                          
0x40b4a8:  push     0x5e41cd                       ; 'the download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
0x40b4ad:  call     0x5d77c0                      
0x40b4b2:  add      esp, 8                        
0x40b4b5:  mov      ecx, dword ptr [esi + 8]      
0x40b4b8:  mov      dword ptr [ecx + 4], eax      
0x40b4bb:  mov      dword ptr [ecx], 0xffffffff   
0x40b4c1:  jmp      0x40b452                      
0x40b4c3:  push     0x25                          
0x40b4c5:  push     0x5e420b                       ; 'the server returned an empty downloadt?^'
0x40b4ca:  call     0x5d77c0                      
0x40b4cf:  add      esp, 8                        
0x40b4d2:  jmp      0x40b40a                      
0x40b4d7:  nop      word ptr [eax + eax]          
0x40b4e0:  push     ebp                           
0x40b4e1:  sub      esp, 0x14                     
0x40b4e4:  lea      esi, [ebp - 0x102bc]          
0x40b4ea:  mov      ebp, dword ptr [esi + 0x102a8]
0x40b4f0:  mov      eax, dword ptr [esi + 0x28]   
0x40b4f3:  test     eax, eax                      
0x40b4f5:  je       0x40b505                      
0x40b4f7:  push     1                             
0x40b4f9:  push     eax                           
0x40b4fa:  push     dword ptr [esi + 0x2c]        
0x40b4fd:  call     0x417800                      
0x40b502:  add      esp, 0xc                      
0x40b505:  add      esp, 0x14                     
0x40b508:  pop      ebp                           
0x40b509:  ret                                    
0x40b50a:  nop      word ptr [eax + eax]          
0x40b510:  push     ebp                           
0x40b511:  sub      esp, 0x14                     
0x40b514:  lea      esi, [ebp - 0x102bc]          
0x40b51a:  mov      ebp, dword ptr [esi + 0x102a8]
0x40b520:  mov      edx, dword ptr [esi + 0xc]    
0x40b523:  mov      ecx, dword ptr [esi]          
0x40b525:  cmp      byte ptr [esi + 7], 0         
0x40b529:  je       0x40b530                      
0x40b52b:  call     0x406d20                      
0x40b530:  add      esp, 0x14                     
0x40b533:  pop      ebp                           
0x40b534:  ret                                    
0x40b535:  nop      word ptr cs:[eax + eax]       
0x40b53f:  nop                                    
0x40b540:  push     ebp                           
0x40b541:  sub      esp, 0x14                     
0x40b544:  lea      esi, [ebp - 0x102bc]          
0x40b54a:  mov      ebp, dword ptr [esi + 0x102a8]
0x40b550:  lea      ecx, [esi + 0xa8]             
0x40b556:  call     0x407300                      
0x40b55b:  add      esp, 0x14                     
0x40b55e:  pop      ebp                           
0x40b55f:  ret                                    
0x40b560:  push     ebx                           
0x40b561:  push     edi                           
0x40b562:  push     esi                           
0x40b563:  mov      eax, dword ptr [ecx]          
0x40b565:  cmp      eax, -1                       
0x40b568:  setne    bl                            
0x40b56b:  cmp      dword ptr [edx], -1           
0x40b56e:  sete     bh                            
0x40b571:  cmp      bl, bh                        
0x40b573:  je       0x40b5e9                      
0x40b575:  cmp      eax, -1                       
0x40b578:  je       0x40b5c1                      
0x40b57a:  movzx    eax, word ptr [ecx + 0x20]    
0x40b57e:  cmp      ax, word ptr [edx + 0x20]     
0x40b582:  jne      0x40b5e9                      
0x40b584:  mov      eax, dword ptr [ecx + 8]      
0x40b587:  cmp      eax, dword ptr [edx + 8]      
0x40b58a:  jne      0x40b5e9                      
0x40b58c:  push     eax                           
0x40b58d:  mov      esi, edx                      
0x40b58f:  push     dword ptr [edx + 4]           
0x40b592:  mov      edi, ecx                      
0x40b594:  push     dword ptr [ecx + 4]           
0x40b597:  call     0x5cd6d0                      
0x40b59c:  add      esp, 0xc                      
0x40b59f:  test     eax, eax                      
0x40b5a1:  jne      0x40b5e9                      
0x40b5a3:  movzx    edx, byte ptr [edi + 0xc]     
0x40b5a7:  cmp      dl, byte ptr [esi + 0xc]      
0x40b5aa:  jne      0x40b5e9                      
0x40b5ac:  mov      eax, edi                      
0x40b5ae:  mov      ecx, esi                      
0x40b5b0:  test     edx, edx                      
0x40b5b2:  je       0x40b5ce                      
0x40b5b4:  cmp      edx, 1                        
0x40b5b7:  jne      0x40b5ef                      
0x40b5b9:  mov      eax, dword ptr [eax + 0xd]    
0x40b5bc:  cmp      eax, dword ptr [ecx + 0xd]    
0x40b5bf:  jmp      0x40b5c7                      
0x40b5c1:  mov      eax, dword ptr [ecx + 4]      
0x40b5c4:  cmp      eax, dword ptr [edx + 4]      
0x40b5c7:  sete     al                            
0x40b5ca:  pop      esi                           
0x40b5cb:  pop      edi                           
0x40b5cc:  pop      ebx                           
0x40b5cd:  ret                                    
0x40b5ce:  mov      edx, dword ptr [eax + 0x18]   
0x40b5d1:  cmp      edx, dword ptr [ecx + 0x18]   
0x40b5d4:  jne      0x40b5e9                      
0x40b5d6:  push     edx                           
0x40b5d7:  push     dword ptr [ecx + 0x14]        
0x40b5da:  push     dword ptr [eax + 0x14]        
0x40b5dd:  call     0x5cd6d0                      
0x40b5e2:  add      esp, 0xc                      
0x40b5e5:  test     eax, eax                      
0x40b5e7:  jmp      0x40b5c7                      
0x40b5e9:  xor      eax, eax                      
0x40b5eb:  pop      esi                           
0x40b5ec:  pop      edi                           
0x40b5ed:  pop      ebx                           
0x40b5ee:  ret                                    
0x40b5ef:  movdqu   xmm0, xmmword ptr [eax + 0xd] 
0x40b5f4:  movdqu   xmm1, xmmword ptr [ecx + 0xd] 
0x40b5f9:  pcmpeqb  xmm1, xmm0                    
0x40b5fd:  pmovmskb eax, xmm1                     
0x40b601:  cmp      eax, 0xffff                   
0x40b606:  jmp      0x40b5c7                      
0x40b608:  int3                                   
0x40b609:  int3                                   
0x40b60a:  int3                                   
0x40b60b:  int3                                   
0x40b60c:  int3                                   
0x40b60d:  int3                                   
0x40b60e:  int3                                   
0x40b60f:  int3                                   
0x40b610:  push     0x15                          
0x40b612:  push     0x5e42a0                       ; 'struct UpdateManifeststruct PlatformRelease'
0x40b617:  push     dword ptr [esp + 0x10]        
0x40b61b:  call     0x489df0                      
0x40b620:  add      esp, 0xc                      
0x40b623:  ret                                    
0x40b624:  int3                                   
0x40b625:  int3                                   
0x40b626:  int3                                   
0x40b627:  int3                                   
0x40b628:  int3                                   
0x40b629:  int3                                   
0x40b62a:  int3                                   
0x40b62b:  int3                                   
0x40b62c:  int3                                   
0x40b62d:  int3                                   
0x40b62e:  int3                                   
0x40b62f:  int3                                   
0x40b630:  push     0x16                          
0x40b632:  push     0x5e42b5                       ; 'struct PlatformRelease'
0x40b637:  push     dword ptr [esp + 0x10]        
0x40b63b:  call     0x489df0                      
0x40b640:  add      esp, 0xc                      
0x40b643:  ret                                    
0x40b644:  int3                                   
0x40b645:  int3                                   
0x40b646:  int3                                   
0x40b647:  int3                                   
0x40b648:  int3                                   
0x40b649:  int3                                   
0x40b64a:  int3                                   
0x40b64b:  int3                                   
0x40b64c:  int3                                   
0x40b64d:  int3                                   
0x40b64e:  int3                                   
0x40b64f:  int3                                   
0x40b650:  mov      eax, 0x653c4c                 
0x40b655:  jmp      0x5cd180                      
0x40b65a:  int3                                   
0x40b65b:  int3                                   
0x40b65c:  int3                                   
0x40b65d:  int3                                   
0x40b65e:  int3                                   
0x40b65f:  int3                                   
0x40b660:  mov      eax, 0x653c78                 
0x40b665:  jmp      0x5cd180                      
0x40b66a:  int3                                   
0x40b66b:  int3                                   
0x40b66c:  int3                                   
0x40b66d:  int3                                   
0x40b66e:  int3                                   
0x40b66f:  int3                                   
0x40b670:  mov      eax, 0x653cac                 
0x40b675:  jmp      0x5cd180                      
0x40b67a:  int3                                   
0x40b67b:  int3                                   
0x40b67c:  int3                                   
0x40b67d:  int3                                   
0x40b67e:  int3                                   
0x40b67f:  int3                                   
0x40b680:  mov      eax, 0x653cd8                 
0x40b685:  jmp      0x5cd180                      
0x40b68a:  int3                                   
0x40b68b:  int3                                   
0x40b68c:  int3                                   
0x40b68d:  int3                                   
0x40b68e:  int3                                   
0x40b68f:  int3                                   
0x40b690:  mov      eax, 0x653d0c                 
0x40b695:  jmp      0x5cd180                      
0x40b69a:  int3                                   
0x40b69b:  int3                                   
0x40b69c:  int3                                   
0x40b69d:  int3                                   
0x40b69e:  int3                                   
0x40b69f:  int3                                   
0x40b6a0:  mov      eax, 0x653d40                 
0x40b6a5:  jmp      0x5cd180                      
0x40b6aa:  int3                                   
0x40b6ab:  int3                                   
0x40b6ac:  int3                                   
0x40b6ad:  int3                                   
0x40b6ae:  int3                                   
0x40b6af:  int3                                   
0x40b6b0:  mov      eax, 0x653d74                 
0x40b6b5:  jmp      0x5cd180                      
0x40b6ba:  int3                                   
0x40b6bb:  int3                                   
0x40b6bc:  int3                                   
0x40b6bd:  int3                                   
0x40b6be:  int3                                   
0x40b6bf:  int3                                   
0x40b6c0:  mov      eax, 0x653da8                 
0x40b6c5:  jmp      0x5cd180                      
0x40b6ca:  int3                                   
0x40b6cb:  int3                                   
0x40b6cc:  int3                                   
0x40b6cd:  int3                                   
0x40b6ce:  int3                                   
0x40b6cf:  int3                                   
0x40b6d0:  mov      eax, 0x653ddc                 
0x40b6d5:  jmp      0x5cd180                      
0x40b6da:  int3                                   
0x40b6db:  int3                                   
0x40b6dc:  int3                                   
0x40b6dd:  int3                                   
0x40b6de:  int3                                   
0x40b6df:  int3                                   
0x40b6e0:  mov      eax, 0x653e08                 
0x40b6e5:  jmp      0x5cd180                      
0x40b6ea:  int3                                   
0x40b6eb:  int3                                   
0x40b6ec:  int3                                   
0x40b6ed:  int3                                   
0x40b6ee:  int3                                   
0x40b6ef:  int3                                   
0x40b6f0:  mov      eax, 0x653e34                 
0x40b6f5:  jmp      0x5cd180                      
0x40b6fa:  int3                                   
0x40b6fb:  int3                                   
0x40b6fc:  int3                                   
0x40b6fd:  int3                                   
0x40b6fe:  int3                                   
0x40b6ff:  int3                                   
0x40b700:  mov      eax, 0x653e60                 
0x40b705:  jmp      0x5cd180                      
0x40b70a:  int3                                   
0x40b70b:  int3                                   
0x40b70c:  int3                                   
0x40b70d:  int3                                   
0x40b70e:  int3                                   
0x40b70f:  int3                                   
0x40b710:  mov      eax, 0x653e8c                 
0x40b715:  jmp      0x5cd180                      
0x40b71a:  int3                                   
0x40b71b:  int3                                   
0x40b71c:  int3                                   
0x40b71d:  int3                                   
0x40b71e:  int3                                   
0x40b71f:  int3                                   
0x40b720:  mov      eax, 0x653f10                 
0x40b725:  jmp      0x5cd180                      
0x40b72a:  int3                                   
0x40b72b:  int3                                   
0x40b72c:  int3                                   
0x40b72d:  int3                                   
0x40b72e:  int3                                   
0x40b72f:  int3                                   
0x40b730:  mov      eax, 0x653f64                 
0x40b735:  jmp      0x5cd180                      
0x40b73a:  int3                                   
0x40b73b:  int3                                   
0x40b73c:  int3                                   
0x40b73d:  int3                                   
0x40b73e:  int3                                   
0x40b73f:  int3                                   
0x40b740:  mov      eax, 0x653fb0                 
0x40b745:  jmp      0x5cd180                      
0x40b74a:  int3                                   
0x40b74b:  int3                                   
0x40b74c:  int3                                   
0x40b74d:  int3                                   
0x40b74e:  int3                                   
0x40b74f:  int3                                   
0x40b750:  mov      eax, 0x653fec                 
0x40b755:  jmp      0x5cd180                      
0x40b75a:  int3                                   
0x40b75b:  int3                                   
0x40b75c:  int3                                   
0x40b75d:  int3                                   
0x40b75e:  int3                                   
0x40b75f:  int3                                   
0x40b760:  mov      eax, 0x654048                 
0x40b765:  jmp      0x5cd180                      
0x40b76a:  int3                                   
0x40b76b:  int3                                   
0x40b76c:  int3                                   
0x40b76d:  int3                                   
0x40b76e:  int3                                   
0x40b76f:  int3                                   
0x40b770:  mov      eax, 0x65407c                 
0x40b775:  jmp      0x5cd180                      
0x40b77a:  int3                                   
0x40b77b:  int3                                   
0x40b77c:  int3                                   
0x40b77d:  int3                                   
0x40b77e:  int3                                   
0x40b77f:  int3                                   
0x40b780:  mov      eax, 0x6540a8                 
0x40b785:  jmp      0x5cd180                      
0x40b78a:  int3                                   
0x40b78b:  int3                                   
0x40b78c:  int3                                   
0x40b78d:  int3                                   
0x40b78e:  int3                                   
0x40b78f:  int3                                   
0x40b790:  mov      eax, 0x6540dc                 
0x40b795:  jmp      0x5cd180                      
0x40b79a:  int3                                   
0x40b79b:  int3                                   
0x40b79c:  int3                                   
0x40b79d:  int3                                   
0x40b79e:  int3                                   
0x40b79f:  int3                                   
0x40b7a0:  mov      eax, 0x654138                 
0x40b7a5:  jmp      0x5cd180                      
0x40b7aa:  int3                                   
0x40b7ab:  int3                                   
0x40b7ac:  int3                                   
0x40b7ad:  int3                                   
0x40b7ae:  int3                                   
0x40b7af:  int3                                   
0x40b7b0:  mov      eax, 0x654194                 
0x40b7b5:  jmp      0x5cd180                      
0x40b7ba:  int3                                   
0x40b7bb:  int3                                   
0x40b7bc:  int3                                   
0x40b7bd:  int3                                   
0x40b7be:  int3                                   
0x40b7bf:  int3                                   
0x40b7c0:  mov      eax, 0x654240                 
0x40b7c5:  jmp      0x5cd180                      
0x40b7ca:  int3                                   
0x40b7cb:  int3                                   
0x40b7cc:  int3                                   
0x40b7cd:  int3                                   
0x40b7ce:  int3                                   
0x40b7cf:  int3                                   
0x40b7d0:  push     ebp                           
0x40b7d1:  mov      ebp, esp                      
0x40b7d3:  push     ebx                           
0x40b7d4:  push     edi                           
0x40b7d5:  push     esi                           
0x40b7d6:  and      esp, 0xfffffff8               
0x40b7d9:  sub      esp, 0x138                    
0x40b7df:  mov      esi, esp                      
0x40b7e1:  mov      dword ptr [esi + 0x120], ebp  
0x40b7e7:  mov      dword ptr [esi + 0x124], esp  
0x40b7ed:  mov      dword ptr [esi + 0x130], 0xffffffff