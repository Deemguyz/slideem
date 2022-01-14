import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import reportWebVitals from './reportWebVitals';
import ImageHolder from './components/ImageHolder';
import DragDrop from './components/DragDrop';
//Bootstrap
import 'bootstrap/dist/css/bootstrap.min.css';
import './index.css';
// Images
import AppLogo from './app_logo.svg'; // Tell webpack this JS file uses this image
import DeemLogo from './deem_logo.png'; // Tell webpack this JS file uses this image
ReactDOM.render(
  <React.StrictMode>
    <ImageHolder imagePath={AppLogo} cssStyle='TopHolder' text=''/>
     <DragDrop />
    <App />
    <ImageHolder imagePath={DeemLogo} cssStyle='BottomHolder' text='Made by'/>
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
