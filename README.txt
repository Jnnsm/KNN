#### KNN ####

Programa feito em Mars Assembly para funcionar no Datapath 465

Carregar  inst.rom em Instruction Memory
Carregar data.ram em Data Memory
Carregar regbank.rom em Registers

Na posi��o 0000 da memoria carrega-se o tamanho do vetor e na posi��o 0001 carrega-se o elemento a ser procurado.
A partir da posi��o 0002 at� a posi��o 0007 o vetor pode ser inserido.
A resposta sair� nas posi��es 0008 e 0009.
As posi��es 0020 e 0021 devem ser preenchidas respectivamente com 8 e 4.