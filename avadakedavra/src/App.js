import BSOD from "./Main";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import "./App.css";


function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route path="/" element={<BSOD />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
