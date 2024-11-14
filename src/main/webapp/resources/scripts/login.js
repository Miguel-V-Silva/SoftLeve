function confirmar() {
    const senha = document.getElementById('senha').value;
    const senhaConfirmada = document.getElementById('senha-confirm').value;
    const campoSenhaConfirm = document.getElementById('senha-confirm');

    if (senha === senhaConfirmada) {
        document.getElementById('form-cadastro').submit();  
    } else {
        campoSenhaConfirm.style.border = '1px solid red';  
        campoSenhaConfirm.focus();
        campoSenhaConfirm.addEventListener('focus', () => {
            campoSenhaConfirm.style.border = '';  
        });
    }
}