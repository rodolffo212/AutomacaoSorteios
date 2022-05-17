# AutomacaoSorteios

# AutomacaoSorteios
POC processo seletivo

Como Utilizar o robot framework?

01- Instale o Python em sua maquina
Adicione as variaveis:
C:\Python27\
C:\Python27\Scripts

Confira no CMD a Versão instalada
python --versão
pip -- versão

02 — Instalando o Robot Framework
pip install robotframework
Confira no CMD a Versão instalada
robot --version


03 - Instale as Bibliotecas.
pip install --upgrade robotframework-seleniumlibrary
pip install robotframework-faker


04 Baixe os driver do navegador
Mozila = https://github.com/mozilla/geckodriver/releases
Chorme = https://chromedriver.chromium.org/downloads

Coloque os mesmos dentro da pasta C:\Windows\System32
Atualmente estou usuando o Firefox.
É extremamente importante que vc use a mesma versão do navegador instalado em sua maquina para termos compartibilidade total.


05 Clone o PRJ no seu VSCODE.



06 Baixe os pluguins
file-icons
Robot Framework Language Server

07  Acesse a pagina Test 
Comando pelo windows CD Test

08 Rode o teste
no CMD:

robot Sorteio_testes.robot

OBS: Ficou com duvidas? pode chamar.
