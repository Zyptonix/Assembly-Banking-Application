.MODEL SMALL
   
 
.STACK 100H

.DATA 

;Initial BIG Message
    ini1 db '       _____                __    (_)                   ____$'                 
    ini2 db '      / __  )____ _ ____   / /__  __  ____   ____      / __ \  ____    ____$'    
    ini3 db '     / __  // __ `// __ \ / //_/ / / / __ \ / __ \    / / / / / __ \  / __ \$'
    ini4 db '    / /_/ // /_/ // / / // ,<   / / / / / // /_/ /   / /=/ / / /_/ / / /_/ /$'
    ini5 db '   /_____/ \__,_//_/ /_//_/|_| /_/ /_/ /_/ \__, /   /_/ /_/ / .___/ / .___/$' 
    ini6 db '                                            /__/           /_/     /_/$'                                                                                                                                               
    
    create1 db '      ______                    __$'      
    create2 db '     / ____/_____ ___   ____ _ / /_ ___$' 
    create3 db '    / /    / ___// _ \ / __ `// __// _ \$'
    create4 db '   / /___ / /   / ___// /_/ // /_ /  __/$'
    create5 db '   \____//_/    \___/ \__,_/ \__/ \___/$'  
        
    login1 db '      __                      (_)$'      
    login2 db '     / /    _______  ____     __  ____$' 
    login3 db '    / /    / ___  / / __ \   / / / __ \$'
    login4 db '   / /___ / /__/ / / /_/ /  / / / / / /$'
    login5 db '   \____//______/  \__, /  /_/ /_/ /_/$'  
    login6 db '                    /__/$'
    
    modify1 db '       __  ___            __ _  ____$'      
    modify2 db '      /  |/  /____   ____/ /(_)/ __/__  __$'
    modify3 db '     / /|_/ // __ \ / __  // // /_ / / / /$'
    modify4 db '    / /  / // /_/ // /_/ // // __// /_/ /$' 
    modify5 db '   /_/  /_/ \____/ \__,_//_//_/   \__, /$'  
    modify6 db '                                 /____/$'
    
    withdraw1 db '    _       __ _  __   __         __$'                      
    withdraw2 db '   | |     / /(_)/ /_ / /_   ____/ /_____ ____ _ _      __$'
    withdraw3 db '   | | /| / // // __// __ \ / __  // ___// __ `/| | /| / /$'
    withdraw4 db '   | |/ |/ // // /_ / / / // /_/ // /   / /_/ / | |/ |/ /$' 
    withdraw5 db '   |__/|__//_/ \__//_/ /_/ \__,_//_/    \__,_/  |__/|__/$'  
                                                         
    deposit1 db '       ____                             _  __ $'
    deposit2 db '      / __ \ ___   ____   ____   _____ (_)/ /_$'
    deposit3 db '     / / / // _ \ / __ \ / __ \ / ___// // __/$'
    deposit4 db '    / /_/ //  __// /_/ // /_/ /(__  )/ // /_$'  
    deposit5 db '   /_____/ \___// .___/ \____//____//_/ \__/$'  
    deposit6 db '               /_/$'                                                               
    
    details1 db '       ____         __          _  __$'     
    details2 db '      / __ \ ___   / /_ ____ _ (_)/ /_____$'
    details3 db '     / / / // _ \ / __// __ `// // // ___/$'
    details4 db '    / /_/ //  __// /_ / /_/ // // /(__  )$' 
    details5 db '   /_____/ \___/ \__/ \__,_//_//_//____/$'
    
    logout1 db '      __                      (_)        $'      
    logout2 db '     / /    _______  ____     ______  __  __   __ $'
    logout3 db '    / /    / ___  / / __ \   / __  / / / / / _/_/$'
    logout4 db '   / /___ / /__/ / / /_/ /  / / / / / / / / /___/ $'
    logout5 db '   \____//______/  \__, /  /_____/ /_____/  /_/$'  
    logout6 db '                    /__/$'
    
    bye1 db '   ____   __   __  _____ $' 
    bye2 db '  | __ )  \ \ / / | ____|$' 
    bye3 db '  |  _ \   \   /  |  _| $'   
    bye4 db '  | |_) |   | |   | |___$'   
    bye5 db '  |____/    |_|   |_____|$'  
     
       
                                     
