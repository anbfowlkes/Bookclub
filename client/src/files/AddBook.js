let AddBook = ( {getBooks} ) => {

    let createBook = async (e) => {
        e.preventDefault()
        let title = e.target[0].value
        let author = e.target[1].value
        let imageUrl = e.target[2].value
        let leader = e.target[3].value
        let date = e.target[4].value
        let genre = e.target[5].value
        let genreBool
        if (genre === 'Fiction') {
            genreBool = 'true'
        } else if (genre === 'Non-Fiction') {
            genreBool = 'false'
        }
        if (genre === 'Select Genre') {
            return
        }
        // console.log(genreBool)
        let req = await fetch('http://localhost:3000/books', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify({
                title: title,
                author: author,
                image_url: imageUrl,
                leader: leader,
                meeting_date: date,
                fiction: genreBool
            })
        })
        let res = await req.json()
        // console.log(res)
        getBooks()
    }

    return(
        <div>
            <form onSubmit={createBook} id='add-book-form'>
                <input type='text' placeholder='Title' />
                <input type='text' placeholder='Author' />
                <input type='text' placeholder='Image Url' />
                <input type='text' placeholder='Leader' />
                <input type='text'  placeholder='Date (as --/--/----)' />
                <select>
                    <option>Select Genre</option>
                    <option>Fiction</option>
                    <option>Non-Fiction</option>
                </select>
                <input type='submit' />
            </form>
        </div>
    )
}

export default AddBook