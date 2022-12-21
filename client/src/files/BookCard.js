import './BookCard.css'

let BookCard = ({title,author,imageUrl,fiction,leader,date,dateDisplayer}) => {
    
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
        </div>
    )
}

export default BookCard