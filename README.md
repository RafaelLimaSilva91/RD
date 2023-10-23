# 🚀 Projeto de Automação Web e API com Cucumber, Ruby e Capybara 

Este é um exemplo de README para um projeto de automação web usando Cucumber, Ruby e a incrível biblioteca Capybara. Com essa estrutura, você pode automatizar testes de UI em sua aplicação web de forma eficaz.

## 📦 Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas antes de começar:

- [Ruby](https://www.ruby-lang.org/) 🧩
- [Bundler](https://bundler.io/) 📦
- [Cucumber](https://cucumber.io/) 🥒
- [Capybara](https://github.com/teamcapybara/capybara) 🦙
- [Um navegador web](https://www.google.com/chrome/) 🌐
- [Chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)

## 🔧 nstalação 

1. Clone este repositório:

```shell
git clone https://github.com/RafaelLimaSilva91/RD
cd RD
```

2. Instale a gem do bundler e na sequencia as dependências Ruby:

```shell
gem install bundler
bundle install
```

## 📁 Estrutura de Diretórios 

- `features/` - Armazena os arquivos `.feature` com cenários de teste.
- `step_definitions/` - Contém os passos de teste implementados em Ruby.
- `support/` - Inclui configurações e utilitários para o projeto.
- `reports/` - Onde relatórios de execução são gerados (opcional).
- `Gemfile` - Lista de dependências Ruby.

## ⚙️ Configuração 

Certifique-se de configurar seu ambiente para usar o navegador desejado e seu driver correspondente. Isso pode ser feito no arquivo `support/env.rb`.

## ▶️ Executando os Testes 

Para executar os todos os testes, simplesmente use o seguinte comando:
