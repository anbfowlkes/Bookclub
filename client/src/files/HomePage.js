import './HomePage.css'
import PictureDisplay from './PictureDisplay'
import { useEffect, useState } from 'react'

let HomePage = () => {

    let [pictureData, setPictureData] = useState([])

    let getPictures = async () => {
        let req = await fetch('http://localhost:3000/pictures')
        let res = await req.json()
        console.log(res)
        setPictureData(res)
    }

    useEffect(() => {
        getPictures()
    },[])
// fall image here
    return(
        <div id='home-page'>
            <h1 id='home-header'>Our Gladbook Club</h1>
            <PictureDisplay pictureData={pictureData} />
        </div>
    )
}

export default HomePage