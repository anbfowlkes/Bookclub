import { useEffect, useState } from 'react'
import BookCard from './BookCard.js'
import AddBook from './AddBook.js'
import './Books.css'
import ReactDropdown from 'react-dropdown'
import Dropdown from './Dropdown'

let Books = () => {

    let titleChanger = (title) => {
        if (title.slice(0, 2) === "A ") {
            return title.slice(2)
        } else if (title.slice(0, 4) === 'The ') {
            return title.slice(4)
        } else if (title.slice(0, 3) === 'An ') {
            return title.slice(3)
        } else {
            return title
        }
    }

// winter
    let [editBool, setEditBool] = useState(false)

    let c = 0
    let [booksArray, setBooksArray] = useState([])
    let [favoritesData, setFavoritesData] = useState([])
    let [membersArray, setMembersArray] = useState([])
    let [newBookBool, setNewBookBool] = useState(false)
    let [booksShown, setBooksShown] = useState([])

    let getBooks = async () => {
        let req = await fetch('http://localhost:3000/books')
        let res = await req.json()
        console.log(res)
        res = res.sort((a,b) => {
            let aTitle = titleChanger(a.title)
            let bTitle = titleChanger(b.title)
            return aTitle < bTitle ? -1 : 1
        })
        setBooksArray(res)
        setBooksShown(res)
    }

    let getFavorites = async () => {
        let req = await fetch('http://localhost:3000/myroute')
        let res = await req.json()
        setFavoritesData(res)
    }

    let getMembers = async () => {
        let req = await fetch('http://localhost:3000/members')
        let res = await req.json()
        setMembersArray(res)
    }

    useEffect(() => {
        getBooks()
        getFavorites()
        getMembers()
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
            month = "Sept"
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
        return month + ". " + date[6]+date[7]+date[8]+date[9]
    }

    let sortChange = (e,booksArray) => {
        e.preventDefault()
        console.log(e.target.value)
        if (e.target.value === 'Sort By:') {
            return
        }
        let books = [...booksShown]
        if (e.target.value === 'Title') {
            books = books.sort((a,b) => {
                let aTitle = titleChanger(a.title)
                let bTitle = titleChanger(b.title)
                return aTitle < bTitle ? -1 : 1
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
        setBooksShown(books)
        console.log('still running')
    }

    let handleFavorites = (e) => {
        console.log('hi')
        if (e.target.value === 'All') {
            setBooksShown(booksArray)
            return
        }
        favoritesData.forEach((item) => {
            if (item.name === e.target.value) {
                setBooksShown(item.books)
                return
            }
        })
        // setBooksShown()
    }

    let options = ['Title', 'Newest', 'Oldest']
    const defaultOption = options[0]


    return(
        <div id='past-books-container'>
            {editBool ? 
                <div>
                    <button onClick={() => setNewBookBool(prev => !prev)}>Add a Book</button>
                </div> 
                : null}
            
            {newBookBool && editBool ? <AddBook getBooks={getBooks} /> : null }
            <div>
                <form onSubmit={(e)=>sortChange(e,booksArray) }>
                    <select onChange={(e)=>sortChange(e,booksArray)}>
                        <option>Sort By:</option>
                        <option>Title</option>
                        <option>Newest</option>
                        <option>Oldest</option>
                    </select>
                </form>
            </div>

            {/* <div>
                <ReactDropdown
                    options={options}
                    value={defaultOption}
                    onSortChange={({value}) => sortChange(value,booksArray)}
                />
            </div> */}
            
            <div>
                <form>
                    <select onChange = {(e) => handleFavorites(e)}>
                        <option>Favorites of:</option>
                        <option>All</option>
                        {favoritesData.map((item) => {
                            if (item.books.length > 0) {
                                return <option>{item.name}</option>
                            } else {
                                return
                            }
                        })}
                    </select>
                </form>
            </div>
            <h1 id='past-header'>Past Books</h1>
            <div id='past-books'>
                {booksShown.map((book) => {
                    return(
                        <BookCard editBool={editBool} key={c++} getBooks={getBooks} id={book.id} title={book.title} author={book.author} imageUrl={book.image_url} fiction={book.fiction} leader={book.leader} date={book.meeting_date} dateDisplayer={dateDisplayer}/>
                        )
                    })}
            </div>
            <div id='edit-books-div'>
                <button onClick={() => setEditBool(prev => !prev)}>Edit Page</button>
            </div>
        </div>
    )
}

export default Books