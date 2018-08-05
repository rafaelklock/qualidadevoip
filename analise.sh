#!/bin/bash

PONTUACAO="0"

provedor=$1
/bin/echo ${@} > /tmp/resultadoGoogleUtterance.txt

# AUDIO 2
#palavras_chaves="Boa tarde ketlin por favor juliana do comercial é Pedro da empresa pra mim eu acho que ela autorizou um pedido impressão só não vou precisar mais dela por meio dia estava dependendo retorno"

# AUDIO 1
palavras_chaves="todos estavam estava falando rato foi até castelo roeu roupa vermelha rei roma enquanto ele dormia sonhava carroagem deserto carruagem sendo carregada carregado camelo camelos verde amarelo brasileiro brasileiros acordou"

for PalavraChave in $palavras_chaves; do

	cat /tmp/resultadoGoogleUtterance.txt|grep -iw ${PalavraChave}
	if [ $? == 0 ]; then
		PONTUACAO=$((PONTUACAO+1))
	fi
done

echo "`date \"+%d/%m/%Y %H:%M\"`;${PONTUACAO};`cat /tmp/resultadoGoogleUtterance.txt`" >> /tmp/resultados.txt
