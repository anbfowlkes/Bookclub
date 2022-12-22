import { useState } from 'react'
import './BookCard.css'
import UpdateBook from './UpdateBook'

let BookCard = ({editBool,getBooks,id,title,author,imageUrl,fiction,leader,date,dateDisplayer}) => {

    let [showUpdate, setShowUpdate] = useState(false)

    let updateClick = () => {
        console.log('update click clicked')
        setShowUpdate(prev => !prev)
    }
    
    let deleteClick = async () => {
        console.log('delete click clicked')
        console.log('id is: ', id)
        let req = await fetch(`http://localhost:3000/books/${id}`, {method: 'DELETE'})
        let res = await req.json()
        console.log(res)
        getBooks()
    }

    return(
        <div id='book-card'>
            <div>
                <img id='book-card-image' src={imageUrl} />
            </div>
            <div id='book-info'>
                <p>{title}</p>
                <p>{author}</p>
                <p>{leader}</p>
                <p>{dateDisplayer(date)}</p>
                {fiction ? <p>{'Fiction'}</p> : <p>{'Non-Fiction'}</p>}
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