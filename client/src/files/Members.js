import { useState, useEffect } from 'react'
import MemberCard from './MemberCard'

let Members = () => {

    let [membersArray, setMembersArray] = useState([])

    let getMembers = async () => {
        let req = await fetch('http://localhost:3000/members')
        let res = await req.json()
        console.log(res)
        // res = res.sort((a, b) => {
        //     return a.title < b.title ? -1 : 1
        // })
        setMembersArray(res)
    }

    useEffect(() => {
        getMembers()
    }, [])

    let c = 0

    return(
        <div>
            {membersArray.map((member) => {
                return <MemberCard key={c++} name={member.name} image={member.image} active={member.active} />
            })}
        </div>
    )
}

export default Members