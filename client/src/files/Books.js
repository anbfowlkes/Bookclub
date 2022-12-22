import { useEffect, useState } from 'react'
import BookCard from './BookCard.js'
import AddBook from './AddBook.js'

let Books = () => {

    let [editBool, setEditBool] = useState(false)

    let c = 0
    let [booksArray, setBooksArray] = useState([])
    let [newBookBool, setNewBookBool] = useState(false)

    let getBooks = async () => {
        let req = await fetch('http://localhost:3000/books')
        let res = await req.json()
        console.log(res)
        res = res.sort((a,b) => {
            return a.title < b.title ? -1 : 1
        })
        setBooksArray(res)
    }

    useEffect(() => {
        getBooks()
    },[])

    let dateDisplayer = (date) => {
        let month
        let monthNum = parseInt(date[0] + date[1])
        if (monthNum === 1) {
            month = "Jan"
        }
        if (monthNum === 2) {
            month = "Feb"
        }
        if (monthNum === 3) {
            month = "Mar"
        }
        if (monthNum === 4) {
            month = "Apr"
        }
        if (monthNum === 5) {
            month = "May"
        }
        if (monthNum === 6) {
            month = "Jun"
        }
        if (monthNum === 7) {
            month = "Jul"
        }
        if (monthNum === 8) {
            month = "Aug"
        }
        if (monthNum === 9) {
            month = "Sep"
        }
        if (monthNum === 10) {
            month = "Oct"
        }
        if (monthNum === 11) {
            month = "Nov"
        }
        if (monthNum === 12) {
            month = "Dec"
        }
        return month + ", " + date[6]+date[7]+date[8]+date[9]
    }

    let sortChange = (e,booksArray) => {
        console.log(e.target.value)
        if (e.target.value === 'Sort By:') {
            return
        }
        let books = [...booksArray]
        if (e.target.value === 'Title') {
            books = books.sort((a,b) => {
                return a.title < b.title ? -1 : 1
            })
        } else if (e.target.value === 'Newest') {
            books = books.sort((a,b) => {
                let x = new Date(a.meeting_date)
                let y = new Date(b.meeting_date)
                return x < y ? 1 : -1
            })
        } else if (e.target.value === 'Oldest') {
            books = books.sort((a, b) => {
                let x = new Date(a.meeting_date)
                let y = new Date(b.meeting_date)
                return x < y ? -1 : 1
            })
        }
        setBooksArray(books)
        console.log('still running')
    }


    return(
        <>
            <div>
                <button onClick={() => setEditBool(prev => !prev)}>Edit Page</button>
            </div>
            {editBool ? 
                <div>
                    <button onClick={() => setNewBookBool(prev => !prev)}>Add a Book</button>
                </div> 
                : null}
            
            {newBookBool && editBool ? <AddBook getBooks={getBooks} /> : null }
            <div>
                <form>
                    <select onChange={(e)=>sortChange(e,booksArray)}>
                        <option>Sort By:</option>
                        <option>Title</option>
                        <option>Newest</option>
                        <option>Oldest</option>
                    </select>
                    <input type='submit' />
                </form>
            </div>
            <div id='past-books'>
                {booksArray.map((book) => {
                    return(
                        <BookCard editBool={editBool} key={c++} getBooks={getBooks} id={book.id} title={book.title} author={book.author} imageUrl={book.image_url} fiction={book.fiction} leader={book.leader} date={book.meeting_date} dateDisplayer={dateDisplayer}/>
                        )
                    })}
            </div>
        </>
    )
}

export default Books