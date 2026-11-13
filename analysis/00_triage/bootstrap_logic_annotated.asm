0x408001:  inc      dword ptr [ebx - 0x3ca2f33c]    
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
0x4084fe:  mov      dword ptr [esi + 0x14], edi     
0x408501:  mov      edi, dword ptr [esi + 0x3c]     
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
0x408c3d:  push     0x5e42cc                         ; '@B^'
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
0x4091d1:  push     0x5e3ec6                         ; 'updater public keyupdater signaturethe updater public key is invalidthe updater signature is invalidthe installer updater signature did not verifykernel32.dllIsWow64Process2'
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
0x40921e:  push     0x5e3ed8                         ; 'updater signaturethe updater public key is invalidthe updater signature is invalidthe installer updater signature did not verifykernel32.dllIsWow64Process2'
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
0x4094fd:  mov      ecx, dword ptr [ebp - 0x11c]    
0x409503:  mov      byte ptr [ebp - 0x1e], 1        
0x409507:  mov      dword ptr [ebp - 0x10], 4       
0x40950e:  mov      dword ptr [ebp - 0x24], eax     
0x409511:  mov      dword ptr [ebp - 0x4c], eax     
0x409514:  lea      eax, [ebp - 0x64]               
0x409517:  mov      dword ptr [ebp - 0x38], ecx     
0x40951a:  mov      dword ptr [ebp - 0x48], ecx     
0x40951d:  push     eax                             
0x40951e:  call     0x4794a0                        
0x409523:  add      esp, 4                          
0x409526:  mov      eax, dword ptr [ebp - 0x38]     
0x409529:  movsd    xmm2, qword ptr [ebp - 0x64]    
0x40952e:  movsd    xmm0, qword ptr [ebp - 0x54]    
0x409533:  movsd    xmm1, qword ptr [ebp - 0x5c]    
0x409538:  mov      dword ptr [ebp - 0x64], 0x5e3f0a ; 'the updater signature is invalidthe installer updater signature did not verifykernel32.dllIsWow64Process2'
0x40953f:  mov      dword ptr [ebp - 0x60], 0x20    
0x409546:  lea      ecx, [ebp - 0x64]               
0x409549:  lea      edx, [ebp - 0x80]               
0x40954c:  mov      byte ptr [ebp - 0x1e], 0        
0x409550:  mov      dword ptr [ebp - 0x58], eax     
0x409553:  mov      eax, dword ptr [ebp - 0x24]     
0x409556:  movsd    qword ptr [ebp - 0x70], xmm0    
0x40955b:  movsd    qword ptr [ebp - 0x78], xmm1    
0x409560:  movsd    qword ptr [ebp - 0x80], xmm2    
0x409565:  mov      dword ptr [ebp - 0x5c], eax     
0x409568:  call     0x5d7c10                        
0x40956d:  mov      esi, eax                        
0x40956f:  mov      eax, dword ptr [ebp - 0x28]     
0x409572:  test     eax, eax                        
0x409574:  jle      0x40930e                        
0x40957a:  push     1                               
0x40957c:  push     eax                             
0x40957d:  push     dword ptr [ebp - 0x40]          
0x409580:  call     0x417800                        
0x409585:  add      esp, 0xc                        
0x409588:  jmp      0x40930e                        
0x40958d:  xor      esi, esi                        
0x40958f:  mov      eax, dword ptr [ebp - 0x44]     
0x409592:  mov      edi, dword ptr [ebp - 0x2c]     
0x409595:  mov      ebx, dword ptr [ebp - 0x30]     
0x409598:  test     eax, eax                        
0x40959a:  je       0x4095aa                        
0x40959c:  push     1                               
0x40959e:  push     eax                             
0x40959f:  push     dword ptr [ebp - 0x68]          
0x4095a2:  call     0x417800                        
0x4095a7:  add      esp, 0xc                        
0x4095aa:  mov      eax, dword ptr [ebp - 0x1f4]    
0x4095b0:  test     eax, eax                        
0x4095b2:  je       0x4095c5                        
0x4095b4:  push     1                               
0x4095b6:  push     eax                             
0x4095b7:  push     dword ptr [ebp - 0x1f0]         
0x4095bd:  call     0x417800                        
0x4095c2:  add      esp, 0xc                        
0x4095c5:  mov      eax, dword ptr [ebp - 0x28]     
0x4095c8:  test     eax, eax                        
0x4095ca:  jle      0x4095da                        
0x4095cc:  push     1                               
0x4095ce:  push     eax                             
0x4095cf:  push     dword ptr [ebp - 0x40]          
0x4095d2:  call     0x417800                        
0x4095d7:  add      esp, 0xc                        
0x4095da:  test     ebx, ebx                        
0x4095dc:  je       0x4095ec                        
0x4095de:  push     1                               
0x4095e0:  push     ebx                             
0x4095e1:  push     dword ptr [ebp - 0x3c]          
0x4095e4:  call     0x417800                        
0x4095e9:  add      esp, 0xc                        
0x4095ec:  test     edi, edi                        
0x4095ee:  je       0x409345                        
0x4095f4:  push     1                               
0x4095f6:  push     edi                             
0x4095f7:  push     dword ptr [ebp - 0x34]          
0x4095fa:  jmp      0x40933d                        
0x4095ff:  nop                                      
0x409600:  push     ebp                             
0x409601:  sub      esp, 0x18                       
0x409604:  add      ebp, 0xc                        
0x409607:  cmp      dword ptr [ebp - 0x2c], 0       
0x40960b:  je       0x40961d                        
0x40960d:  push     1                               
0x40960f:  push     dword ptr [ebp - 0x2c]          
0x409612:  push     dword ptr [ebp - 0x34]          
0x409615:  call     0x417800                        
0x40961a:  add      esp, 0xc                        
0x40961d:  add      esp, 0x18                       
0x409620:  pop      ebp                             
0x409621:  ret                                      
0x409622:  nop      word ptr cs:[eax + eax]         
0x40962c:  nop      dword ptr [eax]                 
0x409630:  push     ebp                             
0x409631:  sub      esp, 0x18                       
0x409634:  add      ebp, 0xc                        
0x409637:  cmp      dword ptr [ebp - 0x30], 0       
0x40963b:  je       0x40964d                        
0x40963d:  push     1                               
0x40963f:  push     dword ptr [ebp - 0x30]          
0x409642:  push     dword ptr [ebp - 0x3c]          
0x409645:  call     0x417800                        
0x40964a:  add      esp, 0xc                        
0x40964d:  add      esp, 0x18                       
0x409650:  pop      ebp                             
0x409651:  ret                                      
0x409652:  nop      word ptr cs:[eax + eax]         
0x40965c:  nop      dword ptr [eax]                 
0x409660:  push     ebp                             
0x409661:  sub      esp, 0x18                       
0x409664:  add      ebp, 0xc                        
0x409667:  mov      eax, dword ptr [ebp - 0x28]     
0x40966a:  cmp      byte ptr [ebp - 0x1d], 0        
0x40966e:  je       0x409680                        
0x409670:  cmp      al, 3                           
0x409672:  ja       0x409680                        
0x409674:  lea      eax, [ebp - 0x80]               
0x409677:  push     eax                             
0x409678:  call     0x40d150                        
0x40967d:  add      esp, 4                          
0x409680:  add      esp, 0x18                       
0x409683:  pop      ebp                             
0x409684:  ret                                      
0x409685:  nop      word ptr cs:[eax + eax]         
0x40968f:  nop                                      
0x409690:  push     ebp                             
0x409691:  sub      esp, 0x18                       
0x409694:  add      ebp, 0xc                        
0x409697:  cmp      dword ptr [ebp - 0x28], 0       
0x40969b:  jle      0x4096ad                        
0x40969d:  push     1                               
0x40969f:  push     dword ptr [ebp - 0x28]          
0x4096a2:  push     dword ptr [ebp - 0x40]          
0x4096a5:  call     0x417800                        
0x4096aa:  add      esp, 0xc                        
0x4096ad:  add      esp, 0x18                       
0x4096b0:  pop      ebp                             
0x4096b1:  ret                                      
0x4096b2:  nop      word ptr cs:[eax + eax]         
0x4096bc:  nop      dword ptr [eax]                 
0x4096c0:  push     ebp                             
0x4096c1:  sub      esp, 0x18                       
0x4096c4:  add      ebp, 0xc                        
0x4096c7:  mov      eax, dword ptr [ebp - 0x24]     
0x4096ca:  cmp      byte ptr [ebp - 0x1e], 0        
0x4096ce:  je       0x4096e0                        
0x4096d0:  cmp      al, 3                           
0x4096d2:  ja       0x4096e0                        
0x4096d4:  lea      eax, [ebp - 0x4c]               
0x4096d7:  push     eax                             
0x4096d8:  call     0x40d150                        
0x4096dd:  add      esp, 4                          
0x4096e0:  add      esp, 0x18                       
0x4096e3:  pop      ebp                             
0x4096e4:  ret                                      
0x4096e5:  nop      word ptr cs:[eax + eax]         
0x4096ef:  nop                                      
0x4096f0:  push     ebp                             
0x4096f1:  sub      esp, 0x18                       
0x4096f4:  add      ebp, 0xc                        
0x4096f7:  lea      ecx, [ebp - 0x200]              
0x4096fd:  call     0x406a30                        
0x409702:  add      esp, 0x18                       
0x409705:  pop      ebp                             
0x409706:  ret                                      
0x409707:  nop      word ptr [eax + eax]            
0x409710:  push     ebp                             
0x409711:  sub      esp, 0x18                       
0x409714:  add      ebp, 0xc                        
0x409717:  mov      eax, dword ptr [ebp - 0x24]     
0x40971a:  cmp      byte ptr [ebp - 0x1f], 0        
0x40971e:  je       0x409730                        
0x409720:  cmp      al, 3                           
0x409722:  ja       0x409730                        
0x409724:  lea      eax, [ebp - 0x80]               
0x409727:  push     eax                             
0x409728:  call     0x40d150                        
0x40972d:  add      esp, 4                          
0x409730:  add      esp, 0x18                       
0x409733:  pop      ebp                             
0x409734:  ret                                      
0x409735:  int3                                     
0x409736:  int3                                     
0x409737:  int3                                     
0x409738:  int3                                     
0x409739:  int3                                     
0x40973a:  int3                                     
0x40973b:  int3                                     
0x40973c:  int3                                     
0x40973d:  int3                                     
0x40973e:  int3                                     
0x40973f:  int3                                     
0x409740:  push     ebx                             
0x409741:  push     edi                             
0x409742:  push     esi                             
0x409743:  call     0x409748                        
0x409748:  pop      esi                             
0x409749:  cmp      edx, 0x3f                       
0x40974c:  jbe      0x40981f                        
0x409752:  cmp      word ptr [ecx], 0x5a4d          
0x409757:  jne      0x40981f                        
0x40975d:  mov      edi, dword ptr [ecx + 0x3c]     
0x409760:  cmp      edi, -7                         
0x409763:  ja       0x409816                        
0x409769:  lea      ebx, [edi + 6]                  
0x40976c:  cmp      ebx, edx                        
0x40976e:  ja       0x409816                        
0x409774:  lea      eax, [edi + 4]                  
0x409777:  cmp      eax, edx                        
0x409779:  ja       0x409832                        
0x40977f:  cmp      dword ptr [ecx + edi], 0x4550   
0x409786:  jne      0x409816                        
0x40978c:  cmp      ebx, eax                        
0x40978e:  jb       0x409844                        
0x409794:  mov      edi, dword ptr [esp + 0x14]     
0x409798:  mov      edx, dword ptr [esp + 0x10]     
0x40979c:  movzx    eax, word ptr [ecx + eax]       
0x4097a0:  add      edi, -4                         
0x4097a3:  add      esi, dword ptr [edi*4 + 0x409860]
0x4097aa:  jmp      esi                             
0x4097ac:  cmp      dword ptr [edx], 0x36383669     
0x4097b2:  mov      cx, 0x14c                       
0x4097b6:  je       0x4097d3                        
0x4097b8:  jmp      0x409800                        
0x4097ba:  mov      esi, 0x5f363878                 
0x4097bf:  mov      cx, 0x8664                      
0x4097c3:  xor      esi, dword ptr [edx]            
0x4097c5:  movzx    edx, word ptr [edx + 4]         
0x4097c9:  xor      edx, 0x3436                     
0x4097cf:  or       edx, esi                        
0x4097d1:  jne      0x409800                        
0x4097d3:  movzx    edx, ax                         
0x4097d6:  cmp      edx, 0x14c                      
0x4097dc:  je       0x4097e3                        
0x4097de:  cmp      ax, cx                          
0x4097e1:  jne      0x409856                        
0x4097e3:  xor      eax, eax                        
0x4097e5:  pop      esi                             
0x4097e6:  pop      edi                             
0x4097e7:  pop      ebx                             
0x4097e8:  ret                                      
0x4097e9:  mov      esi, 0x63726161                 
0x4097ee:  mov      edi, 0x34366863                 
0x4097f3:  mov      cx, 0xaa64                      
0x4097f7:  xor      esi, dword ptr [edx]            
0x4097f9:  xor      edi, dword ptr [edx + 3]        
0x4097fc:  or       edi, esi                        
0x4097fe:  je       0x4097d3                        
0x409800:  push     0x5e3fc8                         ; 't?^'
0x409805:  push     0x28                            
0x409807:  push     0x5e3f9e                         ; 'internal error: entered unreachable code'
0x40980c:  call     0x5db8e0                        
0x409811:  add      esp, 0xc                        
0x409814:  ud2                                      
0x409816:  push     0x26                            
0x409818:  push     0x5e4040                        
0x40981d:  jmp      0x409826                        
0x40981f:  push     0x1e                            
0x409821:  push     0x5e4066                        
0x409826:  call     0x5d77c0                        
0x40982b:  add      esp, 8                          
0x40982e:  pop      esi                             
0x40982f:  pop      edi                             
0x409830:  pop      ebx                             
0x409831:  ret                                      
0x409832:  push     0x5e4030                         ; 't?^'
0x409837:  push     edx                             
0x409838:  push     eax                             
0x409839:  push     edi                             
0x40983a:  call     0x5db940                        
0x40983f:  add      esp, 0x10                       
0x409842:  ud2                                      
0x409844:  push     0x5e4020                         ; 't?^'
0x409849:  push     edx                             
0x40984a:  push     ebx                             
0x40984b:  push     eax                             
0x40984c:  call     0x5db940                        
0x409851:  add      esp, 0x10                       
0x409854:  ud2                                      
0x409856:  push     0x48                            
0x409858:  push     0x5e3fd8                         ; 'the installer launcher architecture is not compatible with this computert?^'
0x40985d:  jmp      0x409826                        
0x40985f:  nop                                      
0x409860:  add      byte ptr fs:[eax], al           
0x409863:  add      byte ptr [eax + 0x72000000], bh 
0x409869:  add      byte ptr [eax], al              
0x40986b:  add      byte ptr [ecx + 0x55000000], ah 
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
0x40b47b:  push     0x5e4230                         ; 't?^'
0x40b480:  push     0x10000                         
0x40b485:  push     edx                             
0x40b486:  push     0                               
0x40b488:  call     0x5db940                        
0x40b48d:  add      esp, 0x10                       
0x40b490:  ud2                                      
0x40b492:  push     0x22                            
0x40b494:  push     0x5e41cd                         ; 'the download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
0x40b499:  call     0x5d77c0                        
0x40b49e:  add      esp, 8                          
0x40b4a1:  jmp      0x40b40a                        
0x40b4a6:  push     0x22                            
0x40b4a8:  push     0x5e41cd                         ; 'the download is unexpectedly largethe download was interruptedthe server returned an empty downloadt?^'
0x40b4ad:  call     0x5d77c0                        
0x40b4b2:  add      esp, 8                          
0x40b4b5:  mov      ecx, dword ptr [esi + 8]        
0x40b4b8:  mov      dword ptr [ecx + 4], eax        
0x40b4bb:  mov      dword ptr [ecx], 0xffffffff     
0x40b4c1:  jmp      0x40b452                        
0x40b4c3:  push     0x25                            
0x40b4c5:  push     0x5e420b                         ; 'the server returned an empty downloadt?^'
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
0x40b612:  push     0x5e42a0                         ; 'struct UpdateManifeststruct PlatformRelease'
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
0x40b632:  push     0x5e42b5                         ; 'struct PlatformRelease'
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
0x40b7f7:  mov      dword ptr [esi + 0x12c], 0x40df90
0x40b801:  mov      edx, dword ptr [ebp + 0xc]      
0x40b804:  lea      eax, [esi + 0x128]              
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
0x40c482:  push     0x5e4cd4                         ; 'LE^'
0x40c487:  push     0xb                             
0x40c489:  push     ebx                             
0x40c48a:  push     0                               
0x40c48c:  call     0x5db940                        
0x40c491:  add      esp, 0x10                       
0x40c494:  jmp      0x40c5c8                        
0x40c499:  mov      dword ptr [esi + 0x130], 9      
0x40c4a3:  push     0x5e4600                         ; 'LE^'
0x40c4a8:  push     0xc                             
0x40c4aa:  push     eax                             
0x40c4ab:  push     0                               
0x40c4ad:  call     0x5db940                        
0x40c4b2:  add      esp, 0x10                       
0x40c4b5:  jmp      0x40c5c8                        
0x40c4ba:  mov      dword ptr [esi + 0x130], 7      
0x40c4c4:  push     0x5e45f0                         ; 'LE^'
0x40c4c9:  push     0x35                            
0x40c4cb:  push     0x5e45b8                         ; 'assertion failed: edge.height == self.node.height - 1'
0x40c4d0:  call     0x5db8e0                        
0x40c4d5:  add      esp, 0xc                        
0x40c4d8:  jmp      0x40c5c8                        
0x40c4dd:  mov      dword ptr [esi + 0x130], 7      
0x40c4e7:  push     0x1c8                           
0x40c4ec:  push     8                               
0x40c4ee:  call     0x5db4e0                        
0x40c4f3:  add      esp, 8                          
0x40c4f6:  jmp      0x40c5c8                        
0x40c4fc:  xchg     byte ptr [eax], dh              
0x40c4fe:  add      dword ptr [eax], eax            