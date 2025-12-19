from funcoes import encontrar_nao_enviados


if __name__ == "__main__":
    agendados = {
        1: "Relatório Financeiro",
        2: "Nota Fiscal",
        3: "Contrato"
    }

    enviados = [1, 3]

    resultado = encontrar_nao_enviados(agendados, enviados)
    print(resultado)
