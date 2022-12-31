let UpdateBook = ( {id,getBooks} ) => {

    let updateTitle = async (e) => {
        e.preventDefault()
        let newTitle = e.target[0].value
        // console.log(newTitle)
        let req = await fetch(`https://gladbookclub.com/books/${id}`, {
            method: "PATCH",
            body: JSON.stringify({
                title: newTitle
            }),
            headers: {
                'Content-type': 'application/json'
            }
        })
        let res = await req.json()
        // console.log(res)
        getBooks()
    }

    let updateAuthor = async (e) => {
        e.preventDefault()
        let newAuthor = e.target[0].value
        let req = await fetch(`https://gladbookclub.com/books/${id}`, {
            method: "PATCH",
            body: JSON.stringify({
                author: newAuthor
            }),
            headers: {
                'Content-type': 'application/json'
            }
        })
        let res = await req.json()
        // console.log(res)
        getBooks()
    }

    let updateLeader = async (e) => {
        e.preventDefault()
        let newLeader = e.target[0].value
        let req = await fetch(`https://gladbookclub.com/books/${id}`, {
            method: "PATCH",
            body: JSON.stringify({
                leader: newLeader
            }),
            headers: {
                'Content-type': 'application/json'
            }
        })
        let res = await req.json()
        // console.log(res)
        getBooks()
    }

    let updateDate = async (e) => {
        e.preventDefault()
        let newDate = e.target[0].value
        let req = await fetch(`https://gladbookclub.com/books/${id}`, {
            method: "PATCH",
            body: JSON.stringify({
                meeting_date: newDate
            }),
            headers: {
                'Content-type': 'application/json'
            }
        })
        let res = await req.json()
        // console.log(res)
        getBooks()
    }

    let updateGenre = async (e) => {
        e.preventDefault()
        let newGenre = e.target[0].value
        if (newGenre === 'Select Value') {
            return
        }
        let bool
        newGenre === 'Fiction' ? bool = true : bool = false
        let req = await fetch(`https://gladbookclub.com/books/${id}`, {
            method: "PATCH",
            body: JSON.stringify({
                fiction: bool
            }),
            headers: {
                'Content-type': 'application/json'
            }
        })
        let res = await req.json()
        // console.log(res)
        getBooks()
    }

    let updateFiction = (e) => {
        e.preventDefault()
        // console.log(e.target[0].value)
        if (e.target[0].value === 'Select Value') {
            return
        }
        // console.log('other')
    }

    return(
        <div>
            <form onSubmit={updateTitle}>
                <input type='text' placeholder='New Book Title' />
                <input type='submit' value='Change Title' />
            </form>
            <form onSubmit={updateAuthor}>
                <input type='text' placeholder='New Author' />
                <input type='submit' value='Change Author' />
            </form>
            <form onSubmit={updateLeader}>
                <input type='text' placeholder='New Leader' />
                <input type='submit' value='Change Leader' />
            </form>
            <form onSubmit={updateDate}>
                <input type='text' placeholder='Enter as --/--/----' />
                <input type='submit' value='Change Date' />
            </form>
            <form onSubmit={updateGenre}>
                <select name='Fiction or Non-Fiction' onSubmit={updateFiction}>
                    <option>Select Value</option>
                    <option>Fiction</option>
                    <option>Non-Fiction</option>
                </select>
                <input type='submit' value='Change Genre' />
            </form>
        </div>
    )
}

export default UpdateBook