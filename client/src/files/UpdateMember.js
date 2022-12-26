let UpdateMember = ({ id, getMembers }) => {

    let updateName = async (e) => {
        e.preventDefault()
        let newName = e.target[0].value
        let req = await fetch(`http://localhost:3000/members/${id}`, {
            method: "PATCH",
            body: JSON.stringify({
                name: newName
            }),
            headers: {
                'Content-type': 'application/json'
            }
        })
        let res = await req.json()
        console.log(res)
        getMembers()
    }

    let updateImage = async (e) => {
        e.preventDefault()
        let newImage = e.target[0].value
        let req = await fetch(`http://localhost:3000/members/${id}`, {
            method: "PATCH",
            body: JSON.stringify({
                image: newImage
            }),
            headers: {
                'Content-type': 'application/json'
            }
        })
        let res = await req.json()
        console.log(res)
        getMembers()
    }

    let updateActive = async (e) => {
        e.preventDefault()
        let newActive = e.target[0].value
        if (newActive === 'Select Value') {
            return
        }
        let bool
        newActive === 'Active' ? bool = true : bool = false
        let req = await fetch(`http://localhost:3000/members/${id}`, {
            method: "PATCH",
            body: JSON.stringify({
                active: bool
            }),
            headers: {
                'Content-type': 'application/json'
            }
        })
        let res = await req.json()
        console.log(res)
        getMembers()
    }


    // let updateActive = (e) => {
    //     e.preventDefault()
    //     console.log(e.target[0].value)
    //     if (e.target[0].value === 'Select Value') {
    //         return
    //     }
    //     console.log('other')
    // }

    return (
        <div>
            <form onSubmit={updateName}>
                <input type='text' placeholder='New Name' />
                <input type='submit' value='Change Name' />
            </form>
            <form onSubmit={updateImage}>
                <input type='text' placeholder='New Image' />
                <input type='submit' value='Change Image URL' />
            </form>
            <form onSubmit={updateActive}>
                <select name='Active or Non-Active' onSubmit={updateActive}>
                    <option>Select Value</option>
                    <option>Active</option>
                    <option>Not Active</option>
                </select>
                <input type='submit' value='Change Status' />
            </form>
        </div>
    )
}

export default UpdateMember