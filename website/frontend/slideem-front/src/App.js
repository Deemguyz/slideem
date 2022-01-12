
import './App.css';
import {useEffect, useState} from 'react';
import QRCode from 'qrcode';
function App() {
  const [src, setSrc] = useState('');
  // Generate QR
  const session_id = Date.now();
  console.log(session_id)
  useEffect(() => {
    QRCode.toDataURL(session_id.toString() ).then(setSrc)
  }, []);
  return (
    <div> </div>
    //<img src={src} />

  );
}

export default App;
