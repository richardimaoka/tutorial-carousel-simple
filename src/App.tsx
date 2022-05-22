import React, { useEffect, useRef, useState } from "react";

interface CarouselItemProps {
  imagePath: string;
}

const CarouselItem = ({ imagePath }: CarouselItemProps) => {
  const ref = useRef<HTMLDivElement>(null);
  useEffect(() => {
    if (imagePath === "/images/3.png") {
      ref?.current?.scrollIntoView({ behavior: "smooth" });
    }
  });
  return (
    <div ref={ref} style={{ scrollSnapAlign: "start", padding: "4px" }}>
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

const CarouselControl = () => {
  const imagePathList = ["/images/1.png", "/images/2.png", "/images/3.png"];
  const [snapped, setSnapped] = useState(imagePathList[0]);

  return (
    <div>
      <CarouselContainer imagePathList={imagePathList} />
      <button onClick={() => setSnapped(imagePathList[0])}>1</button>
      <button onClick={() => setSnapped(imagePathList[1])}>2</button>
      <button onClick={() => setSnapped(imagePathList[2])}>3</button>
      <span>snapped ={snapped}</span>
    </div>
  );
};

const App = () => {
  return <CarouselControl />;
};

export default App;
