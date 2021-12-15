const cards = document.querySelectorAll(".card")
cards.forEach(element =>
    element.addEventListener('click', e => {
        e.preventDefault()
        element.submit()
    })
)
