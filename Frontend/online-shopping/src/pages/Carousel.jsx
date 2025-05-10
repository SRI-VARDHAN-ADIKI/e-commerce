import { useEffect } from "react";
import carousel1 from "../images/Banner1.jpg";
import carousel2 from "../images/2image.jpg";
import carousel3 from "../images/3image.jpg";
import carousel4 from "../images/4image.jpg";
import carousel5 from "../images/5image.jpg";

const Carousel = () => {
  const carouselItems = [
    {
      image: carousel1,
      title: "Welcome to Our Store",
      description: "Discover amazing products at unbeatable prices"
    },
    {
      image: carousel2,
      title: "Latest Collection",
      description: "Explore our newest arrivals and trending items"
    },
    {
      image: carousel3,
      title: "Special Offers",
      description: "Don't miss out on our exclusive deals and discounts"
    },
    {
      image: carousel4,
      title: "Premium Quality",
      description: "Shop from our selection of high-quality products"
    },
    {
      image: carousel5,
      title: "Fast Delivery",
      description: "Get your orders delivered quickly and safely"
    }
  ];

  useEffect(() => {
    // Initialize the carousel with automatic sliding
    const carousel = document.getElementById('carouselExampleCaptions');
    if (carousel) {
      const carouselInstance = new window.bootstrap.Carousel(carousel, {
        interval: 3000, // Change slide every 3 seconds
        wrap: true, // Continuous loop
        keyboard: true, // Enable keyboard navigation
        pause: 'hover', // Pause on mouse hover
        touch: true // Enable touch swiping
      });

      // Cleanup on component unmount
      return () => {
        if (carouselInstance) {
          carouselInstance.dispose();
        }
      };
    }
  }, []);

  return (
    <div
      id="carouselExampleCaptions"
      className="carousel slide carousel-fade"
      data-bs-ride="carousel"
      data-bs-interval="3000"
    >
      <div className="carousel-indicators">
        {carouselItems.map((_, index) => (
          <button
            key={index}
            type="button"
            data-bs-target="#carouselExampleCaptions"
            data-bs-slide-to={index}
            className={index === 0 ? "active" : ""}
            aria-current={index === 0 ? "true" : "false"}
            aria-label={`Slide ${index + 1}`}
          />
        ))}
      </div>
      <div className="carousel-inner">
        {carouselItems.map((item, index) => (
          <div
            key={index}
            className={`carousel-item ${index === 0 ? "active" : ""}`}
          >
            <img
              src={item.image}
              className="d-block w-100"
              alt={item.title}
              style={{
                objectFit: "cover",
                height: "500px",
                filter: "brightness(0.8)"
              }}
            />
            <div className="carousel-caption">
              <h3 className="display-4 fw-bold mb-3">{item.title}</h3>
              <p className="lead">{item.description}</p>
            </div>
          </div>
        ))}
      </div>
      <button
        className="carousel-control-prev"
        type="button"
        data-bs-target="#carouselExampleCaptions"
        data-bs-slide="prev"
      >
        <span className="carousel-control-prev-icon" aria-hidden="true" />
        <span className="visually-hidden">Previous</span>
      </button>
      <button
        className="carousel-control-next"
        type="button"
        data-bs-target="#carouselExampleCaptions"
        data-bs-slide="next"
      >
        <span className="carousel-control-next-icon" aria-hidden="true" />
        <span className="visually-hidden">Next</span>
      </button>
    </div>
  );
};

export default Carousel;
