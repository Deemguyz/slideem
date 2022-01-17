import {useEffect, useState} from 'react';
import { Document, Page } from 'react-pdf';
import { pdfjs } from 'react-pdf';
import Axios from 'axios';
import { FillingBottle } from "react-cssfx-loading";
pdfjs.GlobalWorkerOptions.workerSrc = `//cdnjs.cloudflare.com/ajax/libs/pdf.js/${pdfjs.version}/pdf.worker.min.js`;
function PdfDisplay ({PDF_document , QR}){
  const [pageNumber, setPage] = useState(1);
  const [numPages, setPages] = useState(null);
  const [registered, setRegistered] = useState(false);
	const onDocumentLoadSuccess = ({ numPages }) => {
		setPages(numPages);
	}
  useEffect(() => {
    if (QR.includes("-")){
      const requestOptions = {
      method: 'POST',
      headers: { 'Content-Type': 'text/plain' },
      body: QR
    };

    fetch('https://slideem-backend.herokuapp.com/presentation/register', requestOptions)
    .then(response => response.json()) // or response.text()
    .then(data => {
    console.log(data)
    })
    setRegistered(true)
    }

  }, [QR])
  useEffect(() => {
    if (registered){
        const requestOptions = {
        method: 'POST',
        headers: {
        "Content-Type": "text/plain"
      },
        body: QR
      };
      fetch('https://slideem-backend.herokuapp.com/presentation/cur-page', requestOptions)
          .then(response =>  console.log(response.json()))
    }
  }, [pageNumber])

	const goToPrevPage = () => {
    if (registered){
  		setPage(pageNumber - 1)
      const requestOptions = {
      method: 'POST',
      headers: {
      "Content-Type": "text/plain"
      },
      body:  QR,
    };
    fetch('https://slideem-backend.herokuapp.com/presentation/page-down', requestOptions)
            .then(response => response.json()) // or response.text()
          .then(data => {
          console.log(data)
          })
          .catch(err => { console.log('error while fetching', err) });
    }
  }
	const goToNextPage = () => {
    if (registered){
  		setPage(pageNumber + 1)
      const requestOptions = {
      method: 'POST',
      headers: {
      "Content-Type": "text/plain"
        },
      body: QR
    };
    fetch('https://slideem-backend.herokuapp.com/presentation/page-up', requestOptions)
        .then(response =>  console.log(response.json()))
    }
  }



		return (
        <div>
      {registered === false ?
      // Loading screen
      <div>
            <FillingBottle width="100px" height="100px" />
            <h3> Loading ... </h3>
      </div>
        :
      <div>
				<nav>
					<button onClick={goToPrevPage}>Prev</button>
					<button onClick={goToNextPage}>Next</button>
				</nav>

				<div style={{ width: 600 }}>
					<Document
						file={PDF_document}
						onLoadSuccess={onDocumentLoadSuccess}
					>
						<Page pageNumber={pageNumber} width={600} />
					</Document>
				</div>

				<p>
					Page {pageNumber} of {numPages}
				</p>

			</div>
    }
    </div>
		);

}
PdfDisplay.defaultProps = {
  QR: "none",
  PDF_document: "none",

}

export default PdfDisplay;
