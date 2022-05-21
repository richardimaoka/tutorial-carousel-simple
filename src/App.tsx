import React from "react";

interface CarouselItemProps {
  imagePath: string;
}

const CarouselItem = ({ imagePath }: CarouselItemProps) => {
  return (
    <div style={{ scrollSnapAlign: "start", padding: "4px" }}>
      <img
        width="640px"
        height="360px"
        style={{ verticalAlign: "middle" }}
        src={imagePath}
      />
    </div>
  );
};

const App = () => {
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
      <CarouselItem imagePath="/images/1.png" />
      <CarouselItem imagePath="/images/2.png" />
      <CarouselItem imagePath="/images/3.png" />
    </div>
  );
};

export default App;
