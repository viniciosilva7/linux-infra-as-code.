# 🚀 IaC - Gerenciamento de Usuários e Grupos no Ubuntu Server

Este repositório contém um script de **Infraestrutura como Código (IaC)** desenvolvido para **Ubuntu Server**, que automatiza a criação de **usuários, grupos, diretórios e permissões.** O objetivo é facilitar o provisionamento inicial de servidores, garantindo **padronização, segurança e agilidade**.

---

## 📂 Estrutura do Script

O script realiza as seguintes etapas:

1. **Criação de diretórios padrões**
   - `/publico`
   - `/adm`
   - `/ven`
   - `/sec`

2. **Criação de grupos de usuários**
   - `GRP_ADM`
   - `GRP_VEN`
   - `GRP_SEC`

3. **Criação de usuários e associação aos grupos**
   - Usuários de **ADM**: **Lucas, Mariana, Rafael**
   - Usuários de **VEN**: **Beatriz, Gabriel, Camila**
   - Usuários de **SEC**: **Thiago, Larissa, Felipe**

4. **Definição de donos e permissões dos diretórios**
   - `/publico` → acesso total a todos os usuários
   - `/adm`, `/ven`, `/sec` → acesso restrito ao grupo correspondente

---

## ⚙️ Requisitos

- Ubuntu Server (testado em versão 24.04.2)
- Permissões de **superusuário (root)** para execução
- Pacote `openssl` instalado (para gerar senhas criptografadas)

Instale o `openssl` (caso necessário):

```bash
sudo apt-get update
sudo apt-get install openssl -y
```

## ▶️ Como executar

1. **Clone este repositório:**

```bash
git clone https://github.com/viniciosilva7/linux-infra-as-code.git
cd linux-infra-as-code
```

2. **Dê permissão de execução ao script:**

```bash
chmod +x iac.sh
```

3. **Execute o script como root:**

```bash
sudo ./iac.sh
```

## 🔒 Segurança

- Cada usuário é criado com senha inicial padrão, que pode ser alterada no script.
- Recomenda-se alterar as senhas após o primeiro login.
- Diretórios restritos só podem ser acessados pelos respectivos grupos.

## ✨ Autor

Desenvolvido por **Vinicios Ruan Silva**
📧 Contato: vinicios.link7@gmail.com
