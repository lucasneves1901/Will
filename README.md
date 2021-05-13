# Setando o Ambiente
## Preparando Ambiente para Execução

Linux (Meu SO atualmente) + IDE de sua preferência (Utilazado no Projeto: VSCode)

Para instalar o Python 3, digite em um terminal:
$ sudo apt-get install python3

Para instalar o gerenciador de pacotes pip, digite em um terminal:
$ sudo apt-get install python3-pip

Para instalar o Robot Framework, digite em um terminal:
$ pip install robotframework

Para instalar a SeleniumLibray, digite em um terminal:
$ pip install robotframework-seleniumlibrary

## Setar chromedriver:
1. Realizar download do chromedriver compativel com seu Chrome Browser
2. Extrair o arquivo 'chromedriver' em um local de sua preferência
3. Abrir um terminal:
	3.1 $ cd path/to/chromedriver
	3.2 $ chmod +x chromedriver (Tornar o arquivo executavel)
3. Adicionar ao PATH o caminho do seu chromedriver executavel

## Executar os Cenários:
1. Abrir o Terminal e ir para o diretório do seu Projeto;
2. Executar os Testes rodando o seguinte comando:
$ robot -d ./log ./Tests
3. Verificar os Outputs dos cenários utilizando o log.html ou report.html
