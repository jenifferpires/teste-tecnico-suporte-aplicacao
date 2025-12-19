import requests

def atualizar_cliente(cliente_id, dados):
    """
    Envia uma requisição HTTPS para atualizar os dados de um cliente via API.
    """

    url = f"https://api.exemplo.com/clientes/{cliente_id}"

    headers = {
        "Authorization": "Bearer TOKEN_EXEMPLO",
        "Content-Type": "application/json"
    }

    response = requests.put(url, json=dados, headers=headers, timeout=10)

    if response.status_code == 200:
        print("Cliente atualizado com sucesso")
        return response.json()

    elif response.status_code == 404:
        print("Cliente não encontrado")
        return None

    else:
        print(f"Erro ao atualizar cliente: {response.status_code}")
        print(response.text)
        return None


if __name__ == "__main__":
    dados_cliente = {
        "nome": "Empresa Exemplo",
        "email": "contato@exemplo.com",
        "ativo": True
    }

    atualizar_cliente(cliente_id=123, dados=dados_cliente)
