import { useEffect, useState } from 'react'
import BookCard from './BookCard'
import './FutureBooks.css'

let FutureBooks = () => {
    // spring

    let [booksArray, setBooksArray] = useState([])
    let [restOfBooks, setRestOfBooks] = useState([])
    let [nextBook, setNextBook] = useState(null)
    let [futureBooks, setFutureBooks] = useState([])
    let [bookIdeas, setBookIdeas] = useState([])

    let getBooks = async () => {
        let req = await fetch('https://gladbookclub.com/books')
        let res = await req.json()
        // console.log(res)
        res = res.sort((a, b) => {
            return a.title < b.title ? -1 : 1
        })
        setBooksArray(res)
        // console.log(res)
        let x = new Date()
        // console.log(x)
        let y = res[0]
        console.log(y.meeting_date)
        let z = new Date(y.meeting_date)
        // console.log(z)
        if (x < z) {
            // console.log('first')
        } else {
            // console.log('second')
        }
        let myArray = []
        let ideaArray = []
        res.forEach((item) => {
            let meet = new Date(item.meeting_date)
            if (meet > x) {
                myArray.push(item)
            }
            if (item.leader === "TBD") {
                ideaArray.push(item)
            }
        })
        // console.log(myArray)
        // let next = myArray[0]
        // myArray.forEach((book) => {
        //     if (new Date(book.meeting_date) < new Date(next.meeting_date)) {
        //         next = book
        //     }
        // })
        // console.log(next)
        myArray = myArray.sort((a,b) => {
            return new Date(a.meeting_date) < new Date(b.meeting_date) ? -1 : 1
        })
        // console.log('next book: ', myArray[0])
        setNextBook(myArray[0])
        let a = []
        a.push(myArray[0])
        // console.log(myArray)
        setFutureBooks(a)
        myArray.shift()
        // console.log('rest: ', myArray)
        setRestOfBooks(myArray)
        setBookIdeas(ideaArray)
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
        if (date[3] == '0') {
            return month + ". " + date[4] + ", " + date[6] + date[7] + date[8] + date[9]
        } else {
            return month + ". " +date[3] + date[4]+ ", " + date[6] + date[7] + date[8] + date[9]
        }
        
    }

    let c = 0
    let editBool = false

    return(
        <div id='futures'>
            {/* <div>
                <BookCard editBool={editBool} key={c++} getBooks={getBooks} id={nextBook.id} title={nextBook.title} author={nextBook.author} imageUrl={nextBook.image_url} fiction={nextBook.fiction} leader={nextBook.leader} date={nextBook.meeting_date} dateDisplayer={dateDisplayer} />
            </div> */}
            {/* <div>
                <BookCard editBool={editBool} key={c++} getBooks={getBooks} id={futureBooks[0].id} title={futureBooks[0].title} author={futureBooks[0].author} imageUrl={futureBooks[0].image_url} fiction={futureBooks[0].fiction} leader={futureBooks[0].leader} date={futureBooks[0].meeting_date} dateDisplayer={dateDisplayer} />
            </div> */}
            <div id='next-book'>
                <h2>Our Next Book:</h2>
                {futureBooks.map((book) => {
                    return <BookCard editBool={editBool} key={c++} getBooks={getBooks} id={book.id} host={book.host} title={book.title} author={book.author} imageUrl={book.image_url} fiction={book.fiction} leader={book.leader} date={book.meeting_date} dateDisplayer={dateDisplayer} />
                })}
            </div>
            <div id='upcoming-books'>
                <h2>Upcoming Books:</h2>
                {restOfBooks.map((book) => {
                    return <BookCard editBool={editBool} key={c++} getBooks={getBooks} id={book.id} host={book.host} title={book.title} author={book.author} imageUrl={book.image_url} fiction={book.fiction} leader={book.leader} date={book.meeting_date} dateDisplayer={dateDisplayer} />
                })}
            </div>
            <div id='book-ideas'>
                <h2>Future Book Ideas:</h2>
                <div id='idea-gallery'>
                {bookIdeas.map((book) => {
                    return <BookCard editBool={editBool} key={c++} getBooks={getBooks} id={book.id} host={book.host} title={book.title} author={book.author} imageUrl={book.image_url} fiction={book.fiction} leader={book.leader} date={book.meeting_date} dateDisplayer={dateDisplayer} />
                })}
                </div>
            </div>
            <img className='bg' src='https://st2.depositphotos.com/1393398/9138/i/950/depositphotos_91382138-stock-photo-winter-alley-with-snow-covered.jpg'></img>
        </div>
    )
}

export default FutureBooks