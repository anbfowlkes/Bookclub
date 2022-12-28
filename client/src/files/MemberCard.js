import { useState } from 'react'
import './MemberCard.css'
// import { useState } from 'react'
import UpdateMember from './UpdateMember'

let MemberCard = ( {showDeletes, getMembers, getFavorites, memberId, booksArray, favoritesData, editBool, name, image, active} ) => {

    let [myBool, setMyBool] = useState(false)

    let addFavorite = async (e) => {
        e.preventDefault()
        console.log(e.target[0].value)
        let req = await fetch('http://localhost:3000/members/favorites', {
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
        let req = await fetch('http://localhost:3000/deletefavorite', {
            method: 'DELETE',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                member_id: memberId,
                book_id: e.target[0].value,
            })
        })
        getFavorites()
    }
    
    let handleDelete = async (e) => {
        console.log(e.target.value)
        console.log(memberId)
        let req = await fetch(`http://localhost:3000/members/${memberId}/`, {method: 'DELETE'})
        let res = await req.json()
        console.log(res)
        getMembers()
    }
    // console.log('favorites data: ', favoritesData)

    return(
        <div id='member-div'>
            <div id='pic-and-info'>
                <div>
                    <img id='member-card-image' src={image} />
                </div>
                <div id='member-info'>
                    <p>{name}</p>
                    {/* {active ? <p>{'Active'}</p> : <p>{'Not Active'}</p>} */}
                </div>
            </div>
            {editBool ? 
            <>
                <button onClick={() => setMyBool(prev => !prev)}>Edit Member</button>
                    {myBool ? <UpdateMember id={memberId} getMembers={getMembers} /> : null }
                {showDeletes ? 
                <button onClick={(e) => handleDelete(e)}>Delete Member</button>
                : null}
            </>
            : null}
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