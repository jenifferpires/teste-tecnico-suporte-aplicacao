def encontrar_nao_enviados(agendados, enviados):
    """
    Retorna os itens agendados que ainda não foram enviados.
    """
    enviados_set = set(enviados)

    return [
        item
        for id, item in agendados.items()
        if id not in enviados_set
    ]
