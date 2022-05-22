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
        overflowX: "hidden",
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

interface CarouselButtonsProps {
  imagePathList: string[];
  snappedImagePath: string;
  onClick: (buttonIndex: number) => void;
}

const CarouselButtons = ({
  imagePathList,
  snappedImagePath,
  onClick,
}: CarouselButtonsProps) => {
  return (
    <div
      style={{
        display: "flex",
        justifyContent: "center",
        padding: "4px 0px",
      }}
    >
      {imagePathList.map((path, index) => (
        <button
          style={{
            margin: "0px 10px",
            width: "40px",
            height: "40px",
            borderRadius: "20px",
            borderWidth: "0px",
            color: "#ffffff",
            backgroundColor: path === snappedImagePath ? "#5955D9" : "#bcbbd8",
          }}
          key={path}
          onClick={() => onClick(index)}
        >
          {index + 1}
        </button>
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
      <CarouselButtons
        imagePathList={imagePathList}
        snappedImagePath={snapped}
        onClick={(index) => {
          setSnapped(imagePathList[index]);
        }}
      />
    </div>
  );
};

const App = () => {
  return <CarouselControl />;
};

export default App;
