import './BookCard.css'

let BookCard = ({id,title,author,imageUrl,fiction,leader,date,dateDisplayer}) => {

    let updateClick = () => {
        console.log('update click clicked')
    }
    
    let deleteClick = async () => {
        console.log('delete click clicked')
        // let  req = await fetch()
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
            </div>
            <div id='card-buttons'>
                <button onClick={updateClick}>Update</button>
                <button onClick={deleteClick}>Delete</button>
            </div>
        </div>
    )
}

export default BookCard