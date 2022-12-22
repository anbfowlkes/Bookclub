import './MemberCard.css'

let MemberCard = ( {name, image, active} ) => {

    return(
        <div>
            <div>
                <img id='member-card-image' src={image} />
            </div>
            <div id='member-info'>
                <p>{name}</p>
                {active ? <p>{'Active'}</p> : <p>{'Not Active'}</p>}
            </div>
        </div>
    )
}

export default MemberCard