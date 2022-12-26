import './MemberCard.css'

let MemberCard = ( {getFavorites, memberId, booksArray, favoritesData, editBool, name, image, active} ) => {

    let addFavorite = async (e) => {
        e.preventDefault()
        console.log(e.target[0].value)
        let req = await fetch('http://localhost:3000//members/favorites', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                member_id: memberId,
                book_id: e.target[0].value,
            })
        })
        getFavorites()
    }

    let removeFavorite = async (e) => {
        e.preventDefault()
        let req = await fetch('http://localhost:3000//members/favorites', {
            method: 'DELETE',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                member_id: memberId,
                book_id: e.target[0].value,
            })
        })
        getFavorites()
    }

    // console.log('favorites data: ', favoritesData)

    return(
        <div id='member-div'>
            <div>
                <img id='member-card-image' src={image} />
            </div>
            <div id='member-info'>
                <p>{name}</p>
                {active ? <p>{'Active'}</p> : <p>{'Not Active'}</p>}
            </div>
            {editBool ? 
            <>
                <form onSubmit={(e) => removeFavorite(e)}>Remove a favorite:
                    <select>
                        {favoritesData.map((item) => {
                            if (item.name === name) {
                                return item.books.map((book) => {
                                    return <option value={book.id}>{book.title}</option>
                                })
                            }
                        })}
                    </select>
                    <input type='submit'></input>
                </form>
                <form onSubmit={(e) => addFavorite(e)}> Add a Favorite:
                    <select>
                        {booksArray.map((book) => {
                            return <option value={book.id}>{book.title}</option>
                        })}
                    </select>
                    <input type='submit'></input>
                </form>
            </>
            : null}
        </div>
    )
}

export default MemberCard