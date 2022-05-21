import React from "react";

function App() {
  return (
    <div
      style={{
        display: "flex",
        flexDirection: "row",
        width: "648px",
        overflowX: "auto",
        scrollSnapType: "x mandatory",
      }}
    >
      <div style={{ scrollSnapAlign: "start", padding: "4px" }}>
        <img
          width="640px"
          height="360px"
          style={{ verticalAlign: "middle" }}
          src="/images/1.png"
        />
      </div>
      <div style={{ scrollSnapAlign: "start", padding: "4px" }}>
        <img
          width="640px"
          height="360px"
          style={{ verticalAlign: "middle" }}
          src="/images/2.png"
        />
      </div>

      <div style={{ scrollSnapAlign: "start", padding: "4px" }}>
        <img
          width="640px"
          height="360px"
          style={{ verticalAlign: "middle" }}
          src="/images/3.png"
        />
      </div>
    </div>
  );
}

export default App;
