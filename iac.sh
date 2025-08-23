#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd lucas -c "Lucas Andrade" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd lucas -e
useradd mariana -c "Mariana Oliveira" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd mariana -e
useradd rafael -c "Rafael Souza" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd rafael -e

useradd beatriz -c "Beatriz Ferreira" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd beatriz -e
useradd gabriel -c "Gabriel Mendes" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd gabriel -e
useradd camila -c "Camila Rocha" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd camila -e

useradd thiago -c "Thiago Carvalho" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd thiago -e
useradd larissa -c "Larissa Lima" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd larissa -e
useradd felipe -c "Felipe Martins" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 "Senha") && passwd felipe -e

echo "Definindo o usuario dono dos diretorios..."

chown root /publico/
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Definindo permissao total dentro do diretorio a todos os usuarios..."

chmod 777 /publico/

echo "Definindo permissao total dentro dos diretorios aos usuarios de cada grupo..."

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Finalizado..."
