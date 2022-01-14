
import {useEffect, useState} from 'react';
import QRCode from 'qrcode';
function QRComponent() {
  const [src, setSrc] = useState('');
  // Generate QR
  useEffect(() => {
      // GET request using fetch inside useEffect React hook
      fetch('https://slideem-backend.herokuapp.com/token/generate', {mode: 'no-cors',   })
          .then(response => response.json())
          .then(data => console.log(data));

  // empty dependency array means this effect will only run once (like componentDidMount in classes)
  }, []);
  const session_id = Date.now();
  console.log(session_id)
  useEffect(() => {
    QRCode.toDataURL(session_id.toString() ).then(setSrc)
  }, []);
  return (
    <div className='qr-container'>
    <img src={src} />
    </div>

  );
}

export default QRComponent;
