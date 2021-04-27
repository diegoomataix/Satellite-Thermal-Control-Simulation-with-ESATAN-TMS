      PROGRAM HELLOWORLD_ACASE01                                                
C   
      INCLUDE 'HELLOWOR.h'                                                      
C   
      CHARACTER MNAME * 24                                                      
C   
      MNAME = 'HELLOWORLD_ACASE01      '                                        
C   
      FLG(1) = 130                                                              
      FLG(2) = 156                                                              
      FLG(3) = 0                                                                
      FLG(4) = 1401                                                             
      FLG(5) = 0                                                                
      FLG(6) = 1                                                                
      FLG(7) = 0                                                                
      FLG(8) = 0                                                                
      FLG(9) = 0                                                                
      FLG(10) = 0                                                               
      FLG(11) = 2                                                               
      FLG(12) = 0                                                               
      FLG(13) = 49                                                              
      FLG(14) = 25                                                              
      FLG(15) = 16                                                              
      FLG(16) = 1                                                               
      FLG(17) = 92                                                              
      FLG(18) = 0                                                               
      FLG(19) = 0                                                               
      FLG(20) = 0                                                               
      FLG(21) = 0                                                               
      FLG(22) = 0                                                               
      FLG(23) = 0                                                               
      FLG(24) = 7030                                                            
      FLG(25) = 2                                                               
      FLG(26) = 1                                                               
      FLG(27) = 133                                                             
      FLG(28) = 1003377                                                         
      FLG(29) = 1                                                               
      FLG(30) = 0                                                               
      FLG(31) = 0                                                               
      FLG(32) = 0                                                               
      FLG(33) = 0                                                               
      FLG(34) = 0                                                               
      FLG(35) = 22                                                              
      FLG(36) = 1                                                               
      FLG(37) = 0                                                               
      FLG(38) = 0                                                               
      FLG(39) = 2802                                                            
      FLG(40) = 0                                                               
      FLG(41) = 0                                                               
      CALL SVMNAM(MNAME)                                                        
C   
      SPRNDM = 1                                                                
      SPRNDN = 3                                                                
      USRNDC = 0                                                                
      USRNDI = 0                                                                
      USRNDR = 0                                                                
C   
      CALL MAINA(MNAME)                                                         
C   
      CALL SUCCES                                                               
C   
      STOP                                                                      
