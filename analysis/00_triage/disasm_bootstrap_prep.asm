0x407500:  pop      ebp                           
0x407501:  ret                                    
0x407502:  int3                                   
0x407503:  int3                                   
0x407504:  int3                                   
0x407505:  int3                                   
0x407506:  int3                                   
0x407507:  int3                                   
0x407508:  int3                                   
0x407509:  int3                                   
0x40750a:  int3                                   
0x40750b:  int3                                   
0x40750c:  int3                                   
0x40750d:  int3                                   
0x40750e:  int3                                   
0x40750f:  int3                                   
0x407510:  push     ebp                           
0x407511:  mov      ebp, esp                      
0x407513:  push     ebx                           
0x407514:  push     edi                           
0x407515:  push     esi                           
0x407516:  sub      esp, 0x24                     
0x407519:  mov      dword ptr [ebp - 0x1c], esp   
0x40751c:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x407523:  mov      dword ptr [ebp - 0x14], 0x40b730
0x40752a:  mov      esi, ecx                      
0x40752c:  lea      eax, [ebp - 0x18]             
0x40752f:  mov      ecx, dword ptr fs:[0]         
0x407536:  mov      dword ptr [ebp - 0x18], ecx   
0x407539:  mov      dword ptr fs:[0], eax         
0x40753f:  mov      eax, dword ptr [esi + 0x1c]   
0x407542:  test     eax, eax                      
0x407544:  je       0x407557                      
0x407546:  shl      eax, 2                        
0x407549:  push     2                             
0x40754b:  push     eax                           
0x40754c:  push     dword ptr [esi + 0x18]        
0x40754f:  call     0x417800                      
0x407554:  add      esp, 0xc                      
0x407557:  mov      eax, dword ptr [esi + 0x24]   
0x40755a:  mov      ecx, dword ptr [esi + 0x28]   
0x40755d:  mov      dword ptr [ebp - 0x2c], esi   
0x407560:  mov      dword ptr [ebp - 0x28], 0     
0x407567:  mov      dword ptr [ebp - 0x20], eax   
0x40756a:  mov      dword ptr [ebp - 0x30], ecx   
0x40756d:  jmp      0x407591                      
0x40756f:  nop                                    
0x407570:  mov      esi, dword ptr [ebp - 0x24]   
0x407573:  mov      ecx, dword ptr [esi + 0xc]    
0x407576:  mov      eax, dword ptr [esi + 0x18]   
0x407579:  mov      edx, dword ptr [esi + 0x10]   
0x40757c:  mov      esi, dword ptr [esi + 0x14]   
0x40757f:  mov      ecx, dword ptr [ecx + 0x10]   
0x407582:  mov      dword ptr [ebp - 0x10], 1     
0x407589:  push     esi                           
0x40758a:  push     edx                           
0x40758b:  push     eax                           
0x40758c:  call     ecx                           
0x40758e:  add      esp, 0xc                      
0x407591:  mov      edx, dword ptr [ebp - 0x28]   
0x407594:  cmp      edx, dword ptr [ebp - 0x30]   
0x407597:  je       0x4075d1                      
0x407599:  mov      ecx, dword ptr [ebp - 0x20]   
0x40759c:  imul     eax, edx, 0x34                
0x40759f:  inc      edx                           
0x4075a0:  mov      dword ptr [ebp - 0x28], edx   
0x4075a3:  lea      esi, [ecx + eax]              
0x4075a6:  mov      eax, dword ptr [ecx + eax + 0x20]
0x4075aa:  mov      dword ptr [ebp - 0x24], esi   
0x4075ad:  test     eax, eax                      
0x4075af:  je       0x407570                      
0x4075b1:  mov      esi, dword ptr [ebp - 0x24]   
0x4075b4:  mov      eax, dword ptr [eax + 0x10]   
0x4075b7:  mov      ecx, dword ptr [esi + 0x2c]   
0x4075ba:  mov      edx, dword ptr [esi + 0x24]   
0x4075bd:  mov      esi, dword ptr [esi + 0x28]   
0x4075c0:  mov      dword ptr [ebp - 0x10], 2     
0x4075c7:  push     esi                           
0x4075c8:  push     edx                           
0x4075c9:  push     ecx                           
0x4075ca:  call     eax                           
0x4075cc:  add      esp, 0xc                      
0x4075cf:  jmp      0x407570                      
0x4075d1:  mov      esi, dword ptr [ebp - 0x2c]   
0x4075d4:  mov      eax, dword ptr [esi + 0x20]   
0x4075d7:  test     eax, eax                      
0x4075d9:  je       0x4075ec                      
0x4075db:  imul     eax, eax, 0x34                
0x4075de:  push     4                             
0x4075e0:  push     eax                           
0x4075e1:  push     dword ptr [ebp - 0x20]        
0x4075e4:  call     0x417800                      
0x4075e9:  add      esp, 0xc                      
0x4075ec:  mov      eax, dword ptr [esi + 0x30]   
0x4075ef:  mov      ecx, dword ptr [esi + 0x34]   
0x4075f2:  mov      dword ptr [ebp - 0x24], 0     
0x4075f9:  mov      dword ptr [ebp - 0x20], eax   
0x4075fc:  add      eax, 0x1c                     
0x4075ff:  mov      dword ptr [ebp - 0x30], ecx   
0x407602:  mov      dword ptr [ebp - 0x28], eax   
0x407605:  nop      word ptr cs:[eax + eax]       
0x40760f:  nop                                    
0x407610:  mov      eax, dword ptr [ebp - 0x24]   
0x407613:  cmp      dword ptr [ebp - 0x30], eax   
0x407616:  je       0x407644                      
0x407618:  mov      ebx, dword ptr [ebp - 0x28]   
0x40761b:  inc      eax                           
0x40761c:  mov      dword ptr [ebp - 0x24], eax   
0x40761f:  mov      ecx, dword ptr [ebx - 0xc]    
0x407622:  mov      esi, dword ptr [ebx - 4]      
0x407625:  mov      eax, dword ptr [ebx]          
0x407627:  mov      edx, dword ptr [ebx - 8]      
0x40762a:  add      ebx, 0x24                     
0x40762d:  mov      dword ptr [ebp - 0x28], ebx   
0x407630:  mov      ecx, dword ptr [ecx + 0x10]   
0x407633:  mov      dword ptr [ebp - 0x10], 4     
0x40763a:  push     esi                           
0x40763b:  push     edx                           
0x40763c:  push     eax                           
0x40763d:  call     ecx                           
0x40763f:  add      esp, 0xc                      
0x407642:  jmp      0x407610                      
0x407644:  mov      eax, dword ptr [ebp - 0x2c]   
0x407647:  mov      eax, dword ptr [eax + 0x2c]   
0x40764a:  test     eax, eax                      
0x40764c:  je       0x407662                      
0x40764e:  shl      eax, 2                        
0x407651:  lea      eax, [eax + eax*8]            
0x407654:  push     4                             
0x407656:  push     eax                           
0x407657:  push     dword ptr [ebp - 0x20]        
0x40765a:  call     0x417800                      
0x40765f:  add      esp, 0xc                      
0x407662:  mov      eax, dword ptr [ebp - 0x18]   
0x407665:  mov      dword ptr fs:[0], eax         
0x40766b:  add      esp, 0x24                     
0x40766e:  pop      esi                           
0x40766f:  pop      edi                           
0x407670:  pop      ebx                           
0x407671:  pop      ebp                           
0x407672:  ret                                    
0x407673:  nop      word ptr cs:[eax + eax]       
0x40767d:  nop      dword ptr [eax]               
0x407680:  push     ebp                           
0x407681:  sub      esp, 0xc                      
0x407684:  add      ebp, 0xc                      
0x407687:  mov      edi, dword ptr [ebp - 0x30]   
0x40768a:  mov      ebx, dword ptr [ebp - 0x28]   
0x40768d:  mov      esi, dword ptr [ebp - 0x20]   
0x407690:  cmp      ebx, edi                      
0x407692:  je       0x4076af                      
0x407694:  nop      word ptr cs:[eax + eax]       
0x40769e:  nop                                    
0x4076a0:  imul     ecx, ebx, 0x34                
0x4076a3:  add      ecx, esi                      
0x4076a5:  call     0x410eb0                      
0x4076aa:  inc      ebx                           
0x4076ab:  cmp      ebx, edi                      
0x4076ad:  jne      0x4076a0                      
0x4076af:  add      esp, 0xc                      
0x4076b2:  pop      ebp                           
0x4076b3:  ret                                    
0x4076b4:  nop      word ptr cs:[eax + eax]       
0x4076be:  nop                                    
0x4076c0:  push     ebp                           
0x4076c1:  sub      esp, 0xc                      
0x4076c4:  add      ebp, 0xc                      
0x4076c7:  mov      eax, dword ptr [ebp - 0x2c]   
0x4076ca:  mov      eax, dword ptr [eax + 0x20]   
0x4076cd:  test     eax, eax                      
0x4076cf:  je       0x4076e2                      
0x4076d1:  imul     eax, eax, 0x34                
0x4076d4:  push     4                             
0x4076d6:  push     eax                           
0x4076d7:  push     dword ptr [ebp - 0x20]        
0x4076da:  call     0x417800                      
0x4076df:  add      esp, 0xc                      
0x4076e2:  mov      ecx, dword ptr [ebp - 0x2c]   
0x4076e5:  add      ecx, 0x2c                     
0x4076e8:  call     0x406680                      
0x4076ed:  add      esp, 0xc                      
0x4076f0:  pop      ebp                           
0x4076f1:  ret                                    
0x4076f2:  nop      word ptr cs:[eax + eax]       
0x4076fc:  nop      dword ptr [eax]               
0x407700:  push     ebp                           
0x407701:  sub      esp, 0xc                      
0x407704:  add      ebp, 0xc                      
0x407707:  mov      edi, dword ptr [ebp - 0x30]   
0x40770a:  mov      ebx, dword ptr [ebp - 0x24]   
0x40770d:  mov      esi, dword ptr [ebp - 0x20]   
0x407710:  cmp      edi, ebx                      
0x407712:  je       0x40773e                      
0x407714:  nop      word ptr cs:[eax + eax]       
0x40771e:  nop                                    
0x407720:  lea      eax, [ebx + ebx*8]            
0x407723:  mov      ecx, dword ptr [esi + eax*4 + 0x10]
0x407727:  push     dword ptr [esi + eax*4 + 0x18]
0x40772b:  push     dword ptr [esi + eax*4 + 0x14]
0x40772f:  push     dword ptr [esi + eax*4 + 0x1c]
0x407733:  call     dword ptr [ecx + 0x10]        
0x407736:  add      esp, 0xc                      
0x407739:  inc      ebx                           
0x40773a:  cmp      ebx, edi                      
0x40773c:  jne      0x407720                      
0x40773e:  add      esp, 0xc                      
0x407741:  pop      ebp                           
0x407742:  ret                                    
0x407743:  nop      word ptr cs:[eax + eax]       
0x40774d:  nop      dword ptr [eax]               
0x407750:  push     ebp                           
0x407751:  sub      esp, 0xc                      
0x407754:  add      ebp, 0xc                      
0x407757:  mov      eax, dword ptr [ebp - 0x2c]   
0x40775a:  mov      eax, dword ptr [eax + 0x2c]   
0x40775d:  test     eax, eax                      
0x40775f:  je       0x407775                      
0x407761:  shl      eax, 2                        
0x407764:  lea      eax, [eax + eax*8]            
0x407767:  push     4                             
0x407769:  push     eax                           
0x40776a:  push     dword ptr [ebp - 0x20]        
0x40776d:  call     0x417800                      
0x407772:  add      esp, 0xc                      
0x407775:  add      esp, 0xc                      
0x407778:  pop      ebp                           
0x407779:  ret                                    
0x40777a:  nop      word ptr [eax + eax]          
0x407780:  push     ebp                           
0x407781:  sub      esp, 0xc                      
0x407784:  add      ebp, 0xc                      
0x407787:  mov      ecx, dword ptr [ebp - 0x24]   
0x40778a:  mov      eax, dword ptr [ecx + 0xc]    
0x40778d:  push     dword ptr [ecx + 0x14]        
0x407790:  push     dword ptr [ecx + 0x10]        
0x407793:  push     dword ptr [ecx + 0x18]        
0x407796:  call     dword ptr [eax + 0x10]        
0x407799:  add      esp, 0x18                     
0x40779c:  pop      ebp                           
0x40779d:  ret                                    
0x40779e:  int3                                   
0x40779f:  int3                                   
0x4077a0:  cmp      byte ptr [ecx], 0             
0x4077a3:  lea      eax, [ecx + 4]                
0x4077a6:  je       0x4077b7                      
0x4077a8:  mov      ecx, dword ptr [eax]          
0x4077aa:  lock dec dword ptr [ecx]               
0x4077ad:  jne      0x4077c7                      
0x4077af:  push     eax                           
0x4077b0:  call     0x45eb20                      
0x4077b5:  jmp      0x4077c4                      
0x4077b7:  mov      ecx, dword ptr [eax]          
0x4077b9:  lock dec dword ptr [ecx]               
0x4077bc:  jne      0x4077c7                      
0x4077be:  push     eax                           
0x4077bf:  call     0x45e6c0                      
0x4077c4:  add      esp, 4                        
0x4077c7:  ret                                    
0x4077c8:  int3                                   
0x4077c9:  int3                                   
0x4077ca:  int3                                   
0x4077cb:  int3                                   
0x4077cc:  int3                                   
0x4077cd:  int3                                   
0x4077ce:  int3                                   
0x4077cf:  int3                                   
0x4077d0:  push     ebp                           
0x4077d1:  push     ebx                           
0x4077d2:  push     edi                           
0x4077d3:  push     esi                           
0x4077d4:  sub      esp, 0x20                     
0x4077d7:  cmp      byte ptr [ecx + 0x25], 0      
0x4077db:  mov      dword ptr [esp], 0            
0x4077e2:  je       0x4077e9                      
0x4077e4:  jmp      0x407966                      
0x4077e9:  cmp      byte ptr [ecx + 0x24], 0      
0x4077ed:  mov      esi, ecx                      
0x4077ef:  je       0x4078d5                      
0x4077f5:  mov      edi, dword ptr [esi + 0xc]    
0x4077f8:  mov      edx, dword ptr [esi + 0x10]   
0x4077fb:  mov      eax, dword ptr [esi + 4]      
0x4077fe:  mov      ecx, dword ptr [esi + 8]      
0x407801:  cmp      edx, edi                      
0x407803:  mov      dword ptr [esp], eax          
0x407806:  mov      dword ptr [esp + 8], ecx      
0x40780a:  setb     al                            
0x40780d:  cmp      edx, ecx                      
0x40780f:  seta     cl                            
0x407812:  or       cl, al                        
0x407814:  jne      0x407957                      
0x40781a:  movzx    ecx, byte ptr [esi + 0x18]    
0x40781e:  mov      eax, dword ptr [esp]          
0x407821:  lea      ebx, [esi + 0x14]             
0x407824:  mov      dword ptr [esp + 0xc], edi    
0x407828:  mov      dword ptr [esp + 0x18], ebx   
0x40782c:  add      eax, edi                      
0x40782e:  lea      ebp, [ecx - 1]                
0x407831:  cmp      ecx, 5                        
0x407834:  mov      dword ptr [esp + 4], ecx      
0x407838:  mov      dword ptr [esp + 0x14], eax   
0x40783c:  jae      0x407938                      
0x407842:  mov      dword ptr [esp + 0x10], esi   
0x407846:  nop      word ptr cs:[eax + eax]       
0x407850:  mov      eax, dword ptr [esp + 0x18]   
0x407854:  sub      edx, edi                      
0x407856:  movzx    eax, byte ptr [eax + ebp]     
0x40785a:  push     edx                           
0x40785b:  push     dword ptr [esp + 0x18]        
0x40785f:  push     eax                           
0x407860:  call     0x48b560                      
0x407865:  add      esp, 0xc                      
0x407868:  cmp      eax, 1                        
0x40786b:  jne      0x407954                      
0x407871:  add      edx, edi                      
0x407873:  mov      ebx, ebp                      
0x407875:  mov      esi, edx                      
0x407877:  sub      esi, ebp                      
0x407879:  jb       0x4078b9                      
0x40787b:  mov      ebp, esi                      
0x40787d:  mov      edi, dword ptr [esp + 0xc]    
0x407881:  add      ebp, dword ptr [esp + 4]      
0x407885:  setb     al                            
0x407888:  cmp      ebp, dword ptr [esp + 8]      
0x40788c:  seta     cl                            
0x40788f:  or       cl, al                        
0x407891:  jne      0x4078b9                      
0x407893:  mov      eax, dword ptr [esp]          
0x407896:  add      eax, esi                      
0x407898:  push     dword ptr [esp + 4]           
0x40789c:  push     dword ptr [esp + 0x1c]        
0x4078a0:  push     eax                           
0x4078a1:  mov      dword ptr [esp + 0x28], edx   
0x4078a5:  call     0x5cd6d0                      
0x4078aa:  mov      edi, dword ptr [esp + 0x18]   
0x4078ae:  mov      edx, dword ptr [esp + 0x28]   
0x4078b2:  add      esp, 0xc                      
0x4078b5:  test     eax, eax                      
0x4078b7:  je       0x4078f9                      
0x4078b9:  mov      esi, dword ptr [esp + 0x10]   
0x4078bd:  cmp      edx, edi                      
0x4078bf:  mov      dword ptr [esi + 0x10], edx   
0x4078c2:  jb       0x407957                      
0x4078c8:  cmp      edx, dword ptr [esp + 8]      
0x4078cc:  mov      ebp, ebx                      
0x4078ce:  jbe      0x407850                      
0x4078d0:  jmp      0x407957                      
0x4078d5:  mov      ecx, esi                      
0x4078d7:  mov      byte ptr [esi + 0x24], 1      
0x4078db:  call     0x4077d0                      
0x4078e0:  test     eax, eax                      
0x4078e2:  je       0x4078ed                      
0x4078e4:  test     edx, edx                      
0x4078e6:  je       0x4078ed                      
0x4078e8:  mov      dword ptr [esp], eax          
0x4078eb:  jmp      0x407966                      
0x4078ed:  cmp      byte ptr [esi + 0x25], 1      
0x4078f1:  jne      0x4077f5                      
0x4078f7:  jmp      0x407966                      
0x4078f9:  mov      edi, dword ptr [esp + 0x10]   
0x4078fd:  add      dword ptr [esp], ebp          
0x407900:  mov      dword ptr [edi + 0x10], esi   
0x407903:  mov      edx, dword ptr [edi + 0x20]   
0x407906:  mov      dword ptr [edi + 0x20], esi   
0x407909:  sub      edx, ebp                      
0x40790b:  jmp      0x407966                      
0x40790d:  add      edx, edi                      
0x40790f:  mov      eax, edx                      
0x407911:  sub      eax, ebp                      
0x407913:  jb       0x40792b                      
0x407915:  add      eax, dword ptr [esp + 4]      
0x407919:  mov      edi, dword ptr [esp + 0xc]    
0x40791d:  setb     cl                            
0x407920:  cmp      eax, dword ptr [esp + 8]      
0x407924:  seta     al                            
0x407927:  or       al, cl                        
0x407929:  je       0x407971                      
0x40792b:  cmp      edx, edi                      
0x40792d:  mov      dword ptr [esi + 0x10], edx   
0x407930:  jb       0x407957                      
0x407932:  cmp      edx, dword ptr [esp + 8]      
0x407936:  ja       0x407957                      
0x407938:  lea      eax, [esi + 0x14]             
0x40793b:  sub      edx, edi                      
0x40793d:  movzx    eax, byte ptr [eax + ebp]     
0x407941:  push     edx                           
0x407942:  push     dword ptr [esp + 0x18]        
0x407946:  push     eax                           
0x407947:  call     0x48b560                      
0x40794c:  add      esp, 0xc                      
0x40794f:  cmp      eax, 1                        
0x407952:  je       0x40790d                      
0x407954:  mov      dword ptr [esi + 0x10], edi   
0x407957:  mov      byte ptr [esi + 0x25], 1      
0x40795b:  mov      eax, dword ptr [esi + 0x1c]   
0x40795e:  mov      edx, dword ptr [esi + 0x20]   
0x407961:  add      dword ptr [esp], eax          
0x407964:  sub      edx, eax                      
0x407966:  mov      eax, dword ptr [esp]          
0x407969:  add      esp, 0x20                     
0x40796c:  pop      esi                           
0x40796d:  pop      edi                           
0x40796e:  pop      ebx                           
0x40796f:  pop      ebp                           
0x407970:  ret                                    
0x407971:  push     0x5e4290                       ; '@B^'
0x407976:  push     4                             
0x407978:  push     dword ptr [esp + 0xc]         
0x40797c:  push     0                             
0x40797e:  call     0x5db940                      
0x407983:  add      esp, 0x10                     
0x407986:  ud2                                    
0x407988:  int3                                   
0x407989:  int3                                   
0x40798a:  int3                                   
0x40798b:  int3                                   
0x40798c:  int3                                   
0x40798d:  int3                                   
0x40798e:  int3                                   
0x40798f:  int3                                   
0x407990:  push     ebp                           
0x407991:  mov      ebp, esp                      
0x407993:  push     ebx                           
0x407994:  push     edi                           
0x407995:  push     esi                           
0x407996:  sub      esp, 0x40                     
0x407999:  mov      dword ptr [ebp - 0x1c], esp   
0x40799c:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x4079a3:  mov      dword ptr [ebp - 0x14], 0x40b740
0x4079aa:  lea      eax, [ebp - 0x18]             
0x4079ad:  lea      esi, [ebp - 0x30]             
0x4079b0:  mov      ecx, dword ptr fs:[0]         
0x4079b7:  mov      dword ptr [ebp - 0x18], ecx   
0x4079ba:  mov      dword ptr fs:[0], eax         
0x4079c0:  lea      eax, [ebp + 8]                
0x4079c3:  mov      dword ptr [ebp - 0x30], 0x5e3208
0x4079ca:  mov      dword ptr [ebp - 0x2c], 0x410900
0x4079d1:  mov      dword ptr [ebp - 0x28], eax   
0x4079d4:  mov      dword ptr [ebp - 0x24], 0x40d790
0x4079db:  lea      eax, [ebp - 0x3c]             
0x4079de:  push     esi                           
0x4079df:  push     0x5e3210                      
0x4079e4:  push     eax                           
0x4079e5:  call     0x486300                      
0x4079ea:  add      esp, 0xc                      
0x4079ed:  mov      ecx, dword ptr [ebp - 0x38]   
0x4079f0:  mov      eax, dword ptr [ebp - 0x34]   
0x4079f3:  mov      dword ptr [ebp - 0x10], 0     
0x4079fa:  add      eax, ecx                      
0x4079fc:  mov      dword ptr [ebp - 0x2c], ecx   
0x4079ff:  mov      dword ptr [ebp - 0x20], ecx   
0x407a02:  mov      dword ptr [ebp - 0x28], eax   
0x407a05:  mov      word ptr [ebp - 0x24], 0      
0x407a0b:  mov      dword ptr [ebp - 0x30], 1     
0x407a12:  lea      eax, [ebp - 0x4c]             
0x407a15:  push     esi                           
0x407a16:  push     eax                           
0x407a17:  call     0x412040                      
0x407a1c:  add      esp, 8                        
0x407a1f:  mov      eax, dword ptr [ebp - 0x3c]   
0x407a22:  test     eax, eax                      
0x407a24:  je       0x407a34                      
0x407a26:  push     1                             
0x407a28:  push     eax                           
0x407a29:  push     dword ptr [ebp - 0x20]        
0x407a2c:  call     0x417800                      
0x407a31:  add      esp, 0xc                      
0x407a34:  lea      eax, [ebp - 0x3c]             
0x407a37:  mov      dword ptr [ebp - 0x3c], 0x5e3208
0x407a3e:  mov      dword ptr [ebp - 0x38], 0x410900
0x407a45:  mov      dword ptr [ebp - 0x10], 1     
0x407a4c:  push     eax                           
0x407a4d:  push     0x5e3232                      
0x407a52:  lea      eax, [ebp - 0x30]             
0x407a55:  push     eax                           
0x407a56:  call     0x486300                      
0x407a5b:  add      esp, 0xc                      
0x407a5e:  mov      eax, dword ptr [ebp - 0x30]   
0x407a61:  mov      ecx, dword ptr [ebp - 0x2c]   
0x407a64:  mov      dword ptr [ebp - 0x10], 2     
0x407a6b:  mov      dword ptr [ebp - 0x20], eax   
0x407a6e:  mov      eax, dword ptr [ebp - 0x28]   
0x407a71:  mov      dword ptr [ebp - 0x2c], ecx   
0x407a74:  mov      dword ptr [ebp - 0x40], ecx   
0x407a77:  add      eax, ecx                      
0x407a79:  mov      dword ptr [ebp - 0x28], eax   
0x407a7c:  lea      eax, [ebp - 0x30]             
0x407a7f:  mov      word ptr [ebp - 0x24], 0      
0x407a85:  mov      dword ptr [ebp - 0x30], 1     
0x407a8c:  push     eax                           
0x407a8d:  lea      eax, [ebp - 0x3c]             
0x407a90:  push     eax                           
0x407a91:  call     0x412040                      
0x407a96:  add      esp, 8                        
0x407a99:  mov      eax, dword ptr [ebp - 0x20]   
0x407a9c:  test     eax, eax                      
0x407a9e:  je       0x407aae                      
0x407aa0:  push     1                             
0x407aa2:  push     eax                           
0x407aa3:  push     dword ptr [ebp - 0x40]        
0x407aa6:  call     0x417800                      
0x407aab:  add      esp, 0xc                      
0x407aae:  mov      esi, dword ptr [ebp - 0x48]   
0x407ab1:  mov      edi, dword ptr [ebp - 0x38]   
0x407ab4:  push     0x10                          
0x407ab6:  push     edi                           
0x407ab7:  push     esi                           
0x407ab8:  push     0                             
0x407aba:  call     dword ptr [0x652b98]          
0x407ac0:  mov      eax, dword ptr [ebp - 0x3c]   
0x407ac3:  test     eax, eax                      
0x407ac5:  je       0x407ad5                      
0x407ac7:  add      eax, eax                      
0x407ac9:  push     2                             
0x407acb:  push     eax                           
0x407acc:  push     edi                           
0x407acd:  call     0x417800                      
0x407ad2:  add      esp, 0xc                      
0x407ad5:  mov      eax, dword ptr [ebp - 0x4c]   
0x407ad8:  test     eax, eax                      
0x407ada:  je       0x407aea                      
0x407adc:  add      eax, eax                      
0x407ade:  push     2                             
0x407ae0:  push     eax                           
0x407ae1:  push     esi                           
0x407ae2:  call     0x417800                      
0x407ae7:  add      esp, 0xc                      
0x407aea:  mov      eax, dword ptr [ebp - 0x18]   
0x407aed:  mov      dword ptr fs:[0], eax         
0x407af3:  add      esp, 0x40                     
0x407af6:  pop      esi                           
0x407af7:  pop      edi                           
0x407af8:  pop      ebx                           
0x407af9:  pop      ebp                           
0x407afa:  ret                                    
0x407afb:  nop      dword ptr [eax + eax]         
0x407b00:  push     ebp                           
0x407b01:  sub      esp, 0x10                     
0x407b04:  add      ebp, 0xc                      
0x407b07:  mov      eax, dword ptr [ebp - 0x3c]   
0x407b0a:  test     eax, eax                      
0x407b0c:  je       0x407b1c                      
0x407b0e:  push     1                             
0x407b10:  push     eax                           
0x407b11:  push     dword ptr [ebp - 0x20]        
0x407b14:  call     0x417800                      
0x407b19:  add      esp, 0xc                      
0x407b1c:  add      esp, 0x10                     
0x407b1f:  pop      ebp                           
0x407b20:  ret                                    
0x407b21:  nop      word ptr cs:[eax + eax]       
0x407b2b:  nop      dword ptr [eax + eax]         
0x407b30:  push     ebp                           
0x407b31:  sub      esp, 0x10                     
0x407b34:  add      ebp, 0xc                      
0x407b37:  mov      eax, dword ptr [ebp - 0x4c]   
0x407b3a:  test     eax, eax                      
0x407b3c:  je       0x407b4e                      
0x407b3e:  add      eax, eax                      
0x407b40:  push     2                             
0x407b42:  push     eax                           
0x407b43:  push     dword ptr [ebp - 0x48]        
0x407b46:  call     0x417800                      
0x407b4b:  add      esp, 0xc                      
0x407b4e:  add      esp, 0x10                     
0x407b51:  pop      ebp                           
0x407b52:  ret                                    
0x407b53:  nop      word ptr cs:[eax + eax]       
0x407b5d:  nop      dword ptr [eax]               
0x407b60:  push     ebp                           
0x407b61:  sub      esp, 0x10                     
0x407b64:  add      ebp, 0xc                      
0x407b67:  cmp      dword ptr [ebp - 0x20], 0     
0x407b6b:  je       0x407b7d                      
0x407b6d:  push     1                             
0x407b6f:  push     dword ptr [ebp - 0x20]        
0x407b72:  push     dword ptr [ebp - 0x40]        
0x407b75:  call     0x417800                      
0x407b7a:  add      esp, 0xc                      
0x407b7d:  add      esp, 0x10                     
0x407b80:  pop      ebp                           
0x407b81:  ret                                    
0x407b82:  int3                                   
0x407b83:  int3                                   
0x407b84:  int3                                   
0x407b85:  int3                                   
0x407b86:  int3                                   
0x407b87:  int3                                   
0x407b88:  int3                                   
0x407b89:  int3                                   
0x407b8a:  int3                                   
0x407b8b:  int3                                   
0x407b8c:  int3                                   
0x407b8d:  int3                                   
0x407b8e:  int3                                   
0x407b8f:  int3                                   
0x407b90:  push     ebp                           
0x407b91:  mov      ebp, esp                      
0x407b93:  push     ebx                           
0x407b94:  push     edi                           
0x407b95:  push     esi                           
0x407b96:  sub      esp, 0xa0                     
0x407b9c:  mov      dword ptr [ebp - 0x1c], esp   
0x407b9f:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x407ba6:  mov      dword ptr [ebp - 0x14], 0x40b750
0x407bad:  lea      eax, [ebp - 0x18]             
0x407bb0:  add      edx, ecx                      
0x407bb2:  mov      esi, dword ptr fs:[0]         
0x407bb9:  mov      dword ptr [ebp - 0x18], esi   
0x407bbc:  lea      esi, [ebp - 0x88]             
0x407bc2:  mov      dword ptr fs:[0], eax         
0x407bc8:  mov      dword ptr [ebp - 0x84], ecx   
0x407bce:  mov      dword ptr [ebp - 0x80], edx   
0x407bd1:  mov      word ptr [ebp - 0x7c], 0      
0x407bd7:  mov      dword ptr [ebp - 0x88], 1     
0x407be1:  lea      eax, [ebp - 0x4c]             
0x407be4:  push     esi                           
0x407be5:  push     eax                           
0x407be6:  call     0x412040                      
0x407beb:  add      esp, 8                        
0x407bee:  mov      eax, dword ptr [ebp - 0x48]   
0x407bf1:  xorps    xmm0, xmm0                    
0x407bf4:  mov      dword ptr [ebp - 0x50], 0     
0x407bfb:  movsd    qword ptr [ebp - 0x78], xmm0  
0x407c00:  movsd    qword ptr [ebp - 0x70], xmm0  
0x407c05:  movsd    qword ptr [ebp - 0x58], xmm0  
0x407c0a:  movsd    qword ptr [ebp - 0x60], xmm0  
0x407c0f:  movsd    qword ptr [ebp - 0x68], xmm0  
0x407c14:  movsd    qword ptr [ebp - 0x80], xmm0  
0x407c19:  mov      dword ptr [ebp - 0x88], 0x3c  
0x407c23:  mov      dword ptr [ebp - 0x84], 0x40  
0x407c2d:  mov      dword ptr [ebp - 0x78], eax   
0x407c30:  mov      dword ptr [ebp - 0x3c], eax   
0x407c33:  mov      dword ptr [ebp - 0x6c], 1     
0x407c3a:  push     esi                           
0x407c3b:  call     dword ptr [0x652ba0]          
0x407c41:  test     eax, eax                      
0x407c43:  je       0x407cc1                      
0x407c45:  mov      eax, dword ptr [ebp - 0x50]   
0x407c48:  test     eax, eax                      
0x407c4a:  je       0x407cc1                      
0x407c4c:  push     -1                            
0x407c4e:  push     eax                           
0x407c4f:  call     dword ptr [0x652b7c]          
0x407c55:  cmp      eax, -1                       
0x407c58:  je       0x407da2                      
0x407c5e:  lea      edi, [ebp - 0x40]             
0x407c61:  mov      dword ptr [ebp - 0x40], 0     
0x407c68:  push     edi                           
0x407c69:  push     dword ptr [ebp - 0x50]        
0x407c6c:  call     dword ptr [0x652a9c]          
0x407c72:  mov      esi, eax                      
0x407c74:  push     dword ptr [ebp - 0x50]        
0x407c77:  call     dword ptr [0x652a0c]          
0x407c7d:  test     esi, esi                      
0x407c7f:  je       0x407e61                      
0x407c85:  mov      ecx, dword ptr [ebp - 0x40]   
0x407c88:  xor      eax, eax                      
0x407c8a:  test     ecx, ecx                      
0x407c8c:  je       0x407d72                      
0x407c92:  cmp      ecx, 0xbc2                    
0x407c98:  je       0x407d72                      
0x407c9e:  lea      edx, [ebp - 0x38]             
0x407ca1:  mov      ecx, 0x5e3264                 
0x407ca6:  mov      dword ptr [ebp - 0x38], edi   
0x407ca9:  mov      dword ptr [ebp - 0x34], 0x490980
0x407cb0:  mov      dword ptr [ebp - 0x10], 0     
0x407cb7:  call     0x5d76c0                      
0x407cbc:  jmp      0x407d72                      
0x407cc1:  mov      dword ptr [ebp - 0x10], 0     
0x407cc8:  call     0x480210                      
0x407ccd:  mov      byte ptr [ebp - 0x2c], 0      
0x407cd1:  mov      dword ptr [ebp - 0x28], eax   
0x407cd4:  lea      eax, [ebp - 0x2c]             
0x407cd7:  mov      dword ptr [ebp - 0x10], 2     
0x407cde:  lea      ecx, [ebp - 0x94]             
0x407ce4:  mov      dword ptr [ebp - 0x38], eax   
0x407ce7:  lea      eax, [ebp - 0x38]             
0x407cea:  mov      dword ptr [ebp - 0x34], 0x482920
0x407cf1:  push     eax                           
0x407cf2:  push     0x5e32ae                      
0x407cf7:  push     ecx                           
0x407cf8:  call     0x486300                      
0x407cfd:  add      esp, 0xc                      
0x407d00:  cmp      byte ptr [ebp - 0x2c], 3      
0x407d04:  jne      0x407d5c                      
0x407d06:  mov      eax, dword ptr [ebp - 0x28]   
0x407d09:  mov      ecx, dword ptr [eax]          
0x407d0b:  mov      dword ptr [ebp - 0x30], eax   
0x407d0e:  mov      eax, dword ptr [eax + 4]      
0x407d11:  mov      dword ptr [ebp - 0x20], eax   
0x407d14:  mov      eax, dword ptr [eax]          
0x407d16:  mov      dword ptr [ebp - 0x24], ecx   
0x407d19:  test     eax, eax                      
0x407d1b:  je       0x407d2c                      
0x407d1d:  mov      dword ptr [ebp - 0x10], 1     
0x407d24:  push     dword ptr [ebp - 0x24]        
0x407d27:  call     eax                           
0x407d29:  add      esp, 4                        
0x407d2c:  mov      edx, dword ptr [ebp - 0x20]   
0x407d2f:  mov      ecx, dword ptr [ebp - 0x24]   
0x407d32:  mov      eax, dword ptr [edx + 4]      
0x407d35:  test     eax, eax                      
0x407d37:  je       0x407d46                      
0x407d39:  push     dword ptr [edx + 8]           
0x407d3c:  push     eax                           
0x407d3d:  push     ecx                           
0x407d3e:  call     0x417800                      
0x407d43:  add      esp, 0xc                      
0x407d46:  push     4                             
0x407d48:  push     0xc                           
0x407d4a:  push     dword ptr [ebp - 0x30]        
0x407d4d:  call     0x417800                      
0x407d52:  add      esp, 0xc                      
0x407d55:  mov      dword ptr [ebp - 0x10], 0     
0x407d5c:  lea      eax, [ebp - 0x94]             
0x407d62:  mov      dword ptr [ebp - 0x10], 0     
0x407d69:  push     eax                           
0x407d6a:  call     0x5d76f0                      
0x407d6f:  add      esp, 4                        
0x407d72:  mov      ecx, dword ptr [ebp - 0x4c]   
0x407d75:  test     ecx, ecx                      
0x407d77:  je       0x407d8d                      
0x407d79:  add      ecx, ecx                      
0x407d7b:  push     2                             
0x407d7d:  push     ecx                           
0x407d7e:  push     dword ptr [ebp - 0x3c]        
0x407d81:  mov      esi, eax                      
0x407d83:  call     0x417800                      
0x407d88:  mov      eax, esi                      
0x407d8a:  add      esp, 0xc                      
0x407d8d:  mov      ecx, dword ptr [ebp - 0x18]   
0x407d90:  mov      dword ptr fs:[0], ecx         
0x407d97:  add      esp, 0xa0                     
0x407d9d:  pop      esi                           
0x407d9e:  pop      edi                           
0x407d9f:  pop      ebx                           
0x407da0:  pop      ebp                           
0x407da1:  ret                                    
0x407da2:  push     dword ptr [ebp - 0x50]        
0x407da5:  call     dword ptr [0x652a0c]          
0x407dab:  mov      dword ptr [ebp - 0x10], 0     
0x407db2:  call     0x480210                      
0x407db7:  mov      byte ptr [ebp - 0x2c], 0      
0x407dbb:  mov      dword ptr [ebp - 0x28], eax   
0x407dbe:  lea      eax, [ebp - 0x2c]             
0x407dc1:  mov      dword ptr [ebp - 0x10], 6     
0x407dc8:  lea      ecx, [ebp - 0xa0]             
0x407dce:  mov      dword ptr [ebp - 0x38], eax   
0x407dd1:  lea      eax, [ebp - 0x38]             
0x407dd4:  mov      dword ptr [ebp - 0x34], 0x482920
0x407ddb:  push     eax                           
0x407ddc:  push     0x5e323f                      
0x407de1:  push     ecx                           
0x407de2:  call     0x486300                      
0x407de7:  add      esp, 0xc                      
0x407dea:  cmp      byte ptr [ebp - 0x2c], 3      
0x407dee:  jne      0x407e46                      
0x407df0:  mov      eax, dword ptr [ebp - 0x28]   
0x407df3:  mov      ecx, dword ptr [eax]          
0x407df5:  mov      dword ptr [ebp - 0x30], eax   
0x407df8:  mov      eax, dword ptr [eax + 4]      
0x407dfb:  mov      dword ptr [ebp - 0x20], eax   
0x407dfe:  mov      eax, dword ptr [eax]          
0x407e00:  mov      dword ptr [ebp - 0x24], ecx   
0x407e03:  test     eax, eax                      
0x407e05:  je       0x407e16                      
0x407e07:  mov      dword ptr [ebp - 0x10], 5     
0x407e0e:  push     dword ptr [ebp - 0x24]        
0x407e11:  call     eax                           
0x407e13:  add      esp, 4                        
0x407e16:  mov      edx, dword ptr [ebp - 0x20]   
0x407e19:  mov      ecx, dword ptr [ebp - 0x24]   
0x407e1c:  mov      eax, dword ptr [edx + 4]      
0x407e1f:  test     eax, eax                      
0x407e21:  je       0x407e30                      
0x407e23:  push     dword ptr [edx + 8]           
0x407e26:  push     eax                           
0x407e27:  push     ecx                           
0x407e28:  call     0x417800                      
0x407e2d:  add      esp, 0xc                      
0x407e30:  push     4                             
0x407e32:  push     0xc                           
0x407e34:  push     dword ptr [ebp - 0x30]        
0x407e37:  call     0x417800                      
0x407e3c:  add      esp, 0xc                      
0x407e3f:  mov      dword ptr [ebp - 0x10], 0     
0x407e46:  lea      eax, [ebp - 0xa0]             
0x407e4c:  mov      dword ptr [ebp - 0x10], 0     
0x407e53:  push     eax                           
0x407e54:  call     0x5d76f0                      
0x407e59:  add      esp, 4                        
0x407e5c:  jmp      0x407d72                      
0x407e61:  mov      dword ptr [ebp - 0x10], 0     
0x407e68:  call     0x480210                      
0x407e6d:  mov      byte ptr [ebp - 0x2c], 0      
0x407e71:  mov      dword ptr [ebp - 0x28], eax   
0x407e74:  lea      eax, [ebp - 0x2c]             
0x407e77:  mov      dword ptr [ebp - 0x10], 4     
0x407e7e:  lea      ecx, [ebp - 0xac]             
0x407e84:  mov      dword ptr [ebp - 0x38], eax   
0x407e87:  lea      eax, [ebp - 0x38]             
0x407e8a:  mov      dword ptr [ebp - 0x34], 0x482920
0x407e91:  push     eax                           
0x407e92:  push     0x5e3286                      
0x407e97:  push     ecx                           
0x407e98:  call     0x486300                      
0x407e9d:  add      esp, 0xc                      
0x407ea0:  cmp      byte ptr [ebp - 0x2c], 3      
0x407ea4:  jne      0x407efc                      
0x407ea6:  mov      eax, dword ptr [ebp - 0x28]   
0x407ea9:  mov      ecx, dword ptr [eax]          
0x407eab:  mov      dword ptr [ebp - 0x30], eax   
0x407eae:  mov      eax, dword ptr [eax + 4]      
0x407eb1:  mov      dword ptr [ebp - 0x20], eax   
0x407eb4:  mov      eax, dword ptr [eax]          
0x407eb6:  mov      dword ptr [ebp - 0x24], ecx   
0x407eb9:  test     eax, eax                      
0x407ebb:  je       0x407ecc                      
0x407ebd:  mov      dword ptr [ebp - 0x10], 3     
0x407ec4:  push     dword ptr [ebp - 0x24]        
0x407ec7:  call     eax                           
0x407ec9:  add      esp, 4                        
0x407ecc:  mov      edx, dword ptr [ebp - 0x20]   
0x407ecf:  mov      ecx, dword ptr [ebp - 0x24]   
0x407ed2:  mov      eax, dword ptr [edx + 4]      
0x407ed5:  test     eax, eax                      
0x407ed7:  je       0x407ee6                      
0x407ed9:  push     dword ptr [edx + 8]           
0x407edc:  push     eax                           
0x407edd:  push     ecx                           
0x407ede:  call     0x417800                      
0x407ee3:  add      esp, 0xc                      
0x407ee6:  push     4                             
0x407ee8:  push     0xc                           
0x407eea:  push     dword ptr [ebp - 0x30]        
0x407eed:  call     0x417800                      
0x407ef2:  add      esp, 0xc                      
0x407ef5:  mov      dword ptr [ebp - 0x10], 0     
0x407efc:  lea      eax, [ebp - 0xac]             
0x407f02:  mov      dword ptr [ebp - 0x10], 0     
0x407f09:  push     eax                           
0x407f0a:  call     0x5d76f0                      
0x407f0f:  add      esp, 4                        
0x407f12:  jmp      0x407d72                      
0x407f17:  nop      word ptr [eax + eax]          
0x407f20:  push     ebp                           
0x407f21:  sub      esp, 0xc                      
0x407f24:  add      ebp, 0xc                      
0x407f27:  mov      eax, dword ptr [ebp - 0x4c]   
0x407f2a:  test     eax, eax                      
0x407f2c:  je       0x407f3e                      
0x407f2e:  add      eax, eax                      
0x407f30:  push     2                             
0x407f32:  push     eax                           
0x407f33:  push     dword ptr [ebp - 0x3c]        
0x407f36:  call     0x417800                      
0x407f3b:  add      esp, 0xc                      
0x407f3e:  add      esp, 0xc                      
0x407f41:  pop      ebp                           
0x407f42:  ret                                    
0x407f43:  nop      word ptr cs:[eax + eax]       
0x407f4d:  nop      dword ptr [eax]               
0x407f50:  push     ebp                           
0x407f51:  sub      esp, 0xc                      
0x407f54:  add      ebp, 0xc                      
0x407f57:  mov      ecx, dword ptr [ebp - 0x2c]   
0x407f5a:  mov      edx, dword ptr [ebp - 0x28]   
0x407f5d:  call     0x406d20                      
0x407f62:  add      esp, 0xc                      
0x407f65:  pop      ebp                           
0x407f66:  ret                                    
0x407f67:  nop      word ptr [eax + eax]          
0x407f70:  push     ebp                           
0x407f71:  sub      esp, 0xc                      
0x407f74:  add      ebp, 0xc                      
0x407f77:  mov      eax, dword ptr [ebp - 0x20]   
0x407f7a:  mov      ecx, dword ptr [ebp - 0x24]   
0x407f7d:  mov      eax, dword ptr [eax + 4]      
0x407f80:  test     eax, eax                      
0x407f82:  je       0x407f94                      
0x407f84:  mov      edx, dword ptr [ebp - 0x20]   
0x407f87:  push     dword ptr [edx + 8]           
0x407f8a:  push     eax                           
0x407f8b:  push     ecx                           
0x407f8c:  call     0x417800                      
0x407f91:  add      esp, 0xc                      
0x407f94:  push     4                             
0x407f96:  push     0xc                           
0x407f98:  push     dword ptr [ebp - 0x30]        
0x407f9b:  call     0x417800                      
0x407fa0:  add      esp, 0x18                     
0x407fa3:  pop      ebp                           
0x407fa4:  ret                                    
0x407fa5:  nop      word ptr cs:[eax + eax]       
0x407faf:  nop                                    
0x407fb0:  push     ebp                           
0x407fb1:  sub      esp, 0xc                      
0x407fb4:  add      ebp, 0xc                      
0x407fb7:  mov      eax, dword ptr [ebp - 0x20]   
0x407fba:  mov      ecx, dword ptr [ebp - 0x24]   
0x407fbd:  mov      eax, dword ptr [eax + 4]      
0x407fc0:  test     eax, eax                      
0x407fc2:  je       0x407fd4                      
0x407fc4:  mov      edx, dword ptr [ebp - 0x20]   
0x407fc7:  push     dword ptr [edx + 8]           
0x407fca:  push     eax                           
0x407fcb:  push     ecx                           
0x407fcc:  call     0x417800                      
0x407fd1:  add      esp, 0xc                      
0x407fd4:  push     4                             
0x407fd6:  push     0xc                           
0x407fd8:  push     dword ptr [ebp - 0x30]        
0x407fdb:  call     0x417800                      
0x407fe0:  add      esp, 0x18                     
0x407fe3:  pop      ebp                           
0x407fe4:  ret                                    
0x407fe5:  nop      word ptr cs:[eax + eax]       
0x407fef:  nop                                    
0x407ff0:  push     ebp                           
0x407ff1:  sub      esp, 0xc                      
0x407ff4:  add      ebp, 0xc                      
0x407ff7:  mov      ecx, dword ptr [ebp - 0x2c]   
0x407ffa:  mov      edx, dword ptr [ebp - 0x28]   
0x407ffd:  call     0x406d20                      
0x408002:  add      esp, 0xc                      
0x408005:  pop      ebp                           
0x408006:  ret                                    
0x408007:  nop      word ptr [eax + eax]          
0x408010:  push     ebp                           
0x408011:  sub      esp, 0xc                      
0x408014:  add      ebp, 0xc                      
0x408017:  mov      eax, dword ptr [ebp - 0x20]   
0x40801a:  mov      ecx, dword ptr [ebp - 0x24]   
0x40801d:  mov      eax, dword ptr [eax + 4]      
0x408020:  test     eax, eax                      
0x408022:  je       0x408034                      
0x408024:  mov      edx, dword ptr [ebp - 0x20]   
0x408027:  push     dword ptr [edx + 8]           
0x40802a:  push     eax                           
0x40802b:  push     ecx                           
0x40802c:  call     0x417800                      
0x408031:  add      esp, 0xc                      
0x408034:  push     4                             
0x408036:  push     0xc                           
0x408038:  push     dword ptr [ebp - 0x30]        
0x40803b:  call     0x417800                      
0x408040:  add      esp, 0x18                     
0x408043:  pop      ebp                           
0x408044:  ret                                    
0x408045:  nop      word ptr cs:[eax + eax]       
0x40804f:  nop                                    
0x408050:  push     ebp                           
0x408051:  sub      esp, 0xc                      
0x408054:  add      ebp, 0xc                      
0x408057:  mov      ecx, dword ptr [ebp - 0x2c]   
0x40805a:  mov      edx, dword ptr [ebp - 0x28]   
0x40805d:  call     0x406d20                      
0x408062:  add      esp, 0xc                      
0x408065:  pop      ebp                           
0x408066:  ret                                    
0x408067:  int3                                   
0x408068:  int3                                   
0x408069:  int3                                   
0x40806a:  int3                                   
0x40806b:  int3                                   
0x40806c:  int3                                   
0x40806d:  int3                                   
0x40806e:  int3                                   
0x40806f:  int3                                   
0x408070:  push     ebp                           
0x408071:  mov      ebp, esp                      
0x408073:  push     ebx                           
0x408074:  push     edi                           
0x408075:  push     esi                           
0x408076:  sub      esp, 0x74                     
0x408079:  mov      dword ptr [ebp - 0x1c], esp   
0x40807c:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x408083:  mov      dword ptr [ebp - 0x14], 0x40b760
0x40808a:  mov      esi, dword ptr [ebp + 0xc]    
0x40808d:  mov      dword ptr [ebp - 0x30], ecx   
0x408090:  lea      ecx, [ebp - 0x18]             
0x408093:  mov      eax, dword ptr fs:[0]         
0x408099:  mov      dword ptr [ebp - 0x18], eax   
0x40809c:  mov      dword ptr fs:[0], ecx         
0x4080a3:  mov      dword ptr [ebp - 0x50], esi   
0x4080a6:  mov      ecx, dword ptr [ebp + 0x10]   
0x4080a9:  mov      esi, dword ptr [ebp + 8]      
0x4080ac:  mov      dword ptr [ebp - 0x4c], ecx   
0x4080af:  lea      ecx, [ebp - 0x5c]             
0x4080b2:  push     esi                           
0x4080b3:  push     edx                           
0x4080b4:  push     0x5e3bc9                      
0x4080b9:  push     ecx                           
0x4080ba:  call     0x413cc0                      
0x4080bf:  add      esp, 0x10                     
0x4080c2:  mov      eax, dword ptr [ebp - 0x5c]   
0x4080c5:  cmp      eax, -1                       
0x4080c8:  je       0x408112                      
0x4080ca:  mov      edx, dword ptr [ebp - 0x54]   
0x4080cd:  mov      ecx, dword ptr [ebp - 0x58]   
0x4080d0:  mov      dword ptr [ebp - 0x24], eax   
0x4080d3:  mov      dword ptr [ebp - 0x10], 1     
0x4080da:  lea      eax, [ebp - 0x80]             
0x4080dd:  mov      dword ptr [ebp - 0x2c], edx   
0x4080e0:  push     edx                           
0x4080e1:  mov      dword ptr [ebp - 0x28], ecx   
0x4080e4:  push     ecx                           
0x4080e5:  push     eax                           
0x4080e6:  call     0x48b290                      
0x4080eb:  add      esp, 0xc                      
0x4080ee:  cmp      dword ptr [ebp - 0x80], 1     
0x4080f2:  jne      0x4081ab                      
0x4080f8:  mov      eax, dword ptr [ebp - 0x7c]   
0x4080fb:  mov      ecx, dword ptr [ebp - 0x78]   
0x4080fe:  mov      edx, dword ptr [ebp - 0x2c]   
0x408101:  mov      dword ptr [ebp - 0x38], ecx   
0x408104:  mov      dword ptr [ebp - 0x3c], eax   
0x408107:  mov      eax, dword ptr [ebp - 0x24]   
0x40810a:  mov      ecx, dword ptr [ebp - 0x28]   
0x40810d:  jmp      0x4081bc                      
0x408112:  mov      eax, dword ptr [ebp - 0x58]   
0x408115:  lea      esi, [ebp - 0x48]             
0x408118:  mov      dword ptr [ebp - 0x24], eax   
0x40811b:  mov      eax, dword ptr [ebp - 0x54]   
0x40811e:  mov      dword ptr [ebp - 0x28], eax   
0x408121:  lea      eax, [ebp - 0x50]             
0x408124:  mov      dword ptr [ebp - 0x48], eax   
0x408127:  mov      dword ptr [ebp - 0x44], 0x410900
0x40812e:  lea      eax, [ebp - 0x68]             
0x408131:  push     esi                           
0x408132:  push     0x5e5db4                      
0x408137:  push     eax                           
0x408138:  call     0x486300                      
0x40813d:  add      esp, 0xc                      
0x408140:  mov      byte ptr [ebp - 0x1d], 1      
0x408144:  mov      dword ptr [ebp - 0x10], 0     
0x40814b:  push     esi                           
0x40814c:  call     0x4794a0                      
0x408151:  add      esp, 4                        
0x408154:  movsd    xmm1, qword ptr [ebp - 0x40]  
0x408159:  mov      eax, dword ptr [ebp - 0x60]   
0x40815c:  movsd    xmm0, qword ptr [ebp - 0x38]  
0x408161:  movsd    xmm2, qword ptr [ebp - 0x48]  
0x408166:  lea      ecx, [ebp - 0x48]             
0x408169:  lea      edx, [ebp - 0x80]             
0x40816c:  mov      byte ptr [ebp - 0x1d], 0      
0x408170:  movsd    qword ptr [ebp - 0x78], xmm1  
0x408175:  mov      dword ptr [ebp - 0x40], eax   
0x408178:  movsd    xmm1, qword ptr [ebp - 0x68]  
0x40817d:  mov      eax, dword ptr [ebp - 0x28]   
0x408180:  movsd    qword ptr [ebp - 0x70], xmm0  
0x408185:  movsd    qword ptr [ebp - 0x80], xmm2  
0x40818a:  movsd    qword ptr [ebp - 0x48], xmm1  
0x40818f:  mov      dword ptr [ebp - 0x38], eax   
0x408192:  mov      eax, dword ptr [ebp - 0x24]   
0x408195:  mov      dword ptr [ebp - 0x3c], eax   
0x408198:  call     0x5d7a10                      
0x40819d:  mov      ecx, dword ptr [ebp - 0x30]   
0x4081a0:  mov      dword ptr [ecx + 4], eax      
0x4081a3:  mov      dword ptr [ecx], 0xffffffff   
0x4081a9:  jmp      0x4081df                      
0x4081ab:  mov      eax, dword ptr [ebp - 0x2c]   
0x4081ae:  mov      ecx, dword ptr [ebp - 0x24]   
0x4081b1:  mov      edx, dword ptr [ebp - 0x28]   
0x4081b4:  mov      dword ptr [ebp - 0x3c], eax   
0x4081b7:  mov      eax, 0xffffffff               
0x4081bc:  mov      dword ptr [ebp - 0x48], eax   
0x4081bf:  lea      eax, [ebp - 0x50]             
0x4081c2:  mov      dword ptr [ebp - 0x44], ecx   
0x4081c5:  mov      dword ptr [ebp - 0x40], edx   
0x4081c8:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x4081cf:  lea      ecx, [ebp - 0x48]             
0x4081d2:  push     eax                           
0x4081d3:  push     ecx                           
0x4081d4:  push     dword ptr [ebp - 0x30]        
0x4081d7:  call     0x413f50                      
0x4081dc:  add      esp, 0xc                      
0x4081df:  mov      eax, dword ptr [ebp - 0x18]   
0x4081e2:  mov      dword ptr fs:[0], eax         
0x4081e8:  add      esp, 0x74                     
0x4081eb:  pop      esi                           
0x4081ec:  pop      edi                           
0x4081ed:  pop      ebx                           
0x4081ee:  pop      ebp                           
0x4081ef:  ret                                    
0x4081f0:  push     ebp                           
0x4081f1:  sub      esp, 0x10                     
0x4081f4:  add      ebp, 0xc                      
0x4081f7:  cmp      byte ptr [ebp - 0x1d], 0      
0x4081fb:  je       0x408212                      
0x4081fd:  mov      eax, dword ptr [ebp - 0x68]   
0x408200:  test     eax, eax                      
0x408202:  je       0x408212                      
0x408204:  push     1                             
0x408206:  push     eax                           
0x408207:  push     dword ptr [ebp - 0x64]        
0x40820a:  call     0x417800                      
0x40820f:  add      esp, 0xc                      
0x408212:  add      esp, 0x10                     
0x408215:  pop      ebp                           
0x408216:  ret                                    
0x408217:  nop      word ptr [eax + eax]          
0x408220:  push     ebp                           
0x408221:  sub      esp, 0x10                     
0x408224:  add      ebp, 0xc                      
0x408227:  cmp      dword ptr [ebp - 0x24], 0     
0x40822b:  je       0x40823d                      
0x40822d:  push     1                             
0x40822f:  push     dword ptr [ebp - 0x24]        
0x408232:  push     dword ptr [ebp - 0x28]        
0x408235:  call     0x417800                      
0x40823a:  add      esp, 0xc                      
0x40823d:  add      esp, 0x10                     
0x408240:  pop      ebp                           
0x408241:  ret                                    
0x408242:  int3                                   
0x408243:  int3                                   
0x408244:  int3                                   
0x408245:  int3                                   
0x408246:  int3                                   
0x408247:  int3                                   
0x408248:  int3                                   
0x408249:  int3                                   
0x40824a:  int3                                   
0x40824b:  int3                                   
0x40824c:  int3                                   
0x40824d:  int3                                   
0x40824e:  int3                                   
0x40824f:  int3                                   
0x408250:  push     ebp                           
0x408251:  mov      ebp, esp                      
0x408253:  push     ebx                           
0x408254:  push     edi                           
0x408255:  push     esi                           
0x408256:  sub      esp, 0x8c                     
0x40825c:  mov      dword ptr [ebp - 0x1c], esp   
0x40825f:  mov      dword ptr [ebp - 0x10], 0xffffffff
0x408266:  mov      dword ptr [ebp - 0x14], 0x40b770
0x40826d:  lea      eax, [ebp - 0x18]             
0x408270:  add      edx, ecx                      
0x408272:  mov      esi, dword ptr fs:[0]         
0x408279:  mov      dword ptr [ebp - 0x18], esi   
0x40827c:  lea      esi, [ebp - 0x58]             
0x40827f:  mov      dword ptr fs:[0], eax         
0x408285:  mov      dword ptr [ebp - 0x54], ecx   
0x408288:  mov      dword ptr [ebp - 0x50], edx   
0x40828b:  mov      word ptr [ebp - 0x4c], 0      
0x408291:  mov      dword ptr [ebp - 0x58], 1     
0x408298:  lea      eax, [ebp - 0x6c]             
0x40829b:  push     esi                           
0x40829c:  push     eax                           
0x40829d:  call     0x412040                      
0x4082a2:  add      esp, 8                        
0x4082a5:  mov      eax, dword ptr [ebp - 0x68]   
0x4082a8:  mov      edi, dword ptr [0x652ba8]     
0x4082ae:  xorps    xmm0, xmm0                    
0x4082b1:  mov      dword ptr [ebp - 0x7c], 0x10  
0x4082b8:  mov      dword ptr [ebp - 0x80], 0xee95c24f
0x4082bf:  mov      dword ptr [ebp - 0x84], 0xc000c28c
0x4082c9:  mov      dword ptr [ebp - 0x88], 0x11d0cd44
0x4082d3:  mov      dword ptr [ebp - 0x8c], 0xaac56b
0x4082dd:  lea      ebx, [ebp - 0x8c]             
0x4082e3:  movsd    qword ptr [ebp - 0x4c], xmm0  
0x4082e8:  movsd    qword ptr [ebp - 0x44], xmm0  
0x4082ed:  movsd    qword ptr [ebp - 0x3c], xmm0  
0x4082f2:  movsd    qword ptr [ebp - 0x34], xmm0  
0x4082f7:  movsd    qword ptr [ebp - 0x2c], xmm0  
0x4082fc:  movsd    qword ptr [ebp - 0x54], xmm0  
0x408301:  mov      dword ptr [ebp - 0x58], 0x34  
0x408308:  mov      dword ptr [ebp - 0x4c], 2     
0x40830f:  mov      dword ptr [ebp - 0x48], 1     
0x408316:  mov      dword ptr [ebp - 0x44], 1     
0x40831d:  mov      dword ptr [ebp - 0x78], eax   
0x408320:  mov      dword ptr [ebp - 0x20], eax   
0x408323:  lea      eax, [ebp - 0x7c]             
0x408326:  mov      dword ptr [ebp - 0x74], 0     
0x40832d:  mov      dword ptr [ebp - 0x70], 0     
0x408334:  mov      dword ptr [ebp - 0x40], eax   
0x408337:  mov      dword ptr [ebp - 0x3c], 1     
0x40833e:  mov      dword ptr [ebp - 0x30], 0x2080
0x408345:  mov      dword ptr [ebp - 0x2c], 1     
0x40834c:  push     esi                           
0x40834d:  push     ebx                           
0x40834e:  push     0                             
0x408350:  call     edi                           
0x408352:  mov      esi, eax                      
0x408354:  lea      eax, [ebp - 0x58]             
0x408357:  mov      dword ptr [ebp - 0x3c], 2     
0x40835e:  push     eax                           
0x40835f:  push     ebx                           
0x408360:  push     0                             
0x408362:  call     edi                           
0x408364:  test     esi, esi                      
0x408366:  je       0x4083d5                      
0x408368:  lea      eax, [ebp - 0x24]             
0x40836b:  mov      dword ptr [ebp - 0x24], esi   
0x40836e:  mov      dword ptr [ebp - 0x10], 0     
0x408375:  lea      ecx, [ebp - 0x98]             
0x40837b:  mov      dword ptr [ebp - 0x60], eax   
0x40837e:  lea      eax, [ebp - 0x60]             
0x408381:  mov      dword ptr [ebp - 0x5c], 0x4904b0
0x408388:  push     eax                           
0x408389:  push     0x5e3d77                      
0x40838e:  push     ecx                           
0x40838f:  call     0x486300                      
0x408394:  add      esp, 0xc                      
0x408397:  lea      eax, [ebp - 0x98]             
0x40839d:  push     eax                           
0x40839e:  call     0x5d76f0                      
0x4083a3:  add      esp, 4                        
0x4083a6:  mov      esi, eax                      
0x4083a8:  mov      eax, dword ptr [ebp - 0x6c]   
0x4083ab:  test     eax, eax                      
0x4083ad:  je       0x4083bf                      
0x4083af:  add      eax, eax                      
0x4083b1:  push     2                             
0x4083b3:  push     eax                           
0x4083b4:  push     dword ptr [ebp - 0x20]        
0x4083b7:  call     0x417800                      
0x4083bc:  add      esp, 0xc                      
0x4083bf:  mov      eax, dword ptr [ebp - 0x18]   
0x4083c2:  mov      dword ptr fs:[0], eax         
0x4083c8:  mov      eax, esi                      
0x4083ca:  add      esp, 0x8c                     
0x4083d0:  pop      esi                           
0x4083d1:  pop      edi                           
0x4083d2:  pop      ebx                           
0x4083d3:  pop      ebp                           
0x4083d4:  ret                                    
0x4083d5:  xor      esi, esi                      
0x4083d7:  mov      eax, dword ptr [ebp - 0x6c]   
0x4083da:  test     eax, eax                      
0x4083dc:  jne      0x4083af                      
0x4083de:  jmp      0x4083bf                      
0x4083e0:  push     ebp                           
0x4083e1:  sub      esp, 0xc                      
0x4083e4:  add      ebp, 0xc                      
0x4083e7:  mov      eax, dword ptr [ebp - 0x6c]   
0x4083ea:  test     eax, eax                      
0x4083ec:  je       0x4083fe                      
0x4083ee:  add      eax, eax                      
0x4083f0:  push     2                             
0x4083f2:  push     eax                           
0x4083f3:  push     dword ptr [ebp - 0x20]        
0x4083f6:  call     0x417800                      
0x4083fb:  add      esp, 0xc                      
0x4083fe:  add      esp, 0xc                      
0x408401:  pop      ebp                           
0x408402:  ret                                    
0x408403:  int3                                   
0x408404:  int3                                   
0x408405:  int3                                   
0x408406:  int3                                   
0x408407:  int3                                   
0x408408:  int3                                   
0x408409:  int3                                   
0x40840a:  int3                                   
0x40840b:  int3                                   
0x40840c:  int3                                   
0x40840d:  int3                                   
0x40840e:  int3                                   
0x40840f:  int3                                   
0x408410:  push     ebp                           
0x408411:  mov      ebp, esp                      
0x408413:  push     ebx                           
0x408414:  push     edi                           
0x408415:  push     esi                           
0x408416:  and      esp, 0xfffffff0               
0x408419:  sub      esp, 0x190                    
0x40841f:  mov      esi, esp                      
0x408421:  mov      dword ptr [esi + 0x178], ebp  
0x408427:  mov      dword ptr [esi + 0x17c], esp  
0x40842d:  mov      dword ptr [esi + 0x188], 0xffffffff
0x408437:  mov      dword ptr [esi + 0x184], 0x40b780
0x408441:  mov      edi, edx                      
0x408443:  lea      eax, [esi + 0x180]            
0x408449:  mov      edx, dword ptr fs:[0]         
0x408450:  mov      dword ptr [esi + 0x180], edx  
0x408456:  mov      dword ptr fs:[0], eax         
0x40845c:  lea      eax, [esi + 0xa0]             
0x408462:  push     ecx                           
0x408463:  push     eax                           
0x408464:  call     0x462710                      
0x408469:  add      esp, 8                        
0x40846c:  cmp      dword ptr [esi + 0xa0], -1    
0x408473:  je       0x408521                      
0x408479:  movsd    xmm2, qword ptr [esi + 0xb8]  
0x408481:  movsd    xmm1, qword ptr [esi + 0xb0]  
0x408489:  movq     xmm0, qword ptr [esi + 0xc0]  
0x408491:  mov      dword ptr [esi + 0x2c], edi   
0x408494:  movsd    qword ptr [esi + 0x48], xmm2  
0x408499:  movsd    qword ptr [esi + 0x40], xmm1  
0x40849e:  movq     xmm2, qword ptr [esi + 0xa0]  
0x4084a6:  movq     xmm1, qword ptr [esi + 0xa8]  
0x4084ae:  movq     qword ptr [esi + 0x50], xmm0  
0x4084b3:  movq     qword ptr [esi + 0x38], xmm1  
0x4084b8:  movq     qword ptr [esi + 0x30], xmm2  
0x4084bd:  test     byte ptr [esi + 0x55], 1      
0x4084c1:  jne      0x408521                      
0x4084c3:  mov      ecx, dword ptr [esi + 0x38]   
0x4084c6:  mov      edx, dword ptr [esi + 0x40]   
0x4084c9:  mov      eax, dword ptr [esi + 0x34]   
0x4084cc:  mov      bh, byte ptr [esi + 0x54]     
0x4084cf:  mov      dword ptr [esi + 0x28], ecx   
0x4084d2:  cmp      edx, ecx                      
0x4084d4:  mov      ecx, dword ptr [esi + 0x50]   
0x4084d7:  mov      dword ptr [esi + 0x10], eax   
0x4084da:  jbe      0x4084f2                      
0x4084dc:  mov      edx, dword ptr [esi + 0x4c]   
0x4084df:  test     bh, 1                         
0x4084e2:  jne      0x408674                      
0x4084e8:  cmp      ecx, edx                      
0x4084ea:  jne      0x408674                      
0x4084f0:  jmp      0x408521                      
0x4084f2:  movzx    eax, byte ptr [esi + 0x48]    
0x4084f6:  mov      dword ptr [esi + 0x24], edx   
0x4084f9:  movzx    edi, al                       
0x4084fc:  cmp      al, 4                         