import { useEffect, useState } from 'react'
import BookCard from './BookCard.js'

let Books = () => {

    let [booksArray, setBooksArray] = useState([])

    let getBooks = async () => {
        let req = await fetch('http://localhost:3000/home')
        let res = await req.json()
        console.log(res)
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


    return(
        <div>
            {booksArray.map((book) => {
                return(
                    <BookCard title={book.title} author={book.author} imageUrl={book.image_url} fiction={book.fiction} leader={book.leader} date={book.meeting_date} dateDisplayer={dateDisplayer}/>
                )
            })}
        </div>
    )
}

export default Books