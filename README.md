Router
=========

Um roteador para rede local com funções de DHCP, DNS, Firewall e LoadBalancer


Resumo
------

* Roda em docker

* DHCP em desenvolvimento


Dependências
------------

* [Docker](https://docs.docker.com/get-docker/)


Como usar
---------

1) Clone e acesse o repositório clonado:

      `git clone https://github.com/boragora-app/router.git && cd router`



2) Inicie em background:

      `docker compose up -d`


3) Veja os logs em outro terminal:

      `docker compose logs -f`

4) Parar e remover:

      `docker compose down`

