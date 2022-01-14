
const ImageHolder = ({imagePath, cssStyle, text}) => {
console.log(imagePath);
  //text_holder =
  return (
    <div className={cssStyle}>
    <row>
          { text !== '' && <h1>{text}</h1>}
          <img  src={imagePath} alt='Image is not available.' />
</row>
      </div>

  )

}


export default ImageHolder;
