import { useState, useEffect } from 'react'
import MemberCard from './MemberCard'
import AddMember from './AddMember'
import './MemberCard.css'

let Members = () => {

    let [membersArray, setMembersArray] = useState([])
    let [booksArray, setBooksArray] = useState([])
    let [editBool, setEditBool] = useState(false)
    let [showDeletes, setShowDeletes] = useState(false)
    let [newMemberBool, setNewMemberBool] = useState(false)


    let getMembers = async () => {
        let req = await fetch('http://localhost:3000/members')
        let res = await req.json()
        console.log(res)
        res = res.sort((a, b) => {
            return a.name < b.name ? -1 : 1
        })
        setMembersArray(res)
    }

    let [favoritesData, setFavoritesData] = useState([])

    let getFavorites = async () => {
        let req = await fetch('http://localhost:3000/myroute')
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
                {editBool ? 
                <button onClick={() => setNewMemberBool(prev => !prev)}>Add a Member</button>
                : null}
            </div>
            <div>
                {newMemberBool ? <AddMember getMembers={getMembers} /> : null}
            </div>
            <div>
                {editBool ?
                    <button onClick={() => setShowDeletes(prev => !prev)}>Show Deletes</button>
                    : null}
            </div>
            <div id='act-mem'>
                <h2>Active Members</h2>
            </div>
            <div id='member-map'>
                {membersArray.map((member) => {
                    return <MemberCard showDeletes={showDeletes} getMembers={getMembers} getFavorites={getFavorites} memberId={member.id} booksArray={booksArray} favoritesData={favoritesData} editBool={editBool} key={c++} name={member.name} image={member.image} active={member.active} />
                })}
            </div>
            <div id='mem-mem'>
                <h2>In Memorium:</h2>
            </div>
        </>
    )
}

export default Members