C   
      END                                                                       
      SUBROUTINE IN0001                                                 
      INCLUDE 'HELLOWOR.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = .TRUE.                                                   
      OPBLOK = 'INITIAL   '                                             
      IG(2) = 1                                                         
      CALL GM0001(HTFLAG)                                               
      CALL FINITS(' ' , -    1)                                         
      QI(MD(3,1)+25)=2.604167D+00                                       
      QI(MD(3,1)+26)=2.604167D+00                                       
      QI(MD(3,1)+27)=2.604167D+00                                       
      QI(MD(3,1)+28)=2.604167D+00                                       
      QI(MD(3,1)+29)=1.5625D+00                                         
      QI(MD(3,1)+30)=1.5625D+00                                         
      QI(MD(3,1)+31)=1.5625D+00                                         
      QI(MD(3,1)+32)=1.5625D+00                                         
      QI(MD(3,1)+33)=2.083333D+00                                       
      QI(MD(3,1)+34)=2.083333D+00                                       
      QI(MD(3,1)+35)=2.083333D+00                                       
      QI(MD(3,1)+36)=2.083333D+00                                       
      QI(MD(3,1)+37)=1.5625D+00                                         
      QI(MD(3,1)+38)=1.5625D+00                                         
      QI(MD(3,1)+39)=1.5625D+00                                         
      QI(MD(3,1)+40)=1.5625D+00                                         
      QI(MD(3,1)+41)=2.083333D+00                                       
      QI(MD(3,1)+42)=2.083333D+00                                       
      QI(MD(3,1)+43)=2.083333D+00                                       
      QI(MD(3,1)+44)=2.083333D+00                                       
      QI(MD(3,1)+45)=2.604167D+00                                       
      QI(MD(3,1)+46)=2.604167D+00                                       
      QI(MD(3,1)+47)=2.604167D+00                                       
      QI(MD(3,1)+48)=2.604167D+00                                       
      QI(MD(3,1)+73)=9.191176D-01                                       
      QI(MD(3,1)+74)=9.191176D-01                                       
      QI(MD(3,1)+75)=9.191176D-01                                       
      QI(MD(3,1)+76)=9.191176D-01                                       
      QI(MD(3,1)+77)=1.102941D+00                                       
      QI(MD(3,1)+78)=1.102941D+00                                       
      QI(MD(3,1)+79)=1.102941D+00                                       
      QI(MD(3,1)+80)=1.102941D+00                                       
      QI(MD(3,1)+81)=1.102941D+00                                       
      QI(MD(3,1)+82)=1.102941D+00                                       
      QI(MD(3,1)+83)=1.102941D+00                                       
      QI(MD(3,1)+84)=1.102941D+00                                       
      QI(MD(3,1)+85)=1.102941D+00                                       
      QI(MD(3,1)+86)=1.102941D+00                                       
      QI(MD(3,1)+87)=1.102941D+00                                       
      QI(MD(3,1)+88)=1.102941D+00                                       
      QI(MD(3,1)+89)=1.102941D+00                                       
      QI(MD(3,1)+90)=1.102941D+00                                       
      QI(MD(3,1)+91)=1.102941D+00                                       
      QI(MD(3,1)+92)=1.102941D+00                                       
      QI(MD(3,1)+93)=9.191176D-01                                       
      QI(MD(3,1)+94)=9.191176D-01                                       
      QI(MD(3,1)+95)=9.191176D-01                                       
      QI(MD(3,1)+96)=9.191176D-01                                       
      OPBLOK = ' '                                                      
      RETURN                                                            
      END                                                               
      SUBROUTINE V10001                                                 
      INCLUDE 'HELLOWOR.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = (SOLTYP .EQ. 'THERMAL' .OR. SOLTYP .EQ. 'HUMID')         
      OPBLOK = 'VARIABLES1'                                             
      IG(2) = 1                                                         
      CALL PRMUPD                                                       
      CALL CHKTRM                                                       
      CALL ACDDYU                                                       
      CALL HEATER_UPDATE                                                
      IG(2) = 1                                                         
      QI(MD(3,1)+25)=2.604167D+00                                       
      QI(MD(3,1)+26)=2.604167D+00                                       
      QI(MD(3,1)+27)=2.604167D+00                                       
      QI(MD(3,1)+28)=2.604167D+00                                       
      QI(MD(3,1)+29)=1.5625D+00                                         
      QI(MD(3,1)+30)=1.5625D+00                                         
      QI(MD(3,1)+31)=1.5625D+00                                         
      QI(MD(3,1)+32)=1.5625D+00                                         
      QI(MD(3,1)+33)=2.083333D+00                                       
      QI(MD(3,1)+34)=2.083333D+00                                       
      QI(MD(3,1)+35)=2.083333D+00                                       
      QI(MD(3,1)+36)=2.083333D+00                                       
      QI(MD(3,1)+37)=1.5625D+00                                         
      QI(MD(3,1)+38)=1.5625D+00                                         
      QI(MD(3,1)+39)=1.5625D+00                                         
      QI(MD(3,1)+40)=1.5625D+00                                         
      QI(MD(3,1)+41)=2.083333D+00                                       
      QI(MD(3,1)+42)=2.083333D+00                                       
      QI(MD(3,1)+43)=2.083333D+00                                       
      QI(MD(3,1)+44)=2.083333D+00                                       
      QI(MD(3,1)+45)=2.604167D+00                                       
      QI(MD(3,1)+46)=2.604167D+00                                       
      QI(MD(3,1)+47)=2.604167D+00                                       
      QI(MD(3,1)+48)=2.604167D+00                                       
      QI(MD(3,1)+73)=9.191176D-01                                       
      QI(MD(3,1)+74)=9.191176D-01                                       
      QI(MD(3,1)+75)=9.191176D-01                                       
      QI(MD(3,1)+76)=9.191176D-01                                       
      QI(MD(3,1)+77)=1.102941D+00                                       
      QI(MD(3,1)+78)=1.102941D+00                                       
      QI(MD(3,1)+79)=1.102941D+00                                       
      QI(MD(3,1)+80)=1.102941D+00                                       
      QI(MD(3,1)+81)=1.102941D+00                                       
      QI(MD(3,1)+82)=1.102941D+00                                       
      QI(MD(3,1)+83)=1.102941D+00                                       
      QI(MD(3,1)+84)=1.102941D+00                                       
      QI(MD(3,1)+85)=1.102941D+00                                       
      QI(MD(3,1)+86)=1.102941D+00                                       
      QI(MD(3,1)+87)=1.102941D+00                                       
      QI(MD(3,1)+88)=1.102941D+00                                       
      QI(MD(3,1)+89)=1.102941D+00                                       
      QI(MD(3,1)+90)=1.102941D+00                                       
      QI(MD(3,1)+91)=1.102941D+00                                       
      QI(MD(3,1)+92)=1.102941D+00                                       
      QI(MD(3,1)+93)=9.191176D-01                                       
      QI(MD(3,1)+94)=9.191176D-01                                       
      QI(MD(3,1)+95)=9.191176D-01                                       
      QI(MD(3,1)+96)=9.191176D-01                                       
      CALL GM0001(HTFLAG)                                               
      OPBLOK = ' '                                                      
      RETURN                                                            
      END                                                               
      SUBROUTINE GM0001(HTFLAG)                                         
      LOGICAL HTFLAG                                                    
      RETURN                                                            
      END                                                               
      SUBROUTINE V20001                                                 
      INCLUDE 'HELLOWOR.h'
      OPBLOK = 'VARIABLES2'                                             
      IG(2) = 1                                                         
      CALL SSNCNT(FLG(24),FLG(25),MAX0(FLG(1),1),PCS,T)                 
      IG(25) = IG(25) + 1                                               
      CALL PRMUPD                                                       
      CALL HEATER_UPDATE                                                
      IG(2) = 1                                                         
      OPBLOK = ' '                                                      
      CALL PARWRT('VARIABLES2')                                         
      RETURN                                                            
      END                                                               
      SUBROUTINE EXECTN                                                 
      INCLUDE 'HELLOWOR.h'
      RG(13)=0.01                                                       
      IG(4)=100                                                         
      CALL SOLVFM                                                       
      RG(18)=RU(MD(8,1)+1)                                              
      RG(3)=RG(18)/100.0                                                
      RG(12)=RG(18)/10.0                                                
      CALL SLCRNC                                                       
      RG(18)=6050.2473                                                  
      RG(12)=605.02473                                                  
      IG(4)=500                                                         
      RG(13)=0.01                                                       
      RG(3)=10.0                                                        
      CALL SOLCYC('SLCRNC',0.01D0,0.01D0,6050.2473D0,50,' ','NONE')     
      CALL SLCRNC                                                       
      RETURN                                                            
      END                                                               
      SUBROUTINE OUTPUT                                                 
      INCLUDE 'HELLOWOR.h'
      IF (OUTIME .NE. 'ALL') RETURN                                     
      OPBLOK = 'OUTPUTS'                                                
      CALL PRNDTB(' ','L, T, QS, QE, QA, QI, C',1)                      
      CALL DMPTMD(' ','NODES, CONDUCTORS, CONSTANTS',1,' ')             
      OPBLOK = ' '                                                      
      CALL PARWRT('OUTPUTS')                                            
      RETURN                                                            
      END                                                               
