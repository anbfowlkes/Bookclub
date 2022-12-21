let UpdateBook = () => {

    let updateTitle = (e) => {
        e.preventDefault()
    }

    let updateAuthor = (e) => {
        e.preventDefault()
    }

    let updateLeader = (e) => {
        e.preventDefault()
    }

    let updateDate = (e) => {
        e.preventDefault()
    }

    let updateFiction = (e) => {
        e.preventDefault()
        console.log(e.target[0].value)
        if (e.target[0].value === 'Select Value') {
            return
        }
        console.log('other')
    }

    return(
        <div>
            <form onSubmit={updateTitle}>
                <input type='text' placeholder='New Book Title' />
                <input type='submit' value='Change Title' />
            </form>
            <form onSubmit={updateAuthor}>
                <input type='text' placeholder='New Author' />
                <input type='submit' value='Change Author' />
            </form>
            <form onSubmit={updateLeader}>
                <input type='text' placeholder='New Leader' />
                <input type='submit' value='Change Leader' />
            </form>
            <form onSubmit={updateDate}>
                <input type='text' placeholder='Enter as --/--/----' />
                <input type='submit' value='Change Date' />
            </form>
            <form onSubmit={updateFiction}>
                <select name='Fiction or Non-Fiction' onSubmit={updateFiction}>
                    <option>Select Value</option>
                    <option>Fiction</option>
                    <option>Non-Fiction</option>
                </select>
                <input type='submit' value='Change Genre' />
            </form>
        </div>
    )
}

export default UpdateBook