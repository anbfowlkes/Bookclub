let AddMember = ( {getMembers} ) => {

    let createMember = async (e) => {
        e.preventDefault()
        let name = e.target[0].value
        let active = e.target[1].value
        let image = e.target[2].value
        let activeBool
        if (active === 'Active') {
            activeBool = 'true'
        } else if (active === 'Not Active') {
            activeBool = 'false'
        }
        if (active === 'Select Status:') {
            return
        }
        let req = await fetch('http://localhost:3000/members', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                name: name,
                active: active,
                image: image,
            })
        })
        getMembers()
        // let res = await req.json()
        // console.log(res)
    }

    return (
        <div>
            <form onSubmit={createMember} id='add-book-form'>
                <input type='text' placeholder='Name' />
                <select>
                    <option>Select Status:</option>
                    <option>Active</option>
                    <option>Not Active</option>
                </select>
                <input type='text' placeholder='Image Url' />
                <input type='submit' />
            </form>
        </div>
    )
}

export default AddMember