;MENU Prompts      
    menu0 db '0. Exit$'
    menu1 db '1. Create new Account$'
    menu2 db '2. Log in to existing acount$'
    menu3 db '3. Modify Account Credentials$'
    menu4 db '4. Deposit Money$'
    menu5 db '5. Withdraw Money$'
    menu6 db '6. Account Details$' 
    menu7 db '7. Log Out$'
    menuerror db 'Wrong input. Please try again$'  
    inputmsg db 'Please Select an option: $'
    input db ?
    
;CLEAR
    clear db '#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX#$'
    

    
    
;Create Messages
    createmsg1 db '1. Enter Account Name: $'
    createmsg3 db '2. Enter Account Pin: $'    
    createmsg4 db 'New Account Created Successfully ! $'    
    sorry1 db 'Maximum Number of accounts already Created$'
    
    
;Login Messages
    logmsg1 db '1. Enter Account Name: $'
    logmsg2 db '2. Enter Account Pin: $'    
    logmsg3 db 'Logged in Successfully ! $'    
    logmsg4 db 'Log in failed.Please try again$'
    logmsg5 db 'Please Create an account first$'
    
;Modify Messages
    modmsg1 db '1. Enter new Account Name: $'
    modmsg2 db '2. Enter new Account Pin: $'    
    modmsg3 db 'Account Modified Successfully ! $'    
    modmsg4 db 'Modification failed.No account selected$'     
    modmsg5 db 'Selected Account no: $'
    modmsg6 db 'Current Account Name: $'        
    modmsg7 db 'Modification completed. You will need to log in again$'     
;Logout Messages
    logmsg6 db 'Logged out Successfully ! $'
    logmsg7 db 'Please Log in again. $'    
;Deposit Messages
    depositmsg1 db 'Selected Account no: $'
    depositmsg2 db 'Current Account Name: $'    
    depositmsg3 db 'Please Enter a positive amount to be deposited: $'    
    depositmsg4 db 'Your account has been credited successfully$'
    depositmsg5 db 'Please Select an account first$'        
    depositmsg6 db 'Current Balance: $' 
    
;Withdraw Messages
    withdrawmsg1 db 'Selected Account no: $'
    withdrawmsg2 db 'Current Account Name: $'    
    withdrawmsg3 db 'Please Enter a positive amount to be withdrawn: $'    
    withdrawmsg4 db 'Your account has been debited successfully$'
    withdrawmsg5 db 'Please Select an account first$'        
    withdrawmsg6 db 'Current Balance: $'  
    withdrawmsg7 db 'Cannot withdraw more than account balance$'
    
;Details Messages
    detailsmsg1 db 'Selected Account no: $'
    detailsmsg2 db 'Current Account Name: $'    
    detailsmsg3 db 'Current Account Pin: $'    
    detailsmsg4 db 'Current Account Balance: $'
    detailsmsg5 db 'Please Select an account first$'        
    detailsmsg6 db 'Last 3 transactions: $'  
    tdeposit db 'deposit$'
    twithdraw db 'withdraw$'   
    saved dw ?
    gap db '  $'
    lastmsg db 'Transactions: $'                 

    
    
;ACCOUNTS    
    countacount dw 0 
    
    ;Selected Account   
    accountName db 100 dup('$')
    accountPIN db 100 dup('$')
    countpin dw 0       
    totalAmount dw 0
    amounttens dw 0
    acountno dw 0    
    depositAmount dw 0
    withdrawAmount dw 0    

    
    ;Account 1
    account1Name db 100 dup('$')
    account1PIN db 100 dup('$')
    countpin1 dw 0       
    totalAmount1 dw 0
    amounttens1 dw 0 
    depositAmount1 db 100 dup('$')
    withdrawAmount1 db 100 dup('$')
    
    ;Account 2
    account2Name db 100 dup('$')
    account2PIN db 100 dup('$')
    countpin2 dw 0       
    totalAmount2 dw 0
    amounttens2 dw 0
    depositAmount2 db 100 dup('$')
    withdrawAmount2 db 100 dup('$')
    
    ;Account 3
    account3Name db 100 dup('$')
    account3PIN db 100 dup('$')
    countpin3 dw 0       
    totalAmount3 dw 0
    amounttens3 dw 0
    depositAmount3 db 100 dup('$')
    withdrawAmount3 db 100 dup('$')
    



