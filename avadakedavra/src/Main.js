import React from "react";
import "./App.css";
import Txtcard from "./Txtcard";

function Home() {
  return (
    <div className="main">
      <div style={{ paddingTop: '10%' }}>
        <Txtcard className="maintxt" />
      </div>

    </div>
  );
}

export default Home;
