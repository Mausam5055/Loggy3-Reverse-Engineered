0x408500:  adc      al, 0x8b                      
0x408502:  jle      0x408540                      
0x408504:  ja       0x408b03                      
0x40850a:  cmp      edx, edi                      
0x40850c:  jae      0x408550                      
0x40850e:  mov      edx, dword ptr [esi + 0x4c]   
0x408511:  cmp      ecx, edx                      
0x408513:  setne    al                            
0x408516:  or       bh, al                        
0x408518:  test     bh, 1                         
0x40851b:  jne      0x408674                      
0x408521:  mov      dword ptr [esi + 0x188], 0xffffffff
0x40852b:  lea      edi, [esi + 0x30]             
0x40852e:  mov      dword ptr [esi + 0x188], 0xffffffff
0x408538:  push     edi                           
0x408539:  call     0x4794a0                      
0x40853e:  add      esp, 4                        
0x408541:  mov      ecx, 0x5e3db4                 
0x408546:  mov      edx, 0x21                     
0x40854b:  jmp      0x40873f                      
0x408550:  mov      dword ptr [esi + 0xc], edi    
0x408553:  mov      dword ptr [esi + 0x20], ecx   
0x408556:  mov      dword ptr [esi + 0x1c], 0     
0x40855d:  mov      eax, dword ptr [esi + 0x14]   
0x408560:  mov      edi, dword ptr [esi + 0xc]    
0x408563:  mov      bl, byte ptr [esi + eax + 0x43]
0x408567:  jmp      0x40857e                      
0x408569:  nop      dword ptr [eax]               
0x408570:  mov      edx, dword ptr [esi + 0x24]   
0x408573:  mov      edi, dword ptr [esi + 0xc]    
0x408576:  cmp      edx, edi                      
0x408578:  jb       0x40865b                      
0x40857e:  mov      eax, dword ptr [esi + 0x10]   
0x408581:  mov      ecx, edx                      
0x408583:  sub      ecx, edi                      
0x408585:  cmp      ecx, 8                        
0x408588:  lea      eax, [eax + edi]              
0x40858b:  jae      0x4085c0                      
0x40858d:  xor      edx, edx                      
0x40858f:  test     ecx, ecx                      
0x408591:  je       0x4085df                      
0x408593:  nop      word ptr cs:[eax + eax]       
0x40859d:  nop      dword ptr [eax]               
0x4085a0:  cmp      byte ptr [eax + edx], bl      
0x4085a3:  je       0x4085e8                      
0x4085a5:  inc      edx                           
0x4085a6:  cmp      ecx, edx                      
0x4085a8:  jne      0x4085a0                      
0x4085aa:  xor      eax, eax                      
0x4085ac:  mov      edx, ecx                      
0x4085ae:  cmp      eax, 1                        
0x4085b1:  je       0x408600                      
0x4085b3:  jmp      0x40865b                      
0x4085b8:  nop      dword ptr [eax + eax]         
0x4085c0:  movzx    edx, bl                       
0x4085c3:  mov      dword ptr [esi + 0x188], 0xffffffff
0x4085cd:  push     ecx                           
0x4085ce:  push     eax                           
0x4085cf:  push     edx                           
0x4085d0:  call     0x48b470                      
0x4085d5:  add      esp, 0xc                      
0x4085d8:  cmp      eax, 1                        
0x4085db:  je       0x408600                      
0x4085dd:  jmp      0x40865b                      
0x4085df:  xor      eax, eax                      
0x4085e1:  cmp      eax, 1                        
0x4085e4:  je       0x408600                      
0x4085e6:  jmp      0x40865b                      
0x4085e8:  mov      eax, 1                        
0x4085ed:  cmp      eax, 1                        
0x4085f0:  jne      0x40865b                      
0x4085f2:  nop      word ptr cs:[eax + eax]       
0x4085fc:  nop      dword ptr [eax]               
0x408600:  lea      ecx, [edi + edx + 1]          
0x408604:  mov      edi, ecx                      
0x408606:  mov      dword ptr [esi + 0xc], ecx    
0x408609:  sub      edi, dword ptr [esi + 0x14]   
0x40860c:  setb     al                            
0x40860f:  cmp      ecx, dword ptr [esi + 0x28]   
0x408612:  seta     cl                            
0x408615:  or       cl, al                        
0x408617:  jne      0x408570                      
0x40861d:  mov      eax, dword ptr [esi + 0x10]   
0x408620:  add      eax, edi                      
0x408622:  push     dword ptr [esi + 0x14]        
0x408625:  lea      ecx, [esi + 0x44]             
0x408628:  push     ecx                           
0x408629:  push     eax                           
0x40862a:  call     0x5cd6d0                      
0x40862f:  add      esp, 0xc                      
0x408632:  test     eax, eax                      
0x408634:  jne      0x408570                      
0x40863a:  mov      ecx, dword ptr [esi + 0x4c]   
0x40863d:  mov      eax, dword ptr [esi + 0xc]    
0x408640:  mov      edx, dword ptr [esi + 0x24]   
0x408643:  sub      edi, ecx                      
0x408645:  add      ecx, dword ptr [esi + 0x10]   
0x408648:  cmp      edx, eax                      
0x40864a:  mov      dword ptr [esi + 0x4c], eax   
0x40864d:  mov      dword ptr [esi + 0x18], edi   
0x408650:  mov      dword ptr [esi + 0x1c], ecx   
0x408653:  jae      0x40855d                      
0x408659:  jmp      0x40865e                      
0x40865b:  mov      edi, dword ptr [esi + 0x18]   
0x40865e:  mov      edx, dword ptr [esi + 0x4c]   
0x408661:  mov      ecx, dword ptr [esi + 0x20]   
0x408664:  cmp      ecx, edx                      
0x408666:  setne    al                            
0x408669:  or       bh, al                        
0x40866b:  test     bh, 1                         
0x40866e:  je       0x408af3                      
0x408674:  mov      ebx, dword ptr [esi + 0x10]   
0x408677:  sub      ecx, edx                      
0x408679:  mov      edi, ecx                      
0x40867b:  add      ebx, edx                      
0x40867d:  cmp      edi, 0xa                      
0x408680:  jb       0x40871f                      
0x408686:  lea      eax, [ebx + edi - 0xa]        
0x40868a:  push     0xa                           
0x40868c:  push     eax                           
0x40868d:  push     0x5e3dd5                      
0x408692:  call     0x5cd6d0                      
0x408697:  add      esp, 0xc                      
0x40869a:  test     eax, eax                      
0x40869c:  mov      dword ptr [esi + 0x188], 0xffffffff
0x4086a6:  jne      0x40871f                      
0x4086a8:  lea      ecx, [esi + 0x30]             
0x4086ab:  add      edi, -0xa                     
0x4086ae:  mov      dword ptr [esi + 0x30], 0x2d  
0x4086b5:  mov      dword ptr [esi + 0x34], ebx   
0x4086b8:  mov      dword ptr [esi + 0x38], edi   
0x4086bb:  mov      dword ptr [esi + 0x3c], 0     
0x4086c2:  mov      dword ptr [esi + 0x40], edi   
0x4086c5:  mov      dword ptr [esi + 0x44], 0x2d  
0x4086cc:  mov      byte ptr [esi + 0x48], 1      
0x4086d0:  mov      dword ptr [esi + 0x4c], 0     
0x4086d7:  mov      dword ptr [esi + 0x50], edi   
0x4086da:  mov      word ptr [esi + 0x54], 1      
0x4086e0:  call     0x4077d0                      
0x4086e5:  test     eax, eax                      
0x4086e7:  je       0x40871f                      
0x4086e9:  cmp      edx, 0x40                     
0x4086ec:  jne      0x40871f                      
0x4086ee:  mov      ebx, dword ptr [ebp + 8]      
0x4086f1:  mov      edi, 0xffffffc0               
0x4086f6:  nop      word ptr cs:[eax + eax]       
0x408700:  test     edi, edi                      
0x408702:  je       0x40874d                      
0x408704:  movzx    ecx, byte ptr [eax + edi + 0x40]
0x408709:  inc      edi                           
0x40870a:  mov      edx, ecx                      
0x40870c:  add      dl, 0xc6                      
0x40870f:  cmp      dl, 0xf5                      
0x408712:  ja       0x408700                      
0x408714:  and      cl, 0xdf                      
0x408717:  add      cl, 0xb9                      
0x40871a:  cmp      cl, 0xf9                      
0x40871d:  ja       0x408700                      
0x40871f:  lea      edi, [esi + 0x30]             
0x408722:  mov      dword ptr [esi + 0x188], 0xffffffff
0x40872c:  push     edi                           
0x40872d:  call     0x4794a0                      
0x408732:  add      esp, 4                        
0x408735:  mov      ecx, 0x5e3ddf                 
0x40873a:  mov      edx, 0x30                     
0x40873f:  push     edi                           
0x408740:  call     0x5d81d0                      
0x408745:  add      esp, 4                        
0x408748:  jmp      0x408ade                      
0x40874d:  pxor     xmm0, xmm0                    
0x408751:  lea      ecx, [esi + 0xc8]             
0x408757:  cmp      ebx, 0x40                     
0x40875a:  mov      byte ptr [esi + 0x108], 0     
0x408761:  mov      dword ptr [esi + 0x10], eax   
0x408764:  movq     qword ptr [esi + 0x100], xmm0 
0x40876c:  movq     qword ptr [esi + 0xf8], xmm0  
0x408774:  movq     qword ptr [esi + 0xf0], xmm0  
0x40877c:  movq     qword ptr [esi + 0xe8], xmm0  
0x408784:  movq     qword ptr [esi + 0xe0], xmm0  
0x40878c:  movq     qword ptr [esi + 0xd8], xmm0  
0x408794:  movq     qword ptr [esi + 0xd0], xmm0  
0x40879c:  movq     qword ptr [esi + 0xc8], xmm0  
0x4087a4:  mov      dword ptr [esi + 0xa0], 0x6a09e667
0x4087ae:  mov      dword ptr [esi + 0xa4], 0xbb67ae85
0x4087b8:  mov      dword ptr [esi + 0xa8], 0x3c6ef372
0x4087c2:  mov      dword ptr [esi + 0xac], 0xa54ff53a
0x4087cc:  mov      dword ptr [esi + 0xb0], 0x510e527f
0x4087d6:  mov      dword ptr [esi + 0xb4], 0x9b05688c
0x4087e0:  mov      dword ptr [esi + 0xb8], 0x1f83d9ab
0x4087ea:  mov      dword ptr [esi + 0xbc], 0x5be0cd19
0x4087f4:  mov      dword ptr [esi + 0xc4], 0     
0x4087fe:  mov      dword ptr [esi + 0xc0], 0     
0x408808:  jae      0x408821                      
0x40880a:  push     ebx                           
0x40880b:  push     dword ptr [esi + 0x2c]        
0x40880e:  push     ecx                           
0x40880f:  call     0x5cf3c0                      
0x408814:  add      esp, 0xc                      
0x408817:  mov      eax, ebx                      
0x408819:  lea      ebx, [esi + 0xa0]             
0x40881f:  jmp      0x40887a                      
0x408821:  mov      eax, dword ptr [esi + 0x2c]   
0x408824:  mov      ecx, ebx                      
0x408826:  and      ebx, 0x7fffffc0               
0x40882c:  mov      dword ptr [esi + 0xc4], 0     
0x408836:  mov      dword ptr [esi + 0x188], 0xffffffff
0x408840:  mov      edi, ecx                      
0x408842:  shr      ecx, 6                        
0x408845:  and      edi, 0x3f                     
0x408848:  mov      dword ptr [esi + 0xc0], ecx   
0x40884e:  add      ebx, eax                      
0x408850:  push     ecx                           
0x408851:  push     eax                           
0x408852:  lea      eax, [esi + 0xa0]             
0x408858:  push     eax                           
0x408859:  call     0x417cf0                      
0x40885e:  add      esp, 0xc                      
0x408861:  push     edi                           
0x408862:  push     ebx                           
0x408863:  lea      ebx, [esi + 0xa0]             
0x408869:  lea      eax, [esi + 0xc8]             
0x40886f:  push     eax                           
0x408870:  call     0x5cf3c0                      
0x408875:  add      esp, 0xc                      
0x408878:  mov      eax, edi                      
0x40887a:  mov      byte ptr [esi + 0x108], al    
0x408880:  push     0x70                          
0x408882:  push     ebx                           
0x408883:  lea      eax, [esi + 0x30]             
0x408886:  push     eax                           
0x408887:  call     0x5cf3c0                      
0x40888c:  add      esp, 0xc                      
0x40888f:  mov      eax, dword ptr [esi + 0x50]   
0x408892:  mov      edi, dword ptr [esi + 0x54]   
0x408895:  movzx    ebx, byte ptr [esi + 0x98]    
0x40889c:  lea      ecx, [esi + 0x58]             
0x40889f:  shld     edi, eax, 9                   
0x4088a3:  shl      eax, 9                        
0x4088a6:  cmp      ebx, 0x3f                     
0x4088a9:  mov      byte ptr [esi + ebx + 0x58], 0x80
0x4088ae:  lea      eax, [eax + ebx*8]            
0x4088b1:  bswap    edi                           
0x4088b3:  bswap    eax                           
0x4088b5:  mov      dword ptr [esi + 0xc], eax    
0x4088b8:  je       0x4088e5                      
0x4088ba:  mov      ecx, ebx                      
0x4088bc:  lea      eax, [esi + ebx + 0x58]       
0x4088c0:  xor      ecx, 0x3f                     
0x4088c3:  inc      eax                           
0x4088c4:  push     ecx                           
0x4088c5:  push     0                             
0x4088c7:  push     eax                           
0x4088c8:  call     0x5cf940                      
0x4088cd:  lea      ecx, [esi + 0x58]             
0x4088d0:  add      esp, 0xc                      
0x4088d3:  xor      ebx, 0x38                     
0x4088d6:  mov      dword ptr [esi + 0x188], 0xffffffff
0x4088e0:  cmp      ebx, 7                        
0x4088e3:  ja       0x408940                      
0x4088e5:  mov      dword ptr [esi + 0x188], 0xffffffff
0x4088ef:  push     1                             
0x4088f1:  push     ecx                           
0x4088f2:  lea      ebx, [esi + 0x30]             
0x4088f5:  push     ebx                           
0x4088f6:  call     0x417cf0                      
0x4088fb:  add      esp, 0xc                      
0x4088fe:  mov      eax, dword ptr [esi + 0xc]    
0x408901:  pxor     xmm0, xmm0                    
0x408905:  movq     qword ptr [esi + 0x160], xmm0 
0x40890d:  pxor     xmm0, xmm0                    
0x408911:  movdqa   xmmword ptr [esi + 0x150], xmm0
0x408919:  movdqa   xmmword ptr [esi + 0x140], xmm0
0x408921:  movdqa   xmmword ptr [esi + 0x130], xmm0
0x408929:  mov      dword ptr [esi + 0x168], edi  
0x40892f:  mov      dword ptr [esi + 0x16c], eax  
0x408935:  lea      eax, [esi + 0x130]            
0x40893b:  push     1                             
0x40893d:  push     eax                           
0x40893e:  jmp      0x408955                      
0x408940:  mov      eax, dword ptr [esi + 0xc]    
0x408943:  mov      dword ptr [esi + 0x90], edi   
0x408949:  mov      dword ptr [esi + 0x94], eax   
0x40894f:  push     1                             
0x408951:  push     ecx                           
0x408952:  lea      ebx, [esi + 0x30]             
0x408955:  push     ebx                           
0x408956:  call     0x417cf0                      
0x40895b:  add      esp, 0xc                      
0x40895e:  movdqu   xmm2, xmmword ptr [esi + 0x30]
0x408963:  pxor     xmm0, xmm0                    
0x408967:  movdqu   xmm1, xmmword ptr [esi + 0x40]
0x40896c:  lea      eax, [esi + 0x110]            
0x408972:  mov      dword ptr [esi + 0x130], eax  
0x408978:  lea      eax, [esi + 0x130]            
0x40897e:  mov      dword ptr [esi + 0x30], eax   
0x408981:  mov      dword ptr [esi + 0x34], 0x4171f0
0x408988:  movdqa   xmm3, xmm2                    
0x40898c:  punpcklbw xmm2, xmm0                    
0x408990:  punpckhbw xmm3, xmm0                    
0x408994:  pshuflw  xmm2, xmm2, 0x1b              
0x408999:  pshuflw  xmm3, xmm3, 0x1b              
0x40899e:  pshufhw  xmm2, xmm2, 0x1b              
0x4089a3:  pshufhw  xmm3, xmm3, 0x1b              
0x4089a8:  packuswb xmm2, xmm3                    
0x4089ac:  movdqa   xmm3, xmm1                    
0x4089b0:  punpcklbw xmm1, xmm0                    
0x4089b4:  punpckhbw xmm3, xmm0                    
0x4089b8:  pshuflw  xmm0, xmm1, 0x1b              
0x4089bd:  movdqu   xmmword ptr [esi + 0x110], xmm2
0x4089c5:  pshuflw  xmm3, xmm3, 0x1b              
0x4089ca:  pshufhw  xmm0, xmm0, 0x1b              
0x4089cf:  pshufhw  xmm3, xmm3, 0x1b              
0x4089d4:  packuswb xmm0, xmm3                    
0x4089d8:  movdqu   xmmword ptr [esi + 0x120], xmm0
0x4089e0:  push     ebx                           
0x4089e1:  push     0x5e5efc                      
0x4089e6:  lea      eax, [esi + 0xa0]             
0x4089ec:  push     eax                           
0x4089ed:  call     0x486300                      
0x4089f2:  add      esp, 0xc                      
0x4089f5:  cmp      dword ptr [esi + 0xa0], -1    
0x4089fc:  je       0x408a88                      
0x408a02:  mov      edx, dword ptr [esi + 0xa8]   
0x408a08:  movq     xmm0, qword ptr [esi + 0xa0]  
0x408a10:  lea      eax, [esi + 0x130]            
0x408a16:  lea      ecx, [esi + 0x111]            
0x408a1c:  mov      dword ptr [esi + 0x188], 0    
0x408a26:  mov      dword ptr [esi + 0x38], edx   
0x408a29:  movq     qword ptr [esi + 0x30], xmm0  
0x408a2e:  push     ebx                           
0x408a2f:  push     eax                           
0x408a30:  push     ecx                           
0x408a31:  call     0x4143e0                      
0x408a36:  add      esp, 0xc                      
0x408a39:  mov      eax, dword ptr [esi + 0x30]   
0x408a3c:  mov      ebx, dword ptr [esi + 0x34]   
0x408a3f:  cmp      dword ptr [esi + 0x38], 0x40  
0x408a43:  mov      edi, dword ptr [esi + 0x10]   
0x408a46:  mov      dword ptr [esi + 0xc], eax    
0x408a49:  jne      0x408a83                      
0x408a4b:  mov      eax, 0xffffffc0               
0x408a50:  test     eax, eax                      
0x408a52:  je       0x408ac7                      
0x408a54:  movzx    ecx, byte ptr [ebx + eax + 0x40]
0x408a59:  mov      edx, ecx                      
0x408a5b:  add      dl, 0xbf                      
0x408a5e:  cmp      dl, 0x1a                      
0x408a61:  setb     dl                            
0x408a64:  shl      dl, 5                         
0x408a67:  or       dl, cl                        
0x408a69:  movzx    ecx, byte ptr [edi + eax + 0x40]
0x408a6e:  mov      ch, cl                        
0x408a70:  add      ch, 0xbf                      
0x408a73:  cmp      ch, 0x1a                      
0x408a76:  setb     ch                            
0x408a79:  inc      eax                           
0x408a7a:  shl      ch, 5                         
0x408a7d:  or       ch, cl                        
0x408a7f:  cmp      dl, ch                        
0x408a81:  je       0x408a50                      
0x408a83:  mov      dword ptr [esi + 0x10], ebx   
0x408a86:  jmp      0x408a96                      
0x408a88:  mov      dword ptr [esi + 0xc], 0      
0x408a8f:  mov      dword ptr [esi + 0x10], 1     
0x408a96:  mov      dword ptr [esi + 0x188], 1    
0x408aa0:  push     0x25                          
0x408aa2:  push     0x5e3e0f                      
0x408aa7:  call     0x5d77c0                      
0x408aac:  add      esp, 8                        
0x408aaf:  mov      ecx, dword ptr [esi + 0xc]    
0x408ab2:  test     ecx, ecx                      
0x408ab4:  je       0x408ade                      
0x408ab6:  push     1                             
0x408ab8:  push     ecx                           
0x408ab9:  push     dword ptr [esi + 0x10]        
0x408abc:  mov      edi, eax                      
0x408abe:  call     0x417800                      
0x408ac3:  mov      eax, edi                      
0x408ac5:  jmp      0x408adb                      
0x408ac7:  mov      ecx, dword ptr [esi + 0xc]    
0x408aca:  xor      eax, eax                      
0x408acc:  test     ecx, ecx                      
0x408ace:  je       0x408ade                      
0x408ad0:  push     1                             
0x408ad2:  push     ecx                           
0x408ad3:  push     ebx                           
0x408ad4:  call     0x417800                      
0x408ad9:  xor      eax, eax                      
0x408adb:  add      esp, 0xc                      
0x408ade:  mov      ecx, dword ptr [esi + 0x180]  
0x408ae4:  mov      dword ptr fs:[0], ecx         
0x408aeb:  lea      esp, [ebp - 0xc]              
0x408aee:  pop      esi                           
0x408aef:  pop      edi                           
0x408af0:  pop      ebx                           
0x408af1:  pop      ebp                           
0x408af2:  ret                                    
0x408af3:  mov      ebx, dword ptr [esi + 0x1c]   
0x408af6:  test     ebx, ebx                      
0x408af8:  jne      0x40867d                      
0x408afe:  jmp      0x40852b                      
0x408b03:  test     bh, 1                         
0x408b06:  mov      dword ptr [esi + 0x20], ecx   
0x408b09:  je       0x408ba3                      
0x408b0f:  mov      eax, dword ptr [esi + 0x4c]   
0x408b12:  cmp      edx, edi                      
0x408b14:  mov      dword ptr [esi + 0x18], eax   
0x408b17:  jb       0x408b98                      
0x408b19:  mov      eax, dword ptr [esi + 0x14]   
0x408b1c:  movzx    ebx, byte ptr [esi + eax + 0x43]
0x408b21:  movzx    eax, bl                       
0x408b24:  mov      dword ptr [esi + 0x1c], eax   
0x408b27:  mov      eax, dword ptr [esi + 0x10]   
0x408b2a:  mov      ecx, edx                      
0x408b2c:  mov      dword ptr [esi + 0xc], edi    
0x408b2f:  sub      ecx, edi                      
0x408b31:  cmp      ecx, 8                        
0x408b34:  lea      eax, [eax + edi]              
0x408b37:  jae      0x408b4f                      
0x408b39:  xor      edx, edx                      
0x408b3b:  test     ecx, ecx                      
0x408b3d:  je       0x408b68                      
0x408b3f:  cmp      byte ptr [eax + edx], bl      
0x408b42:  je       0x408b6c                      
0x408b44:  inc      edx                           
0x408b45:  cmp      ecx, edx                      
0x408b47:  jne      0x408b3f                      
0x408b49:  xor      eax, eax                      
0x408b4b:  mov      edx, ecx                      
0x408b4d:  jmp      0x408b71                      
0x408b4f:  mov      dword ptr [esi + 0x188], 0xffffffff
0x408b59:  push     ecx                           
0x408b5a:  push     eax                           
0x408b5b:  push     dword ptr [esi + 0x1c]        
0x408b5e:  call     0x48b470                      
0x408b63:  add      esp, 0xc                      
0x408b66:  jmp      0x408b71                      
0x408b68:  xor      eax, eax                      
0x408b6a:  jmp      0x408b71                      
0x408b6c:  mov      eax, 1                        
0x408b71:  cmp      eax, 1                        
0x408b74:  jne      0x408b98                      
0x408b76:  mov      edi, dword ptr [esi + 0xc]    
0x408b79:  lea      edi, [edi + edx + 1]          
0x408b7d:  cmp      edi, dword ptr [esi + 0x14]   
0x408b80:  setae    al                            
0x408b83:  cmp      edi, dword ptr [esi + 0x28]   
0x408b86:  setbe    cl                            
0x408b89:  test     al, cl                        
0x408b8b:  jne      0x408c33                      
0x408b91:  mov      edx, dword ptr [esi + 0x24]   
0x408b94:  cmp      edx, edi                      
0x408b96:  jae      0x408b27                      
0x408b98:  mov      ecx, dword ptr [esi + 0x20]   
0x408b9b:  mov      edx, dword ptr [esi + 0x18]   
0x408b9e:  jmp      0x408674                      
0x408ba3:  cmp      edx, edi                      
0x408ba5:  jb       0x408c20                      
0x408ba7:  mov      eax, dword ptr [esi + 0x14]   
0x408baa:  movzx    ebx, byte ptr [esi + eax + 0x43]
0x408baf:  movzx    eax, bl                       
0x408bb2:  mov      dword ptr [esi + 0x1c], eax   
0x408bb5:  mov      ecx, dword ptr [esi + 0x24]   
0x408bb8:  mov      eax, dword ptr [esi + 0x10]   
0x408bbb:  mov      dword ptr [esi + 0xc], edi    
0x408bbe:  sub      ecx, edi                      
0x408bc0:  add      eax, edi                      
0x408bc2:  cmp      ecx, 7                        
0x408bc5:  ja       0x408bdd                      
0x408bc7:  xor      edx, edx                      
0x408bc9:  test     ecx, ecx                      
0x408bcb:  je       0x408bf6                      
0x408bcd:  cmp      byte ptr [eax + edx], bl      
0x408bd0:  je       0x408bfa                      
0x408bd2:  inc      edx                           
0x408bd3:  cmp      ecx, edx                      
0x408bd5:  jne      0x408bcd                      
0x408bd7:  xor      eax, eax                      
0x408bd9:  mov      edx, ecx                      
0x408bdb:  jmp      0x408bff                      
0x408bdd:  mov      dword ptr [esi + 0x188], 0xffffffff
0x408be7:  push     ecx                           
0x408be8:  push     eax                           
0x408be9:  push     dword ptr [esi + 0x1c]        
0x408bec:  call     0x48b470                      
0x408bf1:  add      esp, 0xc                      
0x408bf4:  jmp      0x408bff                      
0x408bf6:  xor      eax, eax                      
0x408bf8:  jmp      0x408bff                      
0x408bfa:  mov      eax, 1                        
0x408bff:  mov      edi, dword ptr [esi + 0xc]    
0x408c02:  cmp      eax, 1                        
0x408c05:  jne      0x408c20                      
0x408c07:  lea      edi, [edi + edx + 1]          
0x408c0b:  cmp      edi, dword ptr [esi + 0x14]   
0x408c0e:  setae    al                            
0x408c11:  cmp      edi, dword ptr [esi + 0x28]   
0x408c14:  setbe    cl                            
0x408c17:  test     al, cl                        
0x408c19:  jne      0x408c33                      
0x408c1b:  cmp      dword ptr [esi + 0x24], edi   
0x408c1e:  jae      0x408bb5                      
0x408c20:  mov      edx, dword ptr [esi + 0x4c]   
0x408c23:  mov      ecx, dword ptr [esi + 0x20]   
0x408c26:  cmp      ecx, edx                      
0x408c28:  jne      0x408674                      
0x408c2e:  jmp      0x408521                      
0x408c33:  mov      dword ptr [esi + 0x188], 0xffffffff
0x408c3d:  push     0x5e42cc                       ; '@B^'
0x408c42:  push     4                             
0x408c44:  push     dword ptr [esi + 0x14]        
0x408c47:  push     0                             
0x408c49:  call     0x5db940                      
0x408c4e:  add      esp, 0x10                     
0x408c51:  ud2                                    
0x408c53:  nop      word ptr cs:[eax + eax]       
0x408c5d:  nop      dword ptr [eax]               
0x408c60:  push     ebp                           
0x408c61:  sub      esp, 0x10                     
0x408c64:  lea      esi, [ebp - 0x18c]            
0x408c6a:  mov      ebp, dword ptr [esi + 0x178]  
0x408c70:  mov      eax, dword ptr [esi + 0x30]   
0x408c73:  test     eax, eax                      
0x408c75:  je       0x408c85                      
0x408c77:  push     1                             
0x408c79:  push     eax                           
0x408c7a:  push     dword ptr [esi + 0x34]        
0x408c7d:  call     0x417800                      
0x408c82:  add      esp, 0xc                      
0x408c85:  add      esp, 0x10                     
0x408c88:  pop      ebp                           
0x408c89:  ret                                    
0x408c8a:  nop      word ptr [eax + eax]          
0x408c90:  push     ebp                           
0x408c91:  sub      esp, 0x10                     
0x408c94:  lea      esi, [ebp - 0x18c]            
0x408c9a:  mov      ebp, dword ptr [esi + 0x178]  
0x408ca0:  cmp      dword ptr [esi + 0xc], 0      
0x408ca4:  je       0x408cb6                      
0x408ca6:  push     1                             
0x408ca8:  push     dword ptr [esi + 0xc]         
0x408cab:  push     dword ptr [esi + 0x10]        
0x408cae:  call     0x417800                      
0x408cb3:  add      esp, 0xc                      
0x408cb6:  add      esp, 0x10                     
0x408cb9:  pop      ebp                           
0x408cba:  ret                                    
0x408cbb:  int3                                   
0x408cbc:  int3                                   
0x408cbd:  int3                                   
0x408cbe:  int3                                   
0x408cbf:  int3                                   
0x408cc0:  push     ebp                           
0x408cc1:  mov      ebp, esp                      
0x408cc3:  push     ebx                           
0x408cc4:  push     edi                           
0x408cc5:  push     esi                           
0x408cc6:  sub      esp, 0xa8                     
0x408ccc:  mov      dword ptr [ebp - 0x1c], esp   
0x408ccf:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x408cd6:  mov      dword ptr [ebp - 0x14], 0x40b790
0x408cdd:  mov      eax, dword ptr [ebp + 8]      
0x408ce0:  mov      dword ptr [ebp - 0x34], ecx   
0x408ce3:  lea      ecx, [ebp - 0x18]             
0x408ce6:  mov      esi, dword ptr fs:[0]         
0x408ced:  mov      dword ptr [ebp - 0x18], esi   
0x408cf0:  mov      dword ptr fs:[0], ecx         
0x408cf7:  mov      dword ptr [ebp - 0xb4], edx   
0x408cfd:  mov      dword ptr [ebp - 0xb0], eax   
0x408d03:  lea      eax, [ebp - 0x88]             
0x408d09:  push     eax                           
0x408d0a:  call     0x47ca20                      
0x408d0f:  add      esp, 4                        
0x408d12:  mov      eax, dword ptr [ebp - 0x84]   
0x408d18:  mov      dword ptr [ebp - 0x10], 0     
0x408d1f:  mov      dword ptr [ebp - 0x2c], eax   
0x408d22:  mov      eax, dword ptr [ebp - 0x80]   
0x408d25:  mov      dword ptr [ebp - 0x28], eax   
0x408d28:  lea      eax, [ebp - 0x70]             
0x408d2b:  push     eax                           
0x408d2c:  call     0x417aa0                      
0x408d31:  add      esp, 4                        
0x408d34:  lea      eax, [ebp - 0xb4]             
0x408d3a:  mov      dword ptr [ebp - 0x58], 0x5e3208
0x408d41:  mov      dword ptr [ebp - 0x54], 0x410900
0x408d48:  lea      ecx, [ebp - 0x58]             
0x408d4b:  mov      dword ptr [ebp - 0x50], eax   
0x408d4e:  lea      eax, [ebp - 0x70]             
0x408d51:  mov      dword ptr [ebp - 0x4c], 0x410900
0x408d58:  mov      dword ptr [ebp - 0x48], eax   
0x408d5b:  mov      dword ptr [ebp - 0x44], 0x417c70
0x408d62:  lea      eax, [ebp - 0xac]             
0x408d68:  push     ecx                           
0x408d69:  push     0x5e3e34                      
0x408d6e:  push     eax                           
0x408d6f:  call     0x486300                      
0x408d74:  add      esp, 0xc                      
0x408d77:  mov      eax, dword ptr [ebp - 0xa4]   
0x408d7d:  mov      edx, dword ptr [ebp - 0xa8]   
0x408d83:  mov      dword ptr [ebp - 0x10], 1     
0x408d8a:  lea      ecx, [ebp - 0xa0]             
0x408d90:  push     eax                           
0x408d91:  mov      dword ptr [ebp - 0x20], edx   
0x408d94:  push     edx                           
0x408d95:  push     dword ptr [ebp - 0x28]        
0x408d98:  push     dword ptr [ebp - 0x2c]        
0x408d9b:  push     ecx                           
0x408d9c:  call     0x478c50                      
0x408da1:  add      esp, 0x14                     
0x408da4:  mov      eax, dword ptr [ebp - 0xac]   
0x408daa:  test     eax, eax                      
0x408dac:  je       0x408dbc                      
0x408dae:  push     1                             
0x408db0:  push     eax                           
0x408db1:  push     dword ptr [ebp - 0x20]        
0x408db4:  call     0x417800                      
0x408db9:  add      esp, 0xc                      
0x408dbc:  mov      eax, dword ptr [ebp - 0x88]   
0x408dc2:  test     eax, eax                      
0x408dc4:  je       0x408dd4                      
0x408dc6:  push     1                             
0x408dc8:  push     eax                           
0x408dc9:  push     dword ptr [ebp - 0x2c]        
0x408dcc:  call     0x417800                      
0x408dd1:  add      esp, 0xc                      
0x408dd4:  mov      eax, dword ptr [ebp - 0x98]   
0x408dda:  mov      edx, dword ptr [ebp - 0x9c]   
0x408de0:  xorps    xmm0, xmm0                    
0x408de3:  mov      dword ptr [ebp - 0x58], 0     
0x408dea:  mov      dword ptr [ebp - 0x50], 0     
0x408df1:  mov      dword ptr [ebp - 0x4c], 0     
0x408df8:  mov      dword ptr [ebp - 0x48], 7     
0x408dff:  mov      dword ptr [ebp - 0x10], 2     
0x408e06:  lea      ecx, [ebp - 0x90]             
0x408e0c:  movsd    qword ptr [ebp - 0x3f], xmm0  
0x408e11:  movsd    qword ptr [ebp - 0x44], xmm0  
0x408e16:  mov      byte ptr [ebp - 0x3b], 1      
0x408e1a:  mov      byte ptr [ebp - 0x3f], 1      
0x408e1e:  push     eax                           
0x408e1f:  mov      dword ptr [ebp - 0x2c], edx   
0x408e22:  push     edx                           
0x408e23:  lea      eax, [ebp - 0x58]             
0x408e26:  push     eax                           
0x408e27:  push     ecx                           
0x408e28:  call     0x47b030                      
0x408e2d:  add      esp, 0x10                     
0x408e30:  cmp      byte ptr [ebp - 0x90], 0xff   
0x408e37:  lea      eax, [ebp - 0x70]             
0x408e3a:  je       0x408ed2                      
0x408e40:  mov      ecx, dword ptr [ebp - 0x90]   
0x408e46:  mov      edx, dword ptr [ebp - 0x8c]   
0x408e4c:  mov      byte ptr [ebp - 0x21], 1      
0x408e50:  mov      dword ptr [ebp - 0x10], 3     
0x408e57:  mov      dword ptr [ebp - 0x28], ecx   
0x408e5a:  mov      dword ptr [ebp - 0x20], edx   
0x408e5d:  push     eax                           
0x408e5e:  call     0x4794a0                      
0x408e63:  add      esp, 4                        
0x408e66:  mov      eax, dword ptr [ebp - 0x28]   
0x408e69:  movsd    xmm2, qword ptr [ebp - 0x70]  
0x408e6e:  movsd    xmm0, qword ptr [ebp - 0x60]  
0x408e73:  movsd    xmm1, qword ptr [ebp - 0x68]  
0x408e78:  mov      dword ptr [ebp - 0x70], 0x5e3e47
0x408e7f:  mov      dword ptr [ebp - 0x6c], 0x28  
0x408e86:  lea      ecx, [ebp - 0x70]             
0x408e89:  lea      edx, [ebp - 0x88]             
0x408e8f:  mov      byte ptr [ebp - 0x21], 0      
0x408e93:  mov      dword ptr [ebp - 0x68], eax   
0x408e96:  mov      eax, dword ptr [ebp - 0x20]   
0x408e99:  movsd    qword ptr [ebp - 0x78], xmm0  
0x408e9e:  movsd    qword ptr [ebp - 0x80], xmm1  
0x408ea3:  movsd    qword ptr [ebp - 0x88], xmm2  
0x408eab:  mov      dword ptr [ebp - 0x64], eax   
0x408eae:  call     0x5d7fe0                      
0x408eb3:  mov      ecx, dword ptr [ebp - 0x34]   
0x408eb6:  mov      dword ptr [ecx + 4], eax      
0x408eb9:  mov      dword ptr [ecx], 0xffffffff   
0x408ebf:  mov      eax, dword ptr [ebp - 0xa0]   
0x408ec5:  test     eax, eax                      
0x408ec7:  jne      0x40902a                      
0x408ecd:  jmp      0x409038                      
0x408ed2:  mov      edx, dword ptr [ebp - 0x8c]   
0x408ed8:  mov      eax, dword ptr [ebp + 0x10]   
0x408edb:  mov      ecx, dword ptr [ebp + 0xc]    
0x408ede:  mov      dword ptr [ebp - 0x10], 4     
0x408ee5:  mov      dword ptr [ebp - 0x30], edx   
0x408ee8:  lea      edx, [ebp - 0x30]             
0x408eeb:  push     eax                           
0x408eec:  push     ecx                           
0x408eed:  push     edx                           
0x408eee:  lea      eax, [ebp - 0x88]             
0x408ef4:  push     eax                           
0x408ef5:  call     0x4133d0                      
0x408efa:  add      esp, 0x10                     
0x408efd:  cmp      byte ptr [ebp - 0x88], 0xff   
0x408f04:  je       0x408f7b                      
0x408f06:  mov      eax, dword ptr [ebp - 0x88]   
0x408f0c:  mov      byte ptr [ebp - 0x22], 1      
0x408f10:  mov      dword ptr [ebp - 0x10], 6     
0x408f17:  mov      dword ptr [ebp - 0x28], eax   
0x408f1a:  mov      eax, dword ptr [ebp - 0x84]   
0x408f20:  mov      dword ptr [ebp - 0x20], eax   
0x408f23:  lea      eax, [ebp - 0x58]             
0x408f26:  push     eax                           
0x408f27:  call     0x4794a0                      
0x408f2c:  add      esp, 4                        
0x408f2f:  mov      eax, dword ptr [ebp - 0x28]   
0x408f32:  movsd    xmm2, qword ptr [ebp - 0x58]  
0x408f37:  movsd    xmm0, qword ptr [ebp - 0x48]  
0x408f3c:  movsd    xmm1, qword ptr [ebp - 0x50]  
0x408f41:  mov      dword ptr [ebp - 0x58], 0x5e3e6f
0x408f48:  mov      dword ptr [ebp - 0x54], 0x27  
0x408f4f:  lea      ecx, [ebp - 0x58]             
0x408f52:  lea      edx, [ebp - 0x70]             
0x408f55:  mov      byte ptr [ebp - 0x22], 0      
0x408f59:  mov      dword ptr [ebp - 0x50], eax   
0x408f5c:  mov      eax, dword ptr [ebp - 0x20]   
0x408f5f:  movsd    qword ptr [ebp - 0x60], xmm0  
0x408f64:  movsd    qword ptr [ebp - 0x68], xmm1  
0x408f69:  movsd    qword ptr [ebp - 0x70], xmm2  
0x408f6e:  mov      dword ptr [ebp - 0x4c], eax   
0x408f71:  call     0x5d7fe0                      
0x408f76:  jmp      0x40900b                      
0x408f7b:  lea      eax, [ebp - 0x30]             
0x408f7e:  push     eax                           
0x408f7f:  lea      eax, [ebp - 0x88]             
0x408f85:  push     eax                           
0x408f86:  call     0x478d10                      
0x408f8b:  add      esp, 8                        
0x408f8e:  cmp      byte ptr [ebp - 0x88], 0xff   
0x408f95:  je       0x40904c                      
0x408f9b:  mov      eax, dword ptr [ebp - 0x88]   
0x408fa1:  mov      byte ptr [ebp - 0x23], 1      
0x408fa5:  mov      dword ptr [ebp - 0x10], 5     
0x408fac:  mov      dword ptr [ebp - 0x28], eax   
0x408faf:  mov      eax, dword ptr [ebp - 0x84]   
0x408fb5:  mov      dword ptr [ebp - 0x20], eax   
0x408fb8:  lea      eax, [ebp - 0x58]             
0x408fbb:  push     eax                           
0x408fbc:  call     0x4794a0                      
0x408fc1:  add      esp, 4                        
0x408fc4:  mov      eax, dword ptr [ebp - 0x28]   
0x408fc7:  movsd    xmm2, qword ptr [ebp - 0x58]  
0x408fcc:  movsd    xmm0, qword ptr [ebp - 0x48]  
0x408fd1:  movsd    xmm1, qword ptr [ebp - 0x50]  
0x408fd6:  mov      dword ptr [ebp - 0x58], 0x5e3e96 ; 'could not finish writing the temporary installerupdater public keyupdater signaturethe updater public key is invalidthe updater signature is invalidthe installer updater signature did not verifykernel32.dllIsWow64Process2'
0x408fdd:  mov      dword ptr [ebp - 0x54], 0x30  
0x408fe4:  lea      ecx, [ebp - 0x58]             
0x408fe7:  lea      edx, [ebp - 0x70]             
0x408fea:  mov      byte ptr [ebp - 0x23], 0      
0x408fee:  mov      dword ptr [ebp - 0x50], eax   
0x408ff1:  mov      eax, dword ptr [ebp - 0x20]   
0x408ff4:  movsd    qword ptr [ebp - 0x60], xmm0  
0x408ff9:  movsd    qword ptr [ebp - 0x68], xmm1  
0x408ffe:  movsd    qword ptr [ebp - 0x70], xmm2  
0x409003:  mov      dword ptr [ebp - 0x4c], eax   
0x409006:  call     0x5d7fe0                      
0x40900b:  mov      ecx, dword ptr [ebp - 0x34]   
0x40900e:  mov      dword ptr [ecx + 4], eax      
0x409011:  mov      dword ptr [ecx], 0xffffffff   
0x409017:  push     dword ptr [ebp - 0x30]        
0x40901a:  call     dword ptr [0x652a0c]          
0x409020:  mov      eax, dword ptr [ebp - 0xa0]   
0x409026:  test     eax, eax                      
0x409028:  je       0x409038                      
0x40902a:  push     1                             
0x40902c:  push     eax                           
0x40902d:  push     dword ptr [ebp - 0x2c]        
0x409030:  call     0x417800                      
0x409035:  add      esp, 0xc                      
0x409038:  mov      eax, dword ptr [ebp - 0x18]   
0x40903b:  mov      dword ptr fs:[0], eax         
0x409041:  add      esp, 0xa8                     
0x409047:  pop      esi                           
0x409048:  pop      edi                           
0x409049:  pop      ebx                           
0x40904a:  pop      ebp                           
0x40904b:  ret                                    
0x40904c:  movsd    xmm0, qword ptr [ebp - 0xa0]  
0x409054:  mov      eax, dword ptr [ebp - 0x34]   
0x409057:  movsd    xmm1, qword ptr [ebp - 0x98]  
0x40905f:  movsd    qword ptr [eax + 8], xmm1     
0x409064:  movsd    qword ptr [eax], xmm0         
0x409068:  push     dword ptr [ebp - 0x30]        
0x40906b:  call     dword ptr [0x652a0c]          
0x409071:  jmp      0x409038                      
0x409073:  nop      word ptr cs:[eax + eax]       
0x40907d:  nop      dword ptr [eax]               
0x409080:  push     ebp                           
0x409081:  sub      esp, 0x14                     
0x409084:  add      ebp, 0xc                      
0x409087:  mov      eax, dword ptr [ebp - 0x88]   
0x40908d:  test     eax, eax                      
0x40908f:  je       0x40909f                      
0x409091:  push     1                             
0x409093:  push     eax                           
0x409094:  push     dword ptr [ebp - 0x2c]        
0x409097:  call     0x417800                      
0x40909c:  add      esp, 0xc                      
0x40909f:  add      esp, 0x14                     
0x4090a2:  pop      ebp                           
0x4090a3:  ret                                    
0x4090a4:  nop      word ptr cs:[eax + eax]       
0x4090ae:  nop                                    
0x4090b0:  push     ebp                           
0x4090b1:  sub      esp, 0x14                     
0x4090b4:  add      ebp, 0xc                      
0x4090b7:  mov      eax, dword ptr [ebp - 0xac]   
0x4090bd:  test     eax, eax                      
0x4090bf:  je       0x4090cf                      
0x4090c1:  push     1                             
0x4090c3:  push     eax                           
0x4090c4:  push     dword ptr [ebp - 0x20]        
0x4090c7:  call     0x417800                      
0x4090cc:  add      esp, 0xc                      
0x4090cf:  add      esp, 0x14                     
0x4090d2:  pop      ebp                           
0x4090d3:  ret                                    
0x4090d4:  nop      word ptr cs:[eax + eax]       
0x4090de:  nop                                    
0x4090e0:  push     ebp                           
0x4090e1:  sub      esp, 0x14                     
0x4090e4:  add      ebp, 0xc                      
0x4090e7:  mov      edx, dword ptr [ebp - 0x20]   
0x4090ea:  mov      ecx, dword ptr [ebp - 0x28]   
0x4090ed:  cmp      byte ptr [ebp - 0x21], 0      
0x4090f1:  je       0x4090f8                      
0x4090f3:  call     0x406d20                      
0x4090f8:  add      esp, 0x14                     
0x4090fb:  pop      ebp                           
0x4090fc:  ret                                    
0x4090fd:  nop      dword ptr [eax]               
0x409100:  push     ebp                           
0x409101:  sub      esp, 0x14                     
0x409104:  add      ebp, 0xc                      
0x409107:  push     dword ptr [ebp - 0x30]        
0x40910a:  call     dword ptr [0x652a0c]          
0x409110:  add      esp, 0x14                     
0x409113:  pop      ebp                           
0x409114:  ret                                    
0x409115:  nop      word ptr cs:[eax + eax]       
0x40911f:  nop                                    
0x409120:  push     ebp                           
0x409121:  sub      esp, 0x14                     
0x409124:  add      ebp, 0xc                      
0x409127:  mov      edx, dword ptr [ebp - 0x20]   
0x40912a:  mov      ecx, dword ptr [ebp - 0x28]   
0x40912d:  cmp      byte ptr [ebp - 0x22], 0      
0x409131:  je       0x409138                      
0x409133:  call     0x406d20                      
0x409138:  add      esp, 0x14                     
0x40913b:  pop      ebp                           
0x40913c:  ret                                    
0x40913d:  nop      dword ptr [eax]               
0x409140:  push     ebp                           
0x409141:  sub      esp, 0x14                     
0x409144:  add      ebp, 0xc                      
0x409147:  mov      edx, dword ptr [ebp - 0x20]   
0x40914a:  mov      ecx, dword ptr [ebp - 0x28]   
0x40914d:  cmp      byte ptr [ebp - 0x23], 0      
0x409151:  je       0x409158                      
0x409153:  call     0x406d20                      
0x409158:  add      esp, 0x14                     
0x40915b:  pop      ebp                           
0x40915c:  ret                                    
0x40915d:  nop      dword ptr [eax]               
0x409160:  push     ebp                           
0x409161:  sub      esp, 0x14                     
0x409164:  add      ebp, 0xc                      
0x409167:  mov      eax, dword ptr [ebp - 0xa0]   
0x40916d:  test     eax, eax                      
0x40916f:  je       0x40917f                      
0x409171:  push     1                             
0x409173:  push     eax                           
0x409174:  push     dword ptr [ebp - 0x2c]        
0x409177:  call     0x417800                      
0x40917c:  add      esp, 0xc                      
0x40917f:  add      esp, 0x14                     
0x409182:  pop      ebp                           
0x409183:  ret                                    
0x409184:  int3                                   
0x409185:  int3                                   
0x409186:  int3                                   
0x409187:  int3                                   
0x409188:  int3                                   
0x409189:  int3                                   
0x40918a:  int3                                   
0x40918b:  int3                                   
0x40918c:  int3                                   
0x40918d:  int3                                   
0x40918e:  int3                                   
0x40918f:  int3                                   
0x409190:  push     ebp                           
0x409191:  mov      ebp, esp                      
0x409193:  push     ebx                           
0x409194:  push     edi                           
0x409195:  push     esi                           
0x409196:  sub      esp, 0x1f4                    
0x40919c:  mov      dword ptr [ebp - 0x1c], esp   
0x40919f:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x4091a6:  mov      dword ptr [ebp - 0x14], 0x40b7a0
0x4091ad:  mov      ebx, edx                      
0x4091af:  mov      edx, dword ptr [ebp + 0x10]   
0x4091b2:  mov      edi, ecx                      
0x4091b4:  lea      ecx, [ebp - 0x124]            
0x4091ba:  mov      eax, dword ptr fs:[0]         
0x4091c0:  mov      dword ptr [ebp - 0x18], eax   
0x4091c3:  lea      eax, [ebp - 0x18]             
0x4091c6:  mov      dword ptr fs:[0], eax         
0x4091cc:  mov      eax, dword ptr [ebp + 0x14]   
0x4091cf:  push     0x12                          
0x4091d1:  push     0x5e3ec6                       ; 'updater public keyupdater signaturethe updater public key is invalidthe updater signature is invalidthe installer updater signature did not verifykernel32.dllIsWow64Process2'
0x4091d6:  push     eax                           
0x4091d7:  call     0x408070                      
0x4091dc:  add      esp, 0xc                      
0x4091df:  mov      eax, dword ptr [ebp - 0x124]  
0x4091e5:  mov      esi, dword ptr [ebp - 0x120]  
0x4091eb:  cmp      eax, -1                       
0x4091ee:  je       0x409345                      
0x4091f4:  mov      ecx, dword ptr [ebp - 0x11c]  
0x4091fa:  mov      dword ptr [ebp - 0x2c], eax   
0x4091fd:  mov      eax, dword ptr [ebp + 0xc]    
0x409200:  mov      edx, dword ptr [ebp + 8]      
0x409203:  mov      dword ptr [ebp - 0x24], ebx   
0x409206:  mov      dword ptr [ebp - 0x38], edi   
0x409209:  mov      dword ptr [ebp - 0x34], esi   
0x40920c:  mov      dword ptr [ebp - 0x10], 0     
0x409213:  mov      dword ptr [ebp - 0x28], ecx   
0x409216:  lea      ecx, [ebp - 0x124]            
0x40921c:  push     0x11                          
0x40921e:  push     0x5e3ed8                       ; 'updater signaturethe updater public key is invalidthe updater signature is invalidthe installer updater signature did not verifykernel32.dllIsWow64Process2'
0x409223:  push     eax                           
0x409224:  call     0x408070                      
0x409229:  add      esp, 0xc                      
0x40922c:  mov      eax, dword ptr [ebp - 0x124]  
0x409232:  mov      esi, dword ptr [ebp - 0x120]  
0x409238:  cmp      eax, -1                       
0x40923b:  je       0x40932f                      
0x409241:  mov      dword ptr [ebp - 0x30], eax   
0x409244:  mov      eax, dword ptr [ebp - 0x11c]  
0x40924a:  mov      dword ptr [ebp - 0x3c], esi   
0x40924d:  mov      dword ptr [ebp - 0x10], 1     
0x409254:  mov      dword ptr [ebp - 0x44], eax   
0x409257:  push     dword ptr [ebp - 0x28]        
0x40925a:  push     dword ptr [ebp - 0x34]        
0x40925d:  lea      eax, [ebp - 0x124]            
0x409263:  push     eax                           
0x409264:  call     0x471b80                      
0x409269:  add      esp, 0xc                      
0x40926c:  mov      eax, dword ptr [ebp - 0x124]  
0x409272:  cmp      eax, -2                       
0x409275:  jne      0x40935b                      
0x40927b:  mov      eax, dword ptr [ebp - 0x120]  
0x409281:  mov      ecx, dword ptr [ebp - 0x11c]  
0x409287:  mov      byte ptr [ebp - 0x1d], 1      
0x40928b:  mov      dword ptr [ebp - 0x10], 2     
0x409292:  mov      dword ptr [ebp - 0x28], eax   
0x409295:  mov      dword ptr [ebp - 0x80], eax   
0x409298:  lea      eax, [ebp - 0x200]            
0x40929e:  mov      dword ptr [ebp - 0x24], ecx   
0x4092a1:  mov      dword ptr [ebp - 0x7c], ecx   
0x4092a4:  push     eax                           
0x4092a5:  call     0x4794a0                      
0x4092aa:  add      esp, 4                        
0x4092ad:  mov      eax, dword ptr [ebp - 0x24]   
0x4092b0:  movsd    xmm2, qword ptr [ebp - 0x200] 
0x4092b8:  movsd    xmm0, qword ptr [ebp - 0x1f0] 
0x4092c0:  movsd    xmm1, qword ptr [ebp - 0x1f8] 
0x4092c8:  mov      dword ptr [ebp - 0x200], 0x5e3ee9 ; 'the updater public key is invalidthe updater signature is invalidthe installer updater signature did not verifykernel32.dllIsWow64Process2'
0x4092d2:  mov      dword ptr [ebp - 0x1fc], 0x21 
0x4092dc:  lea      ecx, [ebp - 0x200]            
0x4092e2:  lea      edx, [ebp - 0x64]             
0x4092e5:  mov      byte ptr [ebp - 0x1d], 0      
0x4092e9:  mov      dword ptr [ebp - 0x1f4], eax  
0x4092ef:  mov      eax, dword ptr [ebp - 0x28]   
0x4092f2:  movsd    qword ptr [ebp - 0x54], xmm0  
0x4092f7:  movsd    qword ptr [ebp - 0x5c], xmm1  
0x4092fc:  movsd    qword ptr [ebp - 0x64], xmm2  
0x409301:  mov      dword ptr [ebp - 0x1f8], eax  
0x409307:  call     0x5d7c10                      
0x40930c:  mov      esi, eax                      
0x40930e:  mov      eax, dword ptr [ebp - 0x30]   
0x409311:  mov      edi, dword ptr [ebp - 0x2c]   
0x409314:  test     eax, eax                      
0x409316:  je       0x409326                      
0x409318:  push     1                             
0x40931a:  push     eax                           
0x40931b:  push     dword ptr [ebp - 0x3c]        
0x40931e:  call     0x417800                      
0x409323:  add      esp, 0xc                      
0x409326:  mov      eax, dword ptr [ebp - 0x34]   
0x409329:  test     edi, edi                      
0x40932b:  jne      0x409339                      
0x40932d:  jmp      0x409345                      
0x40932f:  mov      eax, dword ptr [ebp - 0x34]   
0x409332:  mov      edi, dword ptr [ebp - 0x2c]   
0x409335:  test     edi, edi                      
0x409337:  je       0x409345                      
0x409339:  push     1                             
0x40933b:  push     edi                           
0x40933c:  push     eax                           
0x40933d:  call     0x417800                      
0x409342:  add      esp, 0xc                      
0x409345:  mov      eax, dword ptr [ebp - 0x18]   
0x409348:  mov      dword ptr fs:[0], eax         
0x40934e:  mov      eax, esi                      
0x409350:  add      esp, 0x1f4                    
0x409356:  pop      esi                           
0x409357:  pop      edi                           
0x409358:  pop      ebx                           
0x409359:  pop      ebp                           
0x40935a:  ret                                    
0x40935b:  movsd    xmm1, qword ptr [ebp - 0x114] 
0x409363:  movsd    xmm2, qword ptr [ebp - 0x10c] 
0x40936b:  mov      ecx, dword ptr [ebp - 0x120]  
0x409371:  movsd    xmm0, qword ptr [ebp - 0x11c] 
0x409379:  mov      dword ptr [ebp - 0x28], eax   
0x40937c:  mov      dword ptr [ebp - 0x10], 3     
0x409383:  movsd    qword ptr [ebp - 0x14c], xmm1 
0x40938b:  movsd    xmm1, qword ptr [ebp - 0x104] 
0x409393:  movsd    qword ptr [ebp - 0x144], xmm2 
0x40939b:  movsd    xmm2, qword ptr [ebp - 0xfc]  
0x4093a3:  movsd    qword ptr [ebp - 0x154], xmm0 
0x4093ab:  mov      dword ptr [ebp - 0x40], ecx   
0x4093ae:  movsd    qword ptr [ebp - 0x13c], xmm1 
0x4093b6:  movsd    xmm1, qword ptr [ebp - 0xf4]  
0x4093be:  movsd    qword ptr [ebp - 0x134], xmm2 
0x4093c6:  movsd    qword ptr [ebp - 0x12c], xmm1 
0x4093ce:  mov      dword ptr [ebp - 0x15c], eax  
0x4093d4:  mov      dword ptr [ebp - 0x158], ecx  
0x4093da:  push     dword ptr [ebp - 0x44]        
0x4093dd:  push     dword ptr [ebp - 0x3c]        
0x4093e0:  lea      eax, [ebp - 0x124]            
0x4093e6:  push     eax                           
0x4093e7:  call     0x471340                      
0x4093ec:  add      esp, 0xc                      
0x4093ef:  mov      ebx, dword ptr [ebp - 0x124]  
0x4093f5:  mov      edi, dword ptr [ebp - 0x24]   
0x4093f8:  cmp      ebx, -1                       
0x4093fb:  je       0x4094f7                      
0x409401:  mov      esi, dword ptr [ebp - 0x120]  
0x409407:  lea      eax, [ebp - 0x11c]            
0x40940d:  lea      ecx, [ebp - 0x1f8]            
0x409413:  push     0x9c                          
0x409418:  push     eax                           
0x409419:  push     ecx                           
0x40941a:  call     0x5cf3c0                      
0x40941f:  add      esp, 0xc                      
0x409422:  mov      dword ptr [ebp - 0x200], ebx  
0x409428:  mov      dword ptr [ebp - 0x44], ebx   
0x40942b:  mov      dword ptr [ebp - 0x68], esi   
0x40942e:  mov      dword ptr [ebp - 0x1fc], esi  
0x409434:  mov      dword ptr [ebp - 0x10], 5     
0x40943b:  lea      eax, [ebp - 0x200]            
0x409441:  lea      ecx, [ebp - 0x15c]            
0x409447:  lea      edx, [ebp - 0x4c]             
0x40944a:  push     1                             
0x40944c:  push     eax                           
0x40944d:  push     edi                           
0x40944e:  push     dword ptr [ebp - 0x38]        
0x409451:  push     ecx                           
0x409452:  push     edx                           
0x409453:  call     0x471dd0                      
0x409458:  add      esp, 0x18                     
0x40945b:  cmp      byte ptr [ebp - 0x4c], 0xff   
0x40945f:  je       0x40958d                      
0x409465:  mov      eax, dword ptr [ebp - 0x4c]   
0x409468:  mov      ecx, dword ptr [ebp - 0x48]   
0x40946b:  mov      byte ptr [ebp - 0x1f], 1      
0x40946f:  mov      dword ptr [ebp - 0x10], 6     
0x409476:  mov      dword ptr [ebp - 0x24], eax   
0x409479:  mov      dword ptr [ebp - 0x80], eax   
0x40947c:  lea      eax, [ebp - 0x124]            
0x409482:  mov      dword ptr [ebp - 0x38], ecx   
0x409485:  mov      dword ptr [ebp - 0x7c], ecx   
0x409488:  push     eax                           
0x409489:  call     0x4794a0                      
0x40948e:  add      esp, 4                        
0x409491:  mov      eax, dword ptr [ebp - 0x38]   
0x409494:  movsd    xmm2, qword ptr [ebp - 0x124] 
0x40949c:  movsd    xmm0, qword ptr [ebp - 0x114] 
0x4094a4:  movsd    xmm1, qword ptr [ebp - 0x11c] 
0x4094ac:  mov      dword ptr [ebp - 0x124], 0x5e3f2a ; 'the installer updater signature did not verifykernel32.dllIsWow64Process2'
0x4094b6:  mov      dword ptr [ebp - 0x120], 0x2e 
0x4094c0:  lea      ecx, [ebp - 0x124]            
0x4094c6:  lea      edx, [ebp - 0x64]             
0x4094c9:  mov      byte ptr [ebp - 0x1f], 0      
0x4094cd:  mov      dword ptr [ebp - 0x118], eax  
0x4094d3:  mov      eax, dword ptr [ebp - 0x24]   
0x4094d6:  movsd    qword ptr [ebp - 0x54], xmm0  
0x4094db:  movsd    qword ptr [ebp - 0x5c], xmm1  
0x4094e0:  movsd    qword ptr [ebp - 0x64], xmm2  
0x4094e5:  mov      dword ptr [ebp - 0x11c], eax  
0x4094eb:  call     0x5d7c10                      
0x4094f0:  mov      esi, eax                      
0x4094f2:  jmp      0x40958f                      
0x4094f7:  mov      eax, dword ptr [ebp - 0x120]  