;Last3 Messages
    lastcount dw 0
    last1 dw ?
    last1type db 100 dup('$')
    last2 dw ?
    last2type db 100 dup('$')
    last3 dw ?
    last3type db 100 dup('$')     
    
                                   

    
    
    
.CODE



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                           U T I L S                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
;Macros
printNumber proc                    
    ;initilize count 
    
    mov cx,0 
    mov dx,0
     
    start: 
         
        cmp ax,0 
        je print1       
        mov bx,10          
        div bx                    
        push dx              
        inc cx                           
        mov dx,0 
        jmp start
         
    print1: 
        cmp cx,0 
        je exitprint 
        pop dx           
        add dx,30h  
        mov ah,2 
        int 21h  
        dec cx 
        jmp print1 
    exitprint:  
ret
printNumber endp



macro clearScreen clear1   
    call newLine
    call newLine
    printString clear1
    call newLine
endm

macro printString str   
  mov ah,9
  lea dx,str
  int 21h
endm



;Procs

newLine proc   
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
ret    
newLine endp

enter proc
   enter1:
      mov ah,1
      int 21h
      cmp al,13
      je home
      jmp enter1
ret
enter endp

clean proc
    clean1:
        mov al,[si]
        cmp al,'$'
        je inmatch4
        mov bl,'$'
        mov [si],'$'
        inc si
        jmp clean1 
        inmatch4:
ret
clean endp

    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                             M E N U                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    

;Take Input
takeinput proc
    call newLine
    printString inputmsg
    mov ah,01
    int 21h
    mov input,al
    ret 
takeinput endp
    
;Menu display
menu proc 
    ;Inital Big message
        printString ini1
        call newLine
        printString ini2
        call newLine
        printString ini3
        call newLine
        printString ini4
        call newLine
        printString ini5
        call newLine
        printString ini6
        call newLine
    ;options    
        clearScreen clear
        printString menu0
        call newLine
        printString menu1
        call newLine
        printString menu2
        call newLine
        printString menu3
        call newLine
        printString menu4
        call newLine
        printString menu5
        call newLine
        printString menu6
        call newLine
        printString menu7
        call newLine
ret
menu endp


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                         C R E A T E                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    

createname proc
ninput:
    mov ah,1
    int 21h
    cmp al,13
    je createnameEnd
    cmp al,8
    je Backn 
    mov [si],al
    inc si
    jmp ninput
    Backn:
    dec si
    mov [si],'$'
    mov dl,0
    mov ah,2
    int 21h
    mov dl,8
    int 21h
    jmp ninput 
    createnameEnd:    
ret
endp


createpin proc
pinput:
    mov ah,7
    int 21h
    cmp al,13 
    je createpinEnd
    inc [di]
    cmp al,8
    je Backp
    mov [si],al
    mov dl,'*'
    mov ah,2
    int 21h
    inc si
    jmp pinput 
    Backp:
    dec si
    mov [si],'$'
    mov ah,2
    mov dl,8
    int 21h
    mov dl,0
    int 21h
    mov dl,8
    int 21h
    jmp pinput
ret
endp


create proc
    ;Initial BIG Message
        clearScreen clear
        printString create1
        call newLine
        printString create2
        call newLine
        printString create3
        call newLine
        printString create4
        call newLine
        printString create5
        call newLine
        clearScreen clear 
    
    ;Selecting Account no.
        cmp countacount,0
        je countacount0
        cmp countacount,1
        je countacount1
        cmp countacount,2
        je countacount2
        cmp countacount,3
        je countacount3
    
    
    countacount0:
        printString createmsg1 
        mov si,offset account1Name
        call createname
        call newLine
        call newLine
        printString createmsg3
        mov si,offset account1PIN
        mov di,offset countpin1
        call createpin 
    
    countacount1:
        printString createmsg1
        mov si,offset account2Name
        call createname 
        call newLine
        call newLine
        printString createmsg3
        mov si,offset account2PIN
        mov di,offset countpin2
        call createpin 
    
    countacount2:
        printString createmsg1
        mov si,offset account3Name
        call createname 
        call newLine 
        call newLine
        printString createmsg3
        mov si,offset account3PIN
        mov di,offset countpin3
        call createpin 
    
    
    countacount3:
        printString sorry1
        call Enter   
    
    createpinEnd:
        call newLine
        call newLine
        inc countacount
        printString createmsg4
        call Enter
    
    ret
create endp

 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                           L O G I N                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
logname proc

linput1:
    mov ah,1
    int 21h
    cmp al,13
    je lognameEnd
    cmp al,8
    je Backl1 
    mov [si],al
    inc si
    jmp linput1
    Backl1:
    dec si
    mov [si],'$'
    mov dl,0
    mov ah,2
    int 21h
    mov dl,8
    int 21h
    jmp linput1
    lognameEnd:     
ret
logname endp

logpin proc

linput2:
    mov ah,7
    int 21h
    cmp al,13
    je logpinEnd1
    cmp al,8
    je Backl2 
    mov [si],al
    mov dl,'*'
    mov ah,2
    int 21h
    inc si
    jmp linput2
    Backl2:
    dec si
    mov [si],'$'
    mov ah,2
    mov dl,8
    int 21h
    mov dl,0
    int 21h
    mov dl,8
    int 21h
    jmp linput2     
ret
logpin endp
     

comparename proc

compare1:
    mov al,[si]
    mov bl,[di]
    cmp [di],'$'
    je inmatch1
    inc si
    inc di
    cmp al,bl
    je compare1 
    inmatch1:
    cmp al,bl
    je match
ret
comparename endp 
    



comparepin proc

comparep1:
    mov ax,0
    mov bx,0
    mov al,[si]
    mov bl,[di]
    cmp [di],'$'
    je inmatchp1
    inc si
    inc di
    cmp al,bl
    je comparep1 
    inmatchp1:
    cmp al,bl
    je match2
ret
comparepin endp
    

    
login proc
    ;Inital Big Message
        clearScreen clear
        printString login1
        call newLine
        printString login2
        call newLine
        printString login3
        call newLine
        printString login4
        call newLine
        printString login5
        call newLine
        printString login6
        call newLine
        clearScreen clear 
    ;No Account    
        cmp countacount,0 
        jne accountfound
        call newline
        printString logmsg5
        call Enter
        accountfound:
    ;Name Input        
        printString logmsg1
        mov si,offset accountName
        call logname 
    
    ;First Account Name Check
        mov acountno, 1
        mov si,offset accountName
        mov di,offset account1Name
        call comparename
    ;Second Account Name Check        
        cmp countacount,2
        jl end:
        mov acountno, 2
        mov si,offset accountName
        mov di,offset account2Name
        call comparename
    ;Third Account Name Check    
        cmp countacount,3
        jl end:
        mov acountno, 3
        mov si,offset accountName
        mov di,offset account3Name
        call comparename
    
    jmp end
    
    ;NAME MATCH
        match:
            call newline
            call newline
            ;PIN input
                printString logmsg2 
                mov si,offset accountPIN
                call logpin
                logPINEnd1: 
                call newLine
            ;Check if account1 and compare pin
                cmp acountno,1
                jne skip1          
                mov ax,totalamount1
                mov totalamount,ax
                mov si,offset accountPIN
                mov di,offset account1PIN
                call comparepin
                skip1:
            ;Check if account2 and compare pin
                cmp acountno,2
                jne skip2:
                mov ax,totalamount2
                mov totalamount,ax
                mov si,offset accountPIN
                mov di,offset account2PIN
                call comparepin
                skip2:
            ;Check if account3 and compare pin
                cmp acountno,3
                jne end:             
                mov ax,totalamount3
                mov totalamount,ax
                mov si,offset accountPIN
                mov di,offset account3PIN
                call comparepin
             jmp end
    
    ;PIN MATCH    
    match2:
               
        call newline
        printString logmsg3
        call newline
        call enter        
    ;NO MATCH
    end:
        mov totalamount,0
       
        call newLine 
        mov si,offset accountName
        call clean 
        mov si,offset accountPIN
        call clean    
        printString logmsg4
        call enter
ret
login endp

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                           M O D I F Y                             ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    

