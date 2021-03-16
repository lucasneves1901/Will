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

# Casos de Testes
##Cenários para Criação de Conta

Caso Teste  	| Dados 							| Nome
CT01		| EMAIL BRANCO 							| Cadastro sem sucesso email em branco
CT02		| EMAIL VALIDO + DADOS EM BRANCO 				| Cadastro sem sucesso email valido mas com dados em branco
CT03		| EMAIL VALIDO + INVALIDOS 					| Cadastro sem sucesso email valido mas com dados invalidos
CT04		| EMAIL VALIDO + VALIDO 					| Cadastro com sucesso email valido e dados validos
CT05		| EMAIL EXISTENTE 						| Cadastro sem sucesso email existente

##CT01
##Criterios de Aceitação
> Campo EMAIL deve conter uma mensagem de erro caso não seja preenchido
> Após tentativa de cadastro deverá ser exibida uma mensagem contendo o texto "Invalid email address."

##CT02
##Criterios de Aceitação
> Campos devem conter uma mensagem de erro caso não seja inserido nenhum dado
> Após tentativa de cadastro deve ser exibida uma lista de erros com o texto "Required"

##CT03
##Criterios de Aceitação
> Campos devem conter uma mensagem de erro para os dados invalidos inseridos
> Após tentativa de cadastro deve ser exibida uma lista de erros com o texto "Invalid"

##CT04
##Criterios de Aceitação
> Campos devem aceitar os dados inseridos como validos
> Após tentativa de cadastro o usuário deverá ser redirecionado para a página "My Account"

##CT05
##Criterios de Aceitação
> Campo EMAIL deve aceitar o email apesar de já cadastrado
> Após tentativa de cadastro deverá ser exibida uma mensagem contendo o texto "An account using this email address has already been registered. Please enter a valid password or request a new one."

##Cenários para Login no Sistema

Caso Teste  	| Login 	| Senha		| Nome
CT01		| BRANCO	| BRANCO	| Login sem sucesso credenciais em branco
CT02		| INVALIDO	| INVALIDO	| Login sem Sucesso credenciais invalidas
CT03		| VALIDO	| INVALIDO	| Login sem sucesso senha incorreta
CT04		| VALIDO	| VALIDO	| Login com sucesso credenciais validas

##CT01
##Criterios de Aceitação
> Campo EMAIL deve conter uma mensagem de erro caso não seja inserido nenhum dado
> Após tentativa de login deve ser exibida uma mensagem de erro contendo o texto "An email address required."

##CT02
##Criterios de Aceitação
> Campo EMAIL deve conter uma mensagem de erro caso seja inserido dados invalidos
> Após tentativa de login deve ser exibida uma mensagem de erro contendo o texto "Invalid email address."

##CT03
##Criterios de Aceitação
> Campo EMAIL deve aceitar os dados inseridos como validos
> Após tentativa de login deve ser exibida uma mensagem de erro contendo o texto "Authentication failed."

##CT04
##Criterios de Aceitação
> Campo EMAIL deve aceitar os dados inseridos como validos
> Após tentativa de login o usuário deverá ser autenticado com sucesso.
