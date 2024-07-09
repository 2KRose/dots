# Nome do programa
PROGRAMA="stalonetray -c /home/kk/.config/qtile/stalonetrayrc"
PROGRAMA2="stalonetray"

# Verifica se o programa está em execução
if pgrep -x "$PROGRAMA2" > /dev/null
then
    echo "O $PROGRAMA já está em execução. Fechando..."
    # Fecha o programa
    pkill -x "$PROGRAMA2"
else
    echo "Abrindo $PROGRAMA..."
    # Abre o programa
    $PROGRAMA &
fi
