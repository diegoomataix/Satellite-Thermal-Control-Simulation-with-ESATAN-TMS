      PROGRAM GAGARINSAT_CFG2_CASE_00                                           
C   
      INCLUDE 'GAGARINS.h'                                                      
C   
      CHARACTER MNAME * 24                                                      
C   
      MNAME = 'GAGARINSAT_CFG2_CASE_00 '                                        
C   
      FLG(1) = 129                                                              
      FLG(2) = 209                                                              
      FLG(3) = 0                                                                
      FLG(4) = 1372                                                             
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
      FLG(24) = 7120                                                            
      FLG(25) = 2                                                               
      FLG(26) = 3                                                               
      FLG(27) = 133                                                             
      FLG(28) = 1003383                                                         
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
      FLG(39) = 2744                                                            
      FLG(40) = 0                                                               
      FLG(41) = 0                                                               
      CALL SVMNAM(MNAME)                                                        
C   
      SPRNDM = 4                                                                
      SPRNDN = 3                                                                
      USRNDC = 0                                                                
      USRNDI = 0                                                                
      USRNDR = 4                                                                
      SPRNDE(1,1) = 'T_MIN             '                                        
      SPRNDE(2,1) = 'TIM_MIN           '                                        
      SPRNDE(3,1) = 'T_MAX             '                                        
      SPRNDE(4,1) = 'TIM_MAX           '                                        
C   
      CALL MAINA(MNAME)                                                         
C   
      CALL SUCCES                                                               
C   
      STOP                                                                      
C   
      END                                                                       
      SUBROUTINE IN0002                                                 
      INCLUDE 'GAGARINS.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = .TRUE.                                                   
      IG(2) = 2                                                         
      CALL SETNDR(' ','T_MIN',1.0D10,2)                                 
      CALL SETNDR(' ','T_MAX',-1.0D10,2)                                
      CALL GM0002(HTFLAG)                                               
      CALL FINITS(' ' , -    2)                                         
      RETURN                                                            
      END                                                               
      SUBROUTINE V10002                                                 
      INCLUDE 'GAGARINS.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = (SOLTYP .EQ. 'THERMAL' .OR. SOLTYP .EQ. 'HUMID')         
      IG(2) = 2                                                         
      CALL GM0002(HTFLAG)                                               
      RETURN                                                            
      END                                                               
      SUBROUTINE GM0002(HTFLAG)                                         
      LOGICAL HTFLAG                                                    
      RETURN                                                            
      END                                                               
      SUBROUTINE V20002                                                 
      INCLUDE 'GAGARINS.h'
      IG(2) = 2                                                         
      CALL STORMM('T','T_MIN','TIM_MIN','T_MAX','TIM_MAX')              
      RETURN                                                            
      END                                                               
      SUBROUTINE IN0003                                                 
      INCLUDE 'GAGARINS.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = .TRUE.                                                   
      IG(2) = 3                                                         
      CALL SETNDR(' ','T_MIN',1.0D10,3)                                 
      CALL SETNDR(' ','T_MAX',-1.0D10,3)                                
      CALL GM0003(HTFLAG)                                               
      CALL FINITS(' ' , -    3)                                         
      RETURN                                                            
      END                                                               
      SUBROUTINE V10003                                                 
      INCLUDE 'GAGARINS.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = (SOLTYP .EQ. 'THERMAL' .OR. SOLTYP .EQ. 'HUMID')         
      IG(2) = 3                                                         
      CALL GM0003(HTFLAG)                                               
      RETURN                                                            
      END                                                               
      SUBROUTINE GM0003(HTFLAG)                                         
      LOGICAL HTFLAG                                                    
      RETURN                                                            
      END                                                               
      SUBROUTINE V20003                                                 
      INCLUDE 'GAGARINS.h'
      IG(2) = 3                                                         
      CALL STORMM('T','T_MIN','TIM_MIN','T_MAX','TIM_MAX')              
      RETURN                                                            
      END                                                               
      SUBROUTINE IN0001                                                 
      INCLUDE 'GAGARINS.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = .TRUE.                                                   
      OPBLOK = 'INITIAL   '                                             
      CALL IN0002                                                       
      CALL IN0003                                                       
      IG(2) = 1                                                         
      CALL SETNDR(' ','T_MIN',1.0D10,1)                                 
      CALL SETNDR(' ','T_MAX',-1.0D10,1)                                
      CALL GM0001(HTFLAG)                                               
      CALL FINITS(' ' , -    1)                                         
      QI(MD(3,1)+105)=3.75D-02                                          
      QI(MD(3,1)+106)=3.75D-02                                          
      QI(MD(3,1)+107)=3.75D-02                                          
      QI(MD(3,1)+108)=3.75D-02                                          
      QI(MD(3,1)+85)=4.076087D-01                                       
      QI(MD(3,1)+86)=4.076087D-01                                       
      QI(MD(3,1)+87)=4.076087D-01                                       
      QI(MD(3,1)+88)=4.076087D-01                                       
      QI(MD(3,1)+89)=2.173913D-01                                       
      QI(MD(3,1)+90)=2.173913D-01                                       
      QI(MD(3,1)+91)=2.173913D-01                                       
      QI(MD(3,1)+92)=2.173913D-01                                       
      QI(MD(3,1)+93)=2.173913D-01                                       
      QI(MD(3,1)+94)=2.173913D-01                                       
      QI(MD(3,1)+95)=2.173913D-01                                       
      QI(MD(3,1)+96)=2.173913D-01                                       
      QI(MD(3,1)+97)=4.076087D-01                                       
      QI(MD(3,1)+98)=4.076087D-01                                       
      QI(MD(3,1)+99)=4.076087D-01                                       
      QI(MD(3,1)+100)=4.076087D-01                                      
      QI(MD(3,3)+1)=5.D-01                                              
      QI(MD(3,3)+1)=QI(MD(3,3)+1)+2.D+00                                
      OPBLOK = ' '                                                      
      RETURN                                                            
      END                                                               
      SUBROUTINE V10001                                                 
      INCLUDE 'GAGARINS.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = (SOLTYP .EQ. 'THERMAL' .OR. SOLTYP .EQ. 'HUMID')         
      OPBLOK = 'VARIABLES1'                                             
      IG(2) = 1                                                         
      CALL PRMUPD                                                       
      CALL CHKTRM                                                       
      CALL ACDDYU                                                       
      CALL HEATER_UPDATE                                                
      CALL V10002                                                       
      CALL V10003                                                       
      IG(2) = 1                                                         
      QI(MD(3,1)+105)=3.75D-02                                          
      QI(MD(3,1)+106)=3.75D-02                                          
      QI(MD(3,1)+107)=3.75D-02                                          
      QI(MD(3,1)+108)=3.75D-02                                          
      QI(MD(3,1)+85)=4.076087D-01                                       
      QI(MD(3,1)+86)=4.076087D-01                                       
      QI(MD(3,1)+87)=4.076087D-01                                       
      QI(MD(3,1)+88)=4.076087D-01                                       
      QI(MD(3,1)+89)=2.173913D-01                                       
      QI(MD(3,1)+90)=2.173913D-01                                       
      QI(MD(3,1)+91)=2.173913D-01                                       
      QI(MD(3,1)+92)=2.173913D-01                                       
      QI(MD(3,1)+93)=2.173913D-01                                       
      QI(MD(3,1)+94)=2.173913D-01                                       
      QI(MD(3,1)+95)=2.173913D-01                                       
      QI(MD(3,1)+96)=2.173913D-01                                       
      QI(MD(3,1)+97)=4.076087D-01                                       
      QI(MD(3,1)+98)=4.076087D-01                                       
      QI(MD(3,1)+99)=4.076087D-01                                       
      QI(MD(3,1)+100)=4.076087D-01                                      
      QI(MD(3,3)+1)=5.D-01                                              
      QI(MD(3,3)+1)=QI(MD(3,3)+1)+2.D+00                                
      CALL GM0001(HTFLAG)                                               
      OPBLOK = ' '                                                      
      RETURN                                                            
      END                                                               
      SUBROUTINE GM0001(HTFLAG)                                         
      LOGICAL HTFLAG                                                    
      RETURN                                                            
      END                                                               
      SUBROUTINE V20001                                                 
      INCLUDE 'GAGARINS.h'
      OPBLOK = 'VARIABLES2'                                             
      IG(2) = 1                                                         
      CALL SSNCNT(FLG(24),FLG(25),MAX0(FLG(1),1),PCS,T)                 
      IG(25) = IG(25) + 1                                               
      CALL PRMUPD                                                       
      CALL HEATER_UPDATE                                                
      CALL V20002                                                       
      CALL V20003                                                       
      IG(2) = 1                                                         
      CALL STORMM('T','T_MIN','TIM_MIN','T_MAX','TIM_MAX')              
      OPBLOK = ' '                                                      
      CALL PARWRT('VARIABLES2')                                         
      RETURN                                                            
      END                                                               
      SUBROUTINE EXECTN                                                 
      INCLUDE 'GAGARINS.h'
      RG(18)=6059.2857                                                  
      RG(12)=605.92857                                                  
      IG(4)=100                                                         
      RG(13)=0.01                                                       
      RG(3)=1.0                                                         
      CALL SOLCYC('SLCRNC',0.1D0,0.05D0,6059.2857D0,10,' ','NONE')      
      CALL SLCRNC                                                       
      CALL PRNDTB(' ','T_MIN,TIM_MIN,T_MAX,TIM_MAX',1)                  
      RETURN                                                            
      END                                                               
      SUBROUTINE OUTPUT                                                 
      INCLUDE 'GAGARINS.h'
      IF (OUTIME .NE. 'ALL') RETURN                                     
      OPBLOK = 'OUTPUTS'                                                
      CALL PRNDTB(' ','L, T, QS, QE, QA, QI, C',1)                      
      CALL DMPTMD(' ','NODES, CONDUCTORS, CONSTANTS',1,' ')             
      OPBLOK = ' '                                                      
      CALL PARWRT('OUTPUTS')                                            
      RETURN                                                            
      END                                                               
