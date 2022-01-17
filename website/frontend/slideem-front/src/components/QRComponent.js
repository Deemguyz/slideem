
import {useEffect, useState} from 'react';
import QRCode from 'qrcode';
import Axios from 'axios';
import PdfDisplay from './PdfDisplay';
function QRComponent({PDF_document}) {
  const [src, setSrc] = useState('');
  const [qr_val, setQR] = useState('');
  const [scanned, setScanned] = useState(false);
  // Generate QR
  useEffect(() => {
      // GET request using fetch inside useEffect React hook
      fetch('https://slideem-backend.herokuapp.com/token/generate')
          .then(response => response.text())
          .then(data => setQR(data.toString()))
  // empty dependency array means this effect will only run once (like componentDidMount in classes)
  }, []);
  useEffect(() => {
      if (qr_val.length > 1){
        QRCode.toDataURL(qr_val.toString())
        .then(setSrc)
        }
  }, [qr_val]);
  const sayHi = () => {
    setScanned(true)
    document.getElementById('message').innerHTML='Welcome !'
    }
  return (
      <div className='qr-container'>
      {scanned == true?
        <PdfDisplay PDF_document = {PDF_document} QR={qr_val}/>
      :
        <img src={src} onClick={sayHi}/>
      }

    </div>

  );
}

export default QRComponent;
