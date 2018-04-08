li $t1, 5       #Tamanho do vetor
sw $t1, 0($gp)

li $t1, 8
sw $t1, 128($gp)

li $t1, 4
sw $t1, 132($gp)

li $t1, 1      #Elemento escolhido
sw $t1, 4($gp)

li $t1, 12
sw $t1, 8($gp)
li $t1, 7
sw $t1, 12($gp)
li $t1, 0
sw $t1, 16($gp)
li $t1, 2
sw $t1, 20($gp)
li $t1, 9
sw $t1, 24($gp)

li $t9, 1 #variavel 1

nop #programa começa a partir daqui para datapath
lw $t1, 4($gp)
lw $t2, 0($gp) #Tamaho do vetor
add $t2, $t2, $t2
add $t2, $t2, $t2
lw $t3, 64($gp)

lw $t8, 128($gp) #128($gp) deve valer 8
add $t4, $gp, $t8 #addi

####Acha o menor
Loop: lw $t5, 0($t4)
  slt $t0, $t5, $t1
  nop
  nop
  nop
  nop
  beq $t0, $zero, NaoMenor
  ##Checar menor mais perto
  slt $t0, $t6, $t1
  nop
  nop
  nop
  nop
  beq $t0, $zero, DefinitivaNaoMenor
  slt $t0, $t6, $t5
  nop
  nop
  nop
  nop
  beq $t0, $zero, NaoMenor
DefinitivaNaoMenor:
  #move $t6, $t5 
  sw $t5,68($gp)
  lw $t6,68($gp)
NaoMenor:
  lw $t8, 132($gp) #128($gp) deve valer 4
  add $t3, $t3, $t8 #addi
  add $t4, $t4, $t8 #addi
  slt $t0, $t3, $t2
  nop
  nop
  nop
  nop
  beq $t0, $t9, Loop #se t3 < t2 loop

#####Acha o maior mais perto
lw $t3, 64($gp)

lw $t8, 128($gp) #128($gp) deve valer 8
add $t4, $gp, $t8 #addi

Loop2: lw $t5, 0($t4)
  sub $t0, $t1, $t7
  nop
  nop
  nop
  nop
  beq $t0, $zero, DefinitivaMenor
  sub $t0, $t1, $t5
  nop
  nop
  nop
  nop
  beq $t0, $zero, Menor
  
  slt $t0, $t5, $t1
  nop
  nop
  nop
  nop
  beq $t0, $t9, Menor #mudanca pra beq
  slt $t0, $t7, $t1
  nop
  nop
  nop
  nop
  beq $t0, $t9, DefinitivaMenor #bne para beq
  slt $t0, $t5, $t7
  nop
  nop
  nop
  nop
  beq $t0, $zero, Menor

DefinitivaMenor:
  #move $t7, $t5
  sw $t5,64($gp)
  lw $t7,64($gp)
Menor:
  lw $t8, 132($gp) #128($gp) deve valer 4
  add $t3, $t3, $t8 #addi
  add $t4, $t4, $t8 #addi
  slt $t0, $t3, $t2
  nop
  nop
  nop
  nop
  beq $t0, $t9, Loop2 #se t3 < t2 loop

sw $t6, 32($gp)
sw $t7, 36($gp)

  


  
##$t7 variavel temporaria
##$t6 variavel definitiva



















