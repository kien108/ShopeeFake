const modal = document.querySelector('.js-modal')
const signUp = document.querySelector('.js-sign-up')
const backModal = document.querySelector('.js-closed-modal')
const modalOverlay = document.querySelector('.js-modal__overlay')

function openSignUp() {
    modal.classList.add('open')
}

function closedModal() {
    modal.classList.remove('open')
}

backModal.addEventListener('click', closedModal)
modalOverlay.addEventListener('click', closedModal)
signUp.addEventListener('click', openSignUp)