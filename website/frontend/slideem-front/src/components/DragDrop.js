import React, {useCallback} from 'react'
import {useDropzone} from 'react-dropzone'
import {useState} from 'react';
import Button from './Button';
import PdfDisplay from './PdfDisplay';
import QRComponent from './QRComponent';


const DragDrop = () => {
  const [acceptedFileItems, setFiles] = useState([]);
  const [acceptedFile, setFile] = useState(null);
  const onDrop = useCallback(acceptedFiles => {
    // Do something with the files
    setFiles(acceptedFiles)
  }, [])
  const onConfirm = () => {
     const img = document.getElementById( 'img' );

    acceptedFileItems.forEach((file) => {
      const reader = new FileReader()
      reader.onabort = () => console.log('file reading was aborted')
      reader.onerror = () => console.log('file reading has failed')
      reader.onload = () => {
      // Do whatever you want with the file contents
        const binaryStr = reader.result
        setFile(binaryStr)
      }
      reader.readAsArrayBuffer(file)
    })
    setFiles([])

  }


  const {getRootProps, getInputProps, isDragActive} = useDropzone({onDrop, accept:'.pdf', maxFiles:1})


  return (
<div className="dragdrop-container">
    {acceptedFile !== null ?
      <QRComponent PDF_document = {acceptedFile}/>
      // <PdfDisplay PDF_document = {acceptedFile}/>
      :
    // Drag & Drop component
    <div {...getRootProps()} className='dragdrop'>
      <input {...getInputProps()} />
      {
        isDragActive ?
          <p>Drop the files here ...</p> :
          <a className="fcc-btn" >Select</a>
        //  <p>Drag 'n' drop some files here, or click to select files</p>
      }
    </div>
    }
    // Accept
    <div className='accepted'>
    {acceptedFile !== null ?
      <h4 id='message'>Scan QR code...</h4>
      :
      <div>
        <h4>Accepted file</h4>
        <ul>{ acceptedFileItems.map(file => (
            <li key={file.path}>
              {file.path} - {file.size} bytes
            </li>
          ))}</ul>
          {acceptedFileItems && <Button text='Confirm' color='green' onClick={onConfirm}/>}

        </div>
    }
    </div>

</div>

  )
}
export default DragDrop;
