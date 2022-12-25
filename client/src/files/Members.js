import { useState, useEffect } from 'react'
import MemberCard from './MemberCard'

let Members = () => {

    let [membersArray, setMembersArray] = useState([])
    let [booksArray, setBooksArray] = useState([])
    let [editBool, setEditBool] = useState(false)

    let getMembers = async () => {
        let req = await fetch('http://localhost:3000/members')
        let res = await req.json()
        console.log(res)
        // res = res.sort((a, b) => {
        //     return a.title < b.title ? -1 : 1
        // })
        setMembersArray(res)
    }

    let [favoritesData, setFavoritesData] = useState([])

    let getFavorites = async () => {
        let req = await fetch('http://localhost:3000/members/favorites')
        let res = await req.json()
        res.forEach((item) => {
            let b = item.books
            b.sort((a,b) => {
                return a.title < b.title ? -1 : 1
            })
            item.books = b
        })
        setFavoritesData(res)
    }   

    let getBooks = async () => {
        let req = await fetch('http://localhost:3000/books')
        let res = await req.json()
        console.log(res)
        res = res.sort((a, b) => {
            return a.title < b.title ? -1 : 1
        })
        setBooksArray(res)
    }

    useEffect(() => {
        getMembers()
        getFavorites()
        getBooks()
    }, [])

    let c = 0

    return(
        <>
            <div>
                <button onClick={() => setEditBool(prev => !prev)}>Edit Page</button>
            </div>
            <div>
                {membersArray.map((member) => {
                    return <MemberCard getFavorites={getFavorites} memberId={member.id} booksArray={booksArray} favoritesData={favoritesData} editBool={editBool} key={c++} name={member.name} image={member.image} active={member.active} />
                })}
            </div>
        </>
    )
}

export default Members