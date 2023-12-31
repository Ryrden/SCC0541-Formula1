# Formula 1 - Projeto Final

<!-- Shields Exemplo, existem N diferentes shield em https://shields.io/ -->
![GitHub last commit](https://img.shields.io/github/last-commit/ryrden/Formula-1)
![GitHub language count](https://img.shields.io/github/languages/count/ryrden/Formula-1)
![Github repo size](https://img.shields.io/github/repo-size/ryrden/Formula-1)
![Github stars](https://img.shields.io/github/stars/ryrden/Formula-1?style=social)

![Capa do Projeto](https://i.imgur.com/g1o3I7v.png)

> Sistema de gerenciamento de dados de corridas de Fórmula 1

## Pré-requisitos

Antes de executar o projeto, certifique-se de ter as seguintes dependências instaladas:

- Antes de começar, verifique se você possui o `Python` instalado em sua máquina. Se não tiver, você pode baixar o `Python` [aqui](https://www.python.org/downloads/).

Há duas formas de executar o projeto, a primeira é utilizando o `docker` e a segunda é executando o projeto pelo `GUI do POSTGRESQL`.

Portanto, caso opte por utilizar o `docker`, é necessário que o mesmo esteja instalado em sua máquina. Para isso, siga as instruções de instalação do [docker](https://docs.docker.com/engine/install/) e do [docker-compose](https://docs.docker.com/compose/install/).

Caso opte por utilizar o `GUI do POSTGRESQL` (PG_ADMIN), é necessário que o mesmo esteja instalado em sua máquina. Para isso, siga as instruções de instalação do [postgresql](https://www.pgadmin.org/download/).

## Como executar o projeto

Siga as etapas abaixo para executar o projeto em sua máquina local:

Execute os seguintes comandos a partir da pasta raiz do projeto:

### Clone este repositório

```bash
git clone https://github.com/Ryrden/Formula-1.git
```

Este link pode ser encontrado no botão verde acima `Code`.

### Instale as dependências

sem nix:

```bash
pip install .
```

com nix:

```bash
nix develop
```

### Defina as variáveis de ambiente

crie um arquivo .env na raiz do projeto e coloque as seguintes variáveis de ambiente:

```bash
DB_HOST=
DB_PORT=
DB_USER=
DB_PASSWORD=
DB_DATABASE=
```

A partir daqui você deve conectar ao banco de dados utilizando as seguintes credenciais (ou as que você definiu no arquivo .env):

- **Host:** localhost
- **Port:** 5432
- **login:** postgres
- **password:** postgres
- **database:** postgres
- **url:** jdbc:postgresql://localhost:5432/postgres

## Criando tabelas e inserindo dados

Após isso, dentro do script `init_schema.SQL` na pasta `database/`, substitua a `string` DirLocal pelo endereço onde se encontra as tabelas CSV para inserção dos dados. exemplo:

**Caso esteja utilizando o `docker`:**

substitua a string `DirLocal` por `/database/tables_csv/`:

**Caso esteja utilizando o `GUI do POSTGRESQL`:**

substitua a string `DirLocal` pelo endereço completo de uma pasta que contenha os arquivos CSV dentro do GUI do POSTGRESQL.

por exemplo, se o PG_ADMIN estiver instalado em `C:\Program Files\pgAdmin 4\`, então crie a pasta `tables_csv` ai dentro e substitua a string `DirLocal` por `C:\\Program Files\\pgAdmin 4\\tables_csv\\`. (É necessário utilizar duas barras invertidas somente se estiver utilizando o SO Windows).

Outra opção para inserir os dados pelo `PG_ADMIN` é utilizar a interface de Import/export para arquivos csv, para saber mais, acesse [Import/Export Data](https://www.pgadmin.org/docs/pgadmin4/development/import_export_data.html).

### Subindo o docker

Para executar o projeto utilizando o `docker`, basta executar o seguinte comando na raiz do projeto:

```bash
docker compose up -d
```

Assim que terminar a utilização e quiser parar o projeto, basta executar o seguinte comando:

```bash
docker compose down
```

se deseja apagar os dados do banco de dados, basta executar o mesmo comando anterior, porém com a flag `-v`:

```bash
docker compose down -v
```

### Execute o Projeto

```bash
python -m proj_labbd
```

### Execute os scrips

Por fim, execute os scripts da pasta database para uso do sistema

## Como contribuir

Se você deseja contribuir para este projeto, siga as etapas abaixo:

1. Faça um fork deste repositório.
2. Crie um branch: `git checkout -b <nome_branch>`.
3. Faça suas alterações e confirme-as: `git commit -m '<mensagem_commit>'`
4. Envie para o branch original: `git push origin <nome_do_projeto> / <local>`
5. Criar a solicitação de pull.

Como alternativa, consulte a documentação do GitHub sobre [como criar uma solicitação de pull](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

## Membros do Projeto (Opcional)

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/joaolucasp">
        <img src="https://github.com/joaolucasp.png" width="100px">
        <br>
        <sub>
          <b>Joaolucasp</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/joelcoelho29">
        <img src="https://github.com/joelcoelho29.png" width="100px">
        <br>
        <sub>
          <b>Joelcoelho29</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/ryrden">
        <img src="https://github.com/ryrden.png" width="100px">
        <br>
        <sub>
          <b>Ryrden</b>
        </sub>
      </a>
    </td>
  </tr>
</table>

## Licença

Este projeto está sob licença. Consulte [LICENSE](LICENSE.md) para obter mais informações.

## Voltar ao topo

[⬆ Voltar ao topo](#título)
