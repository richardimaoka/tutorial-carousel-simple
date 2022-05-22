import React, { useEffect, useRef, useState } from "react";

interface CarouselItemProps {
  imagePath: string;
  isSnapped: boolean;
}

const CarouselItem = ({ imagePath, isSnapped }: CarouselItemProps) => {
  const ref = useRef<HTMLDivElement>(null);
  useEffect(() => {
    if (isSnapped) {
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
  snappedImagePath: string;
}

const CarouselContainer = ({
  imagePathList,
  snappedImagePath,
}: CarouselContainerProps) => {
  return (
    <div
      style={{
        display: "flex",
        flexDirection: "row",
        overflowX: "auto",
        scrollSnapType: "x mandatory",
      }}
    >
      {imagePathList.map((path) => (
        <CarouselItem
          key={path}
          imagePath={path}
          isSnapped={snappedImagePath === path}
        />
      ))}
    </div>
  );
};

const CarouselControl = () => {
  const imagePathList = ["/images/1.png", "/images/2.png", "/images/3.png"];
  const [snapped, setSnapped] = useState(imagePathList[0]);

  return (
    <div style={{ width: "648px" }}>
      <CarouselContainer
        imagePathList={imagePathList}
        snappedImagePath={snapped}
      />
      <div
        style={{
          display: "flex",
          justifyContent: "center",
          padding: "4px 0px",
        }}
      >
        {imagePathList.map((path, index) => (
          <button key={path} onClick={() => setSnapped(path)}>
            {index + 1}
          </button>
        ))}
      </div>
    </div>
  );
};

const App = () => {
  return <CarouselControl />;
};

export default App;
