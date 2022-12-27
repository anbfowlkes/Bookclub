import { useState } from 'react'

let PictureDisplay = ( {pictureData} ) => {

    let [pictureIndex, setPictureIndex] = useState(0)
    let [imgUrl, setImgUrl] = useState('https://i.imgur.com/vRMjVRk.jpg')
    let [picDesc, setPicDesc] = useState('Back row (L-R): Anne Baughman, Mary Helen Dolan, Ann Dillon,\nFront row (L-R): Edna Shafer, Marcie Ver Ploeg, Martha Kelly, Susan Baruch, Margaret Beck\nPhotograph by Don Ver Ploeg')
    
    console.log(pictureIndex)
    console.log(pictureData)

    let prevImg = () => {
        let a = pictureIndex
        let len = pictureData.length
        let b = a
        if (a === 0) {
            b = len - 1
        } else {
            b = a - 1
        }
        console.log(a)
        let x = (pictureIndex + 1) % pictureData.length
        setImgUrl(pictureData[b].image_url)
        setPictureIndex(b)
        setPicDesc(pictureData[b].description)
    }

    let nextImg = () => {
        let x = (pictureIndex + 1) % pictureData.length
        setImgUrl(pictureData[x].image_url)
        setPictureIndex(x)
        setPicDesc(pictureData[x].description)
    }

    return(
        <div id='slideshow-div'>
            <div id='pic-container'>
                <img className='slide-image' src={`${imgUrl}`} />
            </div>
            <div id='info'>
                <p className='desc'>{picDesc}</p>
                <div id='buttons'>
                    <button className='pin' onClick={prevImg}>Previous</button>
                    <button className='pin' onClick={nextImg}>Next</button>
                </div>
            </div>
        </div>
    )
}

export default PictureDisplay