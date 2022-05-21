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

interface CarouselContainerProps {
  imagePathList: string[];
}

const CarouselContainer = ({ imagePathList }: CarouselContainerProps) => {
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
      {imagePathList.map((path) => (
        <CarouselItem key={path} imagePath={path} />
      ))}
    </div>
  );
};

const App = () => {
  return (
    <CarouselContainer
      imagePathList={["/images/1.png", "/images/2.png", "/images/3.png"]}
    />
  );
};

export default App;
