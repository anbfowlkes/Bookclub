import { useState } from 'react'
import './BookCard.css'
import UpdateBook from './UpdateBook'

let BookCard = ({editBool,getBooks,id,host,title,author,imageUrl,fiction,leader,date,dateDisplayer}) => {

    let [showUpdate, setShowUpdate] = useState(false)

    let updateClick = () => {
        console.log('update click clicked')
        setShowUpdate(prev => !prev)
    }
    
    let deleteClick = async () => {
        console.log('delete click clicked')
        console.log('id is: ', id)
        let req = await fetch(`https://gladbookclub.com/books/${id}`, {method: 'DELETE'})
        let res = await req.json()
        console.log(res)
        getBooks()
    }

    let isFutureBook = (date) => {
        let x = new Date(date)
        let today = new Date()
        if (x > today || date == '01/01/0000') {
            return true
        } else {
            return false
        }
    }

    return(
        <div id='book-card'>
            <div id='book-info'>
                <h4>{title}</h4>
                <p>By {author}</p>
                {fiction ? <p>{'Fiction'}</p> : <p>{'Non-Fiction'}</p>}
                {leader === 'TBD' ? null : <hr id='h-rule'></hr>}
                {date === '01/01/0000' ? null : <p>Mtg. Date: {dateDisplayer(date)}</p>}
                {leader === 'TBD' ? null : <p>Presenter: {leader}</p>}
                {isFutureBook(date) && leader != 'TBD' ? <p>Host: {host}</p> : null}
            </div>
            <div id='bk-img-div'>
                <img id='book-card-image' src={imageUrl} />
            </div>
            {editBool ?
                <>
                    <div id='card-buttons'>
                        <button onClick={updateClick}>Update</button>
                        <button onClick={deleteClick}>Delete</button>
                    </div>
                    <div>
                        {showUpdate ? <UpdateBook id={id} getBooks={getBooks}/> : null}
                    </div>
                </>
             : null}
        </div>
    )
}

export default BookCard