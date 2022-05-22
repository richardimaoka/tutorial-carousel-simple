import React, { useEffect, useRef, useState } from "react";

interface ImageState {
  imagePath: string;
  isSnapped: boolean;
}

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
  images: ImageState[];
}

const CarouselContainer = ({ images }: CarouselContainerProps) => {
  return (
    <div
      style={{
        display: "flex",
        flexDirection: "row",
        overflowX: "hidden",
        scrollSnapType: "x mandatory",
      }}
    >
      {images.map((image) => (
        <CarouselItem
          key={image.imagePath}
          imagePath={image.imagePath}
          isSnapped={image.isSnapped}
        />
      ))}
    </div>
  );
};

interface CarouselButtonsProps {
  images: ImageState[];
  onClick: (buttonIndex: number) => void;
}

const CarouselButtons = ({ images, onClick }: CarouselButtonsProps) => {
  return (
    <div
      style={{
        display: "flex",
        justifyContent: "center",
        padding: "4px 0px",
      }}
    >
      {images.map((image, index) => (
        <button
          style={{
            margin: "0px 10px",
            width: "40px",
            height: "40px",
            borderRadius: "20px",
            borderWidth: "0px",
            color: "#ffffff",
            backgroundColor: image.isSnapped ? "#5955D9" : "#bcbbd8",
          }}
          key={image.imagePath}
          onClick={() => onClick(index)}
        >
          {index + 1}
        </button>
      ))}
    </div>
  );
};

const CarouselControl = () => {
  const [images, setImages] = useState<ImageState[]>([
    {
      imagePath: "/images/1.png",
      isSnapped: true, //initially selected
    },
    {
      imagePath: "/images/2.png",
      isSnapped: false,
    },
    {
      imagePath: "/images/3.png",
      isSnapped: false,
    },
  ]);

  const selectSnapped = (selectIndex: number) => {
    const updated: ImageState[] = images.map((state, index) => ({
      imagePath: state.imagePath,
      isSnapped: selectIndex === index,
    }));
    setImages(updated);
  };

  return (
    <div style={{ width: "648px" }}>
      <CarouselContainer images={images} />
      <CarouselButtons images={images} onClick={selectSnapped} />
    </div>
  );
};

const App = () => {
  return <CarouselControl />;
};

export default App;
