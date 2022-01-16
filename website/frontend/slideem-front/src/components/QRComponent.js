
import {useEffect, useState} from 'react';
import QRCode from 'qrcode';
function QRComponent() {
  const [src, setSrc] = useState('');
  // Generate QR
  useEffect(() => {
      // GET request using fetch inside useEffect React hook
      fetch('https://slideem-backend.herokuapp.com/token/generate')
          .then(response => response.text())
          .then(data => QRCode.toDataURL(data.toString()))
          .then(setSrc)
  // empty dependency array means this effect will only run once (like componentDidMount in classes)
  }, []);

  return (
    <div className='qr-container'>
    <img src={src} />
    </div>

  );
}

export default QRComponent;
