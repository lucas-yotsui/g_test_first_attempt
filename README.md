# Primeira tentativa de projeto utilizando Google Tests

Este respositório é meu primeiro modelo de um projeto com testes automatizados com Google Tests.

## Pré-Requisitos
Para utilizar este projeto é necessário apenas ter instalado:
1. CMake
2. Compilador de C/C++

_Observação: Para utilizar este projeto, recomendo o uso da extensão CMakeTools no Visual Studio Code, tendo em vista que ela permite a redução da necessidade de executar os comandos cmake via terminal._ 

_Observação2: Este projeto assume que você está utilizando Linux, caso esteja no Windows, adapte o arquivo .vscode/settings.json para utilizar outro gerador no CMake (em geral utiliza-se MinGW Makefiles no Windows)._
## Uso

#### Clonando projeto

Primeiramente, é necessário clonar este repositório. Para isso, pode-se utilizar o comando git padrão `git clone https://github.com/lucas-yotsui/g_test_first_attempt/` (neste caso lembre-se de apagar o diretório .git para desvincular seu projeto deste repositório) ou através dessa página usando os recursos de template do GitHub:

Caso opte por essa segunda opção, clique no botão _Usar este template_:
![Usar este template](https://imgur.com/T2eswUz.png)

A partir daí, você pode criar seu próprio repositório como uma cópia deste sem a necessidade de se preocupar com apagar o diretório _.git_.

#### Estrutura

Para usar esse projeto, siga a seguinte estrutura básica:

1. Arquivos de Cabeçalho (headers, vulgo _.h_) vão no diretório include
2. Arquivos de Código Fonte (sources, vulgo _.c_) vão no diretório source
3. Seu arquivo main.c ou main.cpp vai no diretório app
4. Arquivos de testes (sources utilizando gtest/gtest.h) vão no diretório tests

Seguindo essa estrutura, o `CMakeLists.txt` está configurado para compilar seu projeto com todos os headers, sources e testes que você criar nele.

#### Compilação e Teste

Para compilar seu projeto basta utilizar os comandos de terminal `cmake --build ./build` e para testá-lo basta utilizar `ctest --test-dir ./build`.

Caso esteja utilizando o Visual Studio Code com a extensão CMakeTools, é possível utilizar o botão _Build_ na barra de status na parte inferior da janela. 
Para executar os testes pode-se utilizar o botão _Run CTest_, porém essa opção passa alguns argumentos para o comando ctest que tem causado estranheza na saída dessa ação.
Criei recentemente uma issue no repositório da extensão pedindo que resolvessem esse problema e assim que ela for resolvida, removo esta observação.
