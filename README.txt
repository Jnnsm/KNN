#### KNN ####

Programa feito em Mars Assembly para funcionar no Datapath 465

Carregar  inst.rom em Instruction Memory
Carregar data.ram em Data Memory
Carregar regbank.rom em Registers

Na posição 0000 da memoria carrega-se o tamanho do vetor e na posição 0001 carrega-se o elemento a ser procurado.
A partir da posição 0002 até a posição 0007 o vetor pode ser inserido.
A resposta sairá nas posições 0008 e 0009.
As posições 0020 e 0021 devem ser preenchidas respectivamente com 8 e 4.