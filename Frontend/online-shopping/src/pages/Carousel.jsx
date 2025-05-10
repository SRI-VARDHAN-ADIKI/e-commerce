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

  return (
    <div
      id="carouselExampleCaptions"
      className="carousel slide"
      data-bs-ride="carousel"
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
            />
            <div className="carousel-caption">
              <h3>{item.title}</h3>
              <p>{item.description}</p>
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