modname proc
minput1:
    mov ah,1
    int 21h
    cmp al,13
    je modnameEnd1
    cmp al,8
    je Backm1 
    mov [si],al
    inc si
    jmp minput1
    Backm1:
    dec si
    mov [si],'$'
    mov dl,0
    mov ah,2
    int 21h
    mov dl,8
    int 21h
    jmp minput1
    modnameEnd1:     
ret
modname endp

modpin proc
minput2:
    mov ah,7
    int 21h
    cmp al,13
    je modpinEnd1
    cmp al,8
    je Backm2 
    mov [si],al
    mov dl,'*'
    mov ah,2
    int 21h
    inc si
    jmp minput2
    Backm2:
    dec si
    mov [si],'$'
    mov ah,2
    mov dl,8
    int 21h
    mov dl,0
    int 21h
    mov dl,8
    int 21h
    jmp minput2     
ret
    jmp minput2
    modpinEnd1:     
ret
modpin endp



modify proc 
    
    ;Inital Big Message
        clearScreen clear
        printString modify1
        call newLine
        printString modify2
        call newLine
        printString modify3
        call newLine
        printString modify4
        call newLine
        printString modify5
        call newLine
        printString modify6
        call newLine
        clearScreen clear 
        
        
    ;Check Account selected
        cmp acountno,0 
        jne modaccountfound
        printString modmsg4
        call enter
    modaccountfound:
    ;Current account info
        printString modmsg5
        mov ax,acountno 
        call printNumber 
        call newline
        call newline
        printString modmsg6
        printString accountName
    
    ;First Account       
        cmp acountno,1
        jne skipm1
        call newline
    
        call newline
        printString modmsg1
        mov si,offset account1Name
        call clean 
        mov si,offset account1PIN
        call clean
        
        mov si,offset account1name
        call modname
        call newline
        call newline 
        printString modmsg2
        mov si,offset account1pin
        call modpin 
        call newline
        call newline      
        printString modmsg7
        jmp logout
        skipm1:
    ;Second Account
            
        cmp acountno,2
        jne skipm2:
        call newline
        printString modmsg1
        
        mov si,offset account2Name
        call clean 
        mov si,offset account2PIN
        call clean
        
        mov si,offset account2name
        call modname
        call newline
        call newline 
        printString modmsg2
        mov si,offset account2pin
        call modpin        
        call newline
        call newline
        printString modmsg7
        jmp logout
        skipm2:
    ;Third Account    
        cmp acountno,3
        jne end2:
        call newline
        printString modmsg1
        
        mov si,offset account3Name
        call clean 
        mov si,offset account3PIN
        call clean
        
        mov si,offset account3name
        call modname
        call newline
        call newline 
        printString modmsg2
        mov si,offset account3pin
        call modpin
        call newline
        call newline
        printString modmsg7 
        jmp logout
        jmp end2    
    end2:
    call enter

  


ret    
modify endp    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                       D E P O S I T                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


depositmoney proc
dinput:
    mov ah,1
    int 21h
    cmp al,13
    je depEnd1
    cmp al,8
    je Backd2 
    mov [si],al
    add [di],1
    inc si
    jmp dinput
    Backd2:
    dec si 
    sub [di],1
    mov [si],'$'
    mov dl,0
    mov ah,2
    int 21h
    mov dl,8
    int 21h
    jmp dinput
    depEnd1:     
ret
depositmoney endp

convertnum proc
dinput2:
    
    mov bx,0
    mov ax,0
    mov bl,[si]
    cmp bl,'$'
    je depEnd2 
    sub bl,30h
    cmp cl,4
    jne notthousand
    mov al,bl
    mov bx,1000
    notthousand:
    cmp cl,3
    jne nothundred
    mov ax,bx
    mov bx,100
    nothundred:
    cmp cl,2
    jne notten
    mov ax,bx
    mov bx,10
    notten:
    cmp cl,1 
    jne notone
    mov ax,bx
    mov bx,1
    notone:
    cmp cl,0
    je depEnd2
    
    mul bx
    add [di],ax
    inc si
    dec cl
    jmp dinput2
    depEnd2:
    ret
convertnum endp

    

