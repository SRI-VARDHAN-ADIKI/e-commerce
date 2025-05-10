-- Insert Categories
INSERT INTO category (title, description) VALUES
('Electronics', 'Smartphones, laptops, TVs, and other electronic devices'),
('Mobile Accessories', 'Phone cases, chargers, power banks, and mobile gadgets'),
('Computers & Laptops', 'Desktops, laptops, tablets, and computer accessories'),
('Audio Devices', 'Headphones, earphones, speakers, and audio equipment'),
('Gaming', 'Gaming consoles, games, controllers, and gaming accessories'),
('Smart Home', 'Smart speakers, security cameras, and home automation devices'),
('Wearable Tech', 'Smart watches, fitness bands, and wearable devices');

-- Insert Addresses
INSERT INTO address (street, city, pincode) VALUES
('123 Main St', 'Vijayawada', 522302),
('456 Park Ave', 'Hyderabad', 500001),
('789 Lake View', 'Bangalore', 560001),
('321 Tech Park', 'Chennai', 600001),
('654 Beach Road', 'Mumbai', 400001);

-- Insert Users (with roles)
INSERT INTO user (first_name, last_name, email_id, password, phone_no, role, address_id) VALUES
('Admin', 'User', 'admin@shop.com', 'admin123', '9876543210', 'ADMIN', 1),
('John', 'Doe', 'john@example.com', 'john123', '9876543211', 'USER', 2),
('Jane', 'Smith', 'jane@example.com', 'jane123', '9876543212', 'USER', 3),
('Mike', 'Johnson', 'mike@example.com', 'mike123', '9876543213', 'USER', 4),
('Sarah', 'Williams', 'sarah@example.com', 'sarah123', '9876543214', 'USER', 5);

-- Insert Products
INSERT INTO product (title, description, quantity, price, image_name, category_id) VALUES
('iPhone 13', 'Latest Apple smartphone with amazing features', 50, 69999.00, 'iphone13.jpg', 1),
('Samsung Galaxy S21', 'Powerful Android smartphone with great camera', 45, 54999.00, 'samsungs21.jpg', 1),
('MacBook Pro', 'Professional laptop for developers and designers', 30, 129999.00, 'macbook.jpg', 3),
('Sony WH-1000XM4', 'Premium noise-cancelling headphones', 40, 29999.00, 'sonyheadphones.jpg', 4),
('PlayStation 5', 'Next-gen gaming console with 4K gaming', 25, 49999.00, 'ps5.jpg', 5),
('Amazon Echo Dot', 'Smart speaker with Alexa voice assistant', 60, 3499.00, 'echodot.jpg', 6),
('Apple Watch Series 7', 'Advanced smartwatch with health features', 35, 39999.00, 'applewatch.jpg', 7),
('OnePlus 9 Pro', 'Flagship killer smartphone with Hasselblad camera', 40, 64999.00, 'oneplus9.jpg', 1),
('Dell XPS 13', 'Ultra-thin laptop with InfinityEdge display', 25, 89999.00, 'dellxps.jpg', 3),
('JBL Flip 5', 'Portable Bluetooth speaker with powerful sound', 50, 9999.00, 'jblflip.jpg', 4);

-- Insert some Cart items
INSERT INTO cart (product_id, user_id, quantity) VALUES
(1, 2, 1),
(3, 2, 1),
(5, 3, 1),
(7, 4, 1),
(9, 5, 1);

-- Insert some Orders
INSERT INTO orders (order_id, product_id, user_id, quantity, order_date, delivery_status, delivery_date, delivery_time, delivery_assigned, delivery_person_id) VALUES
('ORD001', 1, 2, 1, '2024-05-10 10:00 AM', 'DELIVERED', '2024-05-11', 'MORNING', 'YES', 1),
('ORD002', 3, 3, 1, '2024-05-10 11:30 AM', 'IN_TRANSIT', '2024-05-11', 'AFTERNOON', 'YES', 2),
('ORD003', 5, 4, 1, '2024-05-10 02:15 PM', 'ORDERED', '2024-05-12', 'EVENING', 'NO', 0),
('ORD004', 7, 5, 1, '2024-05-10 03:45 PM', 'ORDERED', '2024-05-12', 'MORNING', 'NO', 0); 