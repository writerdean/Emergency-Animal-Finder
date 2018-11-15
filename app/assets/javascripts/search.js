
<<<<<<< HEAD
if (window.location.pathname.includes('found_animals?incident') || window.location.pathname.includes('lost_animals?incident')) {
=======
if (window.location.href.includes('found_animals') || window.location.href.includes('lost_animals')) {
>>>>>>> edaaf19bfa5260c0890bc877a0974ff772c9b8bb
  let searchInput = document.querySelector('.search-input')
  let searchForm = document.querySelector('.search-form')
  let results = document.querySelectorAll('.animal-item')

  function search(event) {
    event.preventDefault()
  
    results.forEach(animal => {
      if (event.target.value === "") {
        animal.style.display = 'none'
      } else {
        let searchArr = []
        if (event.target.value.includes(' ')) { 
          searchArr = event.target.value.split(' ')
        } else {
          searchArr = [event.target.value]
        }
        searchArr.forEach(search => {
          if (search != "") {
            if (animal.firstElementChild.textContent.includes(search.toLowerCase())) {
              animal.style.display = "block"
            } else {
              animal.style.display = "none"
            }
          }
        })
      }
    })
  }
  searchForm.addEventListener('submit', search)
  searchInput.addEventListener('keyup', search)
}