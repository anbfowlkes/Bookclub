import { useEffect, useState } from 'react'
import BookCard from './BookCard.js'
import AddBook from './AddBook.js'
import './Books.css'
import ReactDropdown from 'react-dropdown'
// import Dropdown from './Dropdown'
import { Button, ButtonGroup, DropdownButton, MenuItem } from 'react-bootstrap';
import Dropdown from 'react-bootstrap/Dropdown';
// import DropdownButton from 'react-bootstrap/DropdownButton';



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
        let x = new Date()
        let myArray = []
        res.forEach((item) => {
            let meet = new Date(item.meeting_date)
            if (meet < x && item.meeting_date != '01/01/0000') {
                myArray.push(item)
            }
        })
        
        myArray = myArray.sort((a,b) => {
            let aTitle = titleChanger(a.title)
            let bTitle = titleChanger(b.title)
            return aTitle < bTitle ? -1 : 1
        })
        setBooksArray(myArray)
        setBooksShown(myArray)
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
        } else if (e.target.value === 'Most Recent') {
            books = books.sort((a,b) => {
                let x = new Date(a.meeting_date)
                let y = new Date(b.meeting_date)
                return x < y ? 1 : -1
            })
        } else if (e.target.value === 'Earliest') {
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
        if (e.target.value === 'All Books') {
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

    let nameDisp = (name) => {
        for (let i = 0; i < name.length; i++) {
            if (name[i] === ' ') {
                let a = name.slice(0,i)
                return a + "'s Favorites"
            }
        }
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
            
            <h1 id='past-header'>Past Books</h1>

            <div id='sorting-div'>

                {/* <ReactDropdown id='hi' options={[1,2,3]} value={'hi'} onChange={()=>console.log('hi')}/> */}


                <div className='menu'>
                    <select className='custom-select' onChange={(e) => sortChange(e, booksArray)}>
                        <option className='sel'>Sort By:</option>
                        <option className='sel'>Title</option>
                        <option className='sel'>Most Recent</option>
                        <option className='sel'>Earliest</option>
                    </select>
                </div>

                {/* <DropdownButton id="dropdown-basic-button" title="Dropdown button">
                    <Dropdown.Item href="#/action-1">Action</Dropdown.Item>
                    <Dropdown.Item href="#/action-2">Another action</Dropdown.Item>
                    <Dropdown.Item href="#/action-3">Something else</Dropdown.Item>
                </DropdownButton> */}

                {/* <div>
                    <ReactDropdown
                    options={options}
                    value={defaultOption}
                    onSortChange={({value}) => sortChange(value,booksArray)}
                    />
                </div> */}

                <div className='menu'>
                    
                    <select className='custom-select' onChange={(e) => handleFavorites(e)}>
                        {/* <option className='sel'>Member Favorites:</option> */}
                        <option className='sel'>All Books</option>
                        {favoritesData.map((item) => {
                            if (item.books.length > 0) {
                                return <option className='sel' value={item.name}>{nameDisp(item.name)}</option>
                            } else {
                                return
                            }
                        })}
                    </select>
                    
                </div>
            </div>

            <div id='past-books'>
                {booksShown.map((book) => {
                    return(
                        <BookCard editBool={editBool} key={c++} getBooks={getBooks} id={book.id} title={book.title} author={book.author} imageUrl={book.image_url} fiction={book.fiction} leader={book.leader} date={book.meeting_date} dateDisplayer={dateDisplayer}/>
                        )
                    })}
            </div>
            {/* <div id='edit-books-div'>
                <button onClick={() => setEditBool(prev => !prev)}>Edit Page</button>
            </div> */}

            

            <img className='bg' src='https://upload.wikimedia.org/wikipedia/commons/5/57/The_Flower_Fields_flowers.jpg'></img>
        </div>
    )
}

export default Books