deposit proc 
    
   ;Inital Big Message
        clearScreen clear
        printString deposit1
        call newLine
        printString deposit2
        call newLine
        printString deposit3
        call newLine
        printString deposit4
        call newLine
        printString deposit5
        call newLine
        printString deposit6
        call newLine
        clearScreen clear 
    
        
    
    ;Check Account selected
        cmp acountno,0 
        jne depaccountfound
        printString depositmsg5
        call enter
    depaccountfound:
    ;Current account info
        printString depositmsg1 
        mov ax,acountno 
        call printNumber  
        call newline
        call newline
        printString depositmsg2
        printString accountName
    
    ;First Account       
        cmp acountno,1
        jne skipd1
        call newline
        call newline
        
        printString depositmsg3
        mov di,offset amounttens1
        mov si,offset depositamount1
        call depositmoney
        mov di,offset totalamount1
        mov si,offset depositamount1
        mov cx,amounttens1
        mov ax,totalamount1
        mov saved,ax
        mov ax,0
        call convertnum
        call newline
        call newline
        mov ax,saved
        mov bx,totalamount1
        sub bx,ax
        mov depositamount,bx
        mov amounttens1,0
        mov si,offset depositamount1 
        call clean
        mov ax,totalamount1
        mov totalamount,ax
        skipd1:
     ;Second Account       
        cmp acountno,2
        jne skipd2
        call newline
        call newline
        
        printString depositmsg3
        mov di,offset amounttens2
        mov si,offset depositamount2
        call depositmoney
        mov di,offset totalamount2
        mov si,offset depositamount2
        mov cx,amounttens2
        mov ax,totalamount2
        mov saved,ax
        mov ax,0
        call convertnum
        call newline
        call newline
        mov ax,saved
        mov bx,totalamount2
        sub bx,ax
        mov depositamount,bx
        mov amounttens2,0
        mov si,offset depositamount2 
        call clean      
        mov ax,totalamount2
        mov totalamount,ax
        skipd2: 
    ;Third Account       
        cmp acountno,3
        jne skipd3
        call newline
        call newline
        
        printString depositmsg3
        mov di,offset amounttens3
        mov si,offset depositamount3
        call depositmoney
        mov di,offset totalamount3
        mov si,offset depositamount3
        mov cx,amounttens3
        mov ax,totalamount3
        mov saved,ax
        mov ax,0
        call convertnum
        call newline
        call newline
        mov ax,saved
        mov bx,totalamount3
        sub bx,ax
        mov depositamount,bx
        mov amounttens3,0
        mov si,offset depositamount3 
        call clean
        mov ax,totalamount3
        mov totalamount,ax
        skipd3:      
     ;Amount deposited 
     
     printString depositmsg4  
     call newline
     call newline
     printString depositmsg6 
     mov ax, totalamount
     call printNumber 
     ;Adding to Transaction History
        add lastcount,1
        ;First Transaction
            cmp lastcount,1
            jne passl1
            mov ax,depositamount
            mov last1,0
            add last1,ax 
            mov bl,'d'
            mov last1type,bl
        passl1:
        ;Second Transaction    
            cmp lastcount,2 
            jne passl2
            mov ax,depositamount
            mov last2,0
            add last2,ax
            mov bl,'d'
            mov last2type,bl        
        passl2:
        ;Third Transaction
            cmp lastcount,3 
            jne passl3
            mov ax,depositamount
            mov last3,0
            add last3,ax
            mov bl,'d'
            mov last3type,bl            
        passl3:
        ;More than Third Transaction
            cmp lastcount,4
            jne passl4
            ;Moving the Previous Transactions
                mov ax,last2
                mov last1,ax
                mov bl,last2type
                mov last1type,bl
                mov ax,last3
                mov last2,ax
                mov bl,last3type
                mov last2type,bl
            mov ax,depositamount
            mov last3,ax
            mov bl,'d'
            mov last3type,bl
            sub lastcount,1
        passl4:
     
    endd2:
    call enter

ret
deposit endp  













    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                       W I T H D R A W                             ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
 
withdrawmoney proc
winput:
    mov ah,1
    int 21h
    cmp al,13
    je wdEnd1
    cmp al,8
    je Backw2 
    mov [si],al
    add [di],1
    inc si
    jmp winput
    Backw2:
    dec si 
    sub [di],1
    mov [si],'$'
    mov dl,0
    mov ah,2
    int 21h
    mov dl,8
    int 21h
    jmp winput
    wdEnd1:     
ret
withdrawmoney endp

