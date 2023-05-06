#!/bin/bash

echo "Criando a infraestrutura do sistema..."

#1) Criando os diretórios
mkdir /publico /adm /ven /sec

#2) Criando os grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#3) Criando os usuários
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -1 senha123)

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 senha123)

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 senha123)

#4) Atribuindo usuários a grupos
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

#5) Alterando as permissões em cada diretório
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#6) Alterando o grupo de cada diretório
chown :GRP_ADM /adm
chown :GRP_VEN /ven
chown :GRP_SEC /sec

echo "Finalizado!"
