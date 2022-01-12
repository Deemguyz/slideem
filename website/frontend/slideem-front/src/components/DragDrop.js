import React, {useCallback} from 'react'
import {useDropzone} from 'react-dropzone'
import {useEffect, useState} from 'react';
import Button from './Button';
const DragDrop = () => {
  const [acceptedFileItems, setFiles] = useState([]);
  const [srcImg, setSrc] = useState('');
  const onDrop = useCallback(acceptedFiles => {
    // Do something with the files
    setFiles(acceptedFiles)
  }, [])
  const confirm = () => {

    console.log(acceptedFileItems)
    acceptedFileItems.forEach((file) => {
      const reader = new FileReader()

      reader.onabort = () => console.log('file reading was aborted')
      reader.onerror = () => console.log('file reading has failed')
      reader.onload = () => {
      // Do whatever you want with the file contents
        const binaryStr = reader.result
        console.log(binaryStr)

      }
      reader.readAsArrayBuffer(file)
    })
    setFiles([])

  }
  const {getRootProps, getInputProps, isDragActive} = useDropzone({onDrop, accept:'.pdf', maxFiles:1})

  return (
<div className="dragdrop-container">
    <div {...getRootProps()} className='dragdrop'>

      <input {...getInputProps()} />
      {
        isDragActive ?
          <p>Drop the files here ...</p> :
          <a className="fcc-btn" >Select</a>
        //  <p>Drag 'n' drop some files here, or click to select files</p>
      }

    </div>
    <div className='accepted'>

      <h4>Accepted file</h4>
      <ul>{ acceptedFileItems.map(file => (
          <li key={file.path}>
            {file.path} - {file.size} bytes
          </li>
        ))}</ul>
        {acceptedFileItems && <Button text='Confirm' color='green' onClick={confirm}/>}


    </div>
</div>

  )
}
export default DragDrop;