convertnum2 proc
winput2:
    mov bx,0
    mov ax,0
    mov bl,[si]
    cmp bl,'$'
    je wdEnd2 
    sub bl,30h
    cmp cl,4
    jne notthousand1
    mov ax,bx
    mov bx,1000
    notthousand1:
    cmp cl,3
    jne nothundred1
    mov ax,bx
    mov bx,100
    nothundred1:
    cmp cl,2
    jne notten1
    mov ax,bx
    mov bx,10
    notten1:
    cmp cl,1 
    jne notone1
    mov ax,bx
    mov bx,1
    notone1:
    cmp cl,0
    je wdEnd2
    
    
    mul bx
    cmp [di],ax
    jle wdEnd3
    sub [di],ax
    
    
    inc si
    dec cl
    jmp winput2
    wdEnd2:
    ret

convertnum2 endp

    

withdraw proc 
    
   ;Inital Big Message
        clearScreen clear
        printString withdraw1
        call newLine
        printString withdraw2
        call newLine
        printString withdraw3
        call newLine
        printString withdraw4
        call newLine
        printString withdraw5
        call newLine
        clearScreen clear 
    
        
    
    ;Check Account selected
        cmp acountno,0 
        jne wdaccountfound  
        call newline
        printString withdrawmsg5
        call enter
    wdaccountfound:
    ;Current account info
        printString withdrawmsg1 
        mov ax,acountno 
        call printNumber   
        call newline
        call newline
        printString withdrawmsg2
        printString accountName
    
    ;First Account       
        cmp acountno,1
        jne skipw1
        call newline
        call newline
        
        printString withdrawmsg3
        mov di,offset amounttens1
        mov si,offset withdrawamount1
        call withdrawmoney 
        
        
        
        
        mov di,offset totalamount1
        mov si,offset withdrawamount1
        mov cx,amounttens1
        
        mov ax,totalamount1
        mov saved,ax
        mov ax,0
        call convertnum2
        call newline
        call newline
        mov ax,saved
        mov bx,totalamount1
        sub ax,bx
        mov withdrawamount,ax
        
        
        mov amounttens1,0
        mov si,offset withdrawamount1 
        call clean 
        mov ax,totalamount1
        mov totalamount,ax
        skipw1:
     ;Second Account       
        cmp acountno,2
        jne skipw2
        call newline
        call newline
        
        printString withdrawmsg3
        mov di,offset amounttens2
        mov si,offset withdrawamount2
        call withdrawmoney 
        mov di,offset totalamount2
        mov si,offset withdrawamount2
        mov cx,amounttens2
        
         
        mov ax,totalamount2
        mov saved,ax
        mov ax,0
        call convertnum2
        call newline
        call newline
        mov ax,saved
        mov bx,totalamount2
        sub ax,bx
        mov withdrawamount,ax
        
 
        
        mov amounttens2,0
        mov si,offset withdrawamount2 
        call clean 
        mov ax,totalamount2
        mov totalamount,ax
        skipw2: 
    ;Third Account       
        cmp acountno,3
        jne skipw3
        call newline
        call newline
        
        printString withdrawmsg3
        mov di,offset amounttens3
        mov si,offset withdrawamount3
        call withdrawmoney 
        mov di,offset totalamount3
        mov si,offset withdrawamount3
        mov cx,amounttens3
         
        mov ax,totalamount3
        mov saved,ax
        mov ax,0
        call convertnum2
        call newline
        call newline
        mov ax,saved
        mov bx,totalamount3
        sub ax,bx
        mov withdrawamount,ax
        
        mov amounttens3,0
        mov si,offset withdrawamount3 
        call clean 
        mov ax,totalamount3
        mov totalamount,ax
        skipw3:      
     ;Amount withdrawn
     printString withdrawmsg4  
     call newline 
     call newline
     printString withdrawmsg6 
     mov ax, totalamount
     call printNumber 
     ;Adding to Transaction history
     add lastcount,1 
        
        ;First Transaction
            cmp lastcount,1  
            jne passlw1
            mov ax,withdrawamount
            mov last1,0
            add last1,ax 
            mov bl,'w'
            mov last1type,bl
        passlw1:
        
        ;Second Transaction
            cmp lastcount,2 
            jne passlw2
            mov ax,withdrawamount
            mov last2,0
            add last2,ax
            mov bl,'w'
            mov last2type,bl        
        passlw2:
        
        ;Third Transaction
            cmp lastcount,3 
            jne passlw3
            mov ax,withdrawamount
            mov last3,0
            add last3,ax
            mov bl,'w'
            mov last3type,bl        
        passlw3:
        ;More than third Transaction
            cmp lastcount,4
            jne passlw4
            ;Moving the previous transactions   
                mov ax,last2
                mov last1,ax
                mov bl,last2type
                mov last1type,bl
                mov ax,last3
                mov last2,ax
                mov bl,last3type
                mov last2type,bl
                mov ax,withdrawamount
            mov last3,ax
            mov bl,'w'
            mov last3type,bl
            sub lastcount,1
        passlw4:
       
     
    endw2:
    call enter 
    wdEnd3: 
    call newline
    call newline
    printString withdrawmsg7
    call enter

ret
withdraw endp  


 
 
 
 
 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                        D E T A I L S                              ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     
 
 

details proc 
    
   ;Inital Big Message
        clearScreen clear
        printString details1
        call newLine
        printString details2
        call newLine
        printString details3
        call newLine
        printString details4
        call newLine
        printString details5
        call newLine
        clearScreen clear 
    
        
    
    ;Check Account selected
        cmp acountno,0 
        jne detaccountfound
        printString detailsmsg5
        call enter
    detaccountfound:
    ;Current account info
        printString detailsmsg1 
        mov ax,acountno 
        call printNumber
        call newline
        call newline
        printString detailsmsg2
        printString accountName
        call newline
        call newline
        printString detailsmsg3
        mov ax,0
        printString accountPIN
        call newline
        call newline
        printString detailsmsg4
        mov ax,totalamount
        call printNumber
        call newline
        call newline
        
        printString detailsmsg6 
        call newline
        call newline
        
        ;Last Message 1 
        call newline
        printString lastmsg
        mov ax,last1
        call printNumber
        printString gap
        cmp last1type,'d'
        je d1
        cmp last1type,'w'
        jne d11
        printString twithdraw
        jmp d11
        call newline
        d1:
        printString tdeposit
        d11:
        call newline
        
        ;Last Message 2 
        call newline
        printString lastmsg
        mov ax,last2
        call printNumber 
        printString gap
        cmp last2type,'d'
        je d2
        cmp last2type,'w'
        jne d22
        printString twithdraw 
        jmp d22
        call newline
        d2:
        printString tdeposit
        d22:
        call newline
        
        ;Last Message 3 
        call newline
        printString lastmsg
        mov ax,last3
        call printNumber
        printString gap
        cmp last3type,'d'        
        je d3
        cmp last3type,'w'
        jne enddt2
        printString twithdraw 
        call newline
        jmp enddt2
        d3:
        printString tdeposit
        call newline
    enddt2: 
    call newline
    call enter

ret
details endp  

 
 
 
 
 
 
 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                          L O G O U T                              ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
logout proc  
    ;Clear accountName and accountpin
    call newline
    call newline
    mov si,offset accountName
        
        call clean 
        mov si,offset accountPIN
        call clean 
        printString logmsg6 
       
        call newline   
        call newline
        printString logmsg7
        mov last1,0
        mov si,offset last1type
        call clean
        mov last2,0
        mov si,offset last2type
        call clean        
        mov last3,0
        mov si,offset last3type
        call clean  
        mov lastcount, 0
        mov acountno,0
        
        call enter 
        
ret
logout endp    





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                           M A I N                                 ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    


MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

home:
    clearScreen clear
    call menu
    call takeinput

    cmp input,'0'
    je exit
    
    cmp input,'1'
    je create
    
    cmp input,'2'
    je login  
    
    cmp input,'3'
    je modify
    
    cmp input,'4'
    je deposit
    
    cmp input,'5'
    je withdraw  
    
    cmp input,'6'   
    je details
    
    cmp input,'7'   
    je logout
    
    call newline
    call newline
    printString menuerror
    
    jmp home
  
    exit:
    
    call newLine
    call newLine
    clearScreen clear
    
    printString bye1
    call newLine
    printString bye2
    call newLine
    printString bye3
    call newLine
    printString bye4
    call newLine       
    printString bye5
    call newLine
    
    clearScreen clear

 

;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN




