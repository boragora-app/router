Router
=========

Um roteador para rede local com funções de DHCP, DNS, Firewall e LoadBalancer


Resumo
------

* Roda em docker

* DHCP funcionando

* Roteamento em desenvolvimento


Dependências
------------

* [Docker](https://docs.docker.com/get-docker/) | [Debian Apt](https://docs.docker.com/engine/install/debian/#install-using-the-repository)


Como usar
----------

1) Clone e acesse o repositório:

      `git clone https://github.com/boragora-app/router.git && cd router`

2) Altere o arquivo `dhcp/dhcpd.conf` para a rede desejada

3) Inicie o serviço e observe os logs:

      `docker compose up`

      O DHCP irá entregar os IPs na interface que tiver a mesma subrede no arquivo `dhcp/dhcpd.conf`

3) Digite CTRL+C para parar, para remover digite:

      `docker compose down`


Desenvolvimento
---------------

Gerar imagem docker:

      docker build -t router .

Rodar um shell no container interativamente:
      
      docker run --rm -it --name router --hostname router --network=host --entrypoint sh router

Pode testar o servidor DHCP rodando o entrypoint do Dockerfile:

      /usr/sbin/dhcpd -4 -d --no-pid


Próximos passos
---------------

1) Desenvolver função Roteador:

    - Rotear internet entre a interface "WAN" e "LAN"

