#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e já adicionando cada usuário em seu grupo..."

useradd edson -m -c "Edson Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd bruno -m -c "Bruno Santos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd guilherme -m -c "Guilherme Faria" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd esley -m -c "Esley Ryan" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd samuel -m -c "Samuel Flint" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd clayton -m -c "Clayton Borges" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd abner -m -c "Abner Bidal" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd saulo -m -c "Saulo Profeta" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd mane -m -c "Mane Bendito" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando dono e permissões de cada diretorio..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!"

