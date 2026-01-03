-- products_postgres.sql
-- Generated from products.csv for PostgreSQL
-- Creates and populates the `products` table.

BEGIN;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id          BIGINT PRIMARY KEY,
    brand       VARCHAR(255),
    category    VARCHAR(50) NOT NULL,
    color       VARCHAR(100),
    description TEXT,
    image_url   TEXT,
    name        VARCHAR(255) NOT NULL,
    price       NUMERIC(10,2) NOT NULL,
    size        VARCHAR(50),
    stock       INTEGER NOT NULL
);

-- Optional helpful index for filtering
CREATE INDEX idx_products_category ON products(category);

INSERT INTO products (id, brand, category, color, description, image_url, name, price, size, stock)
VALUES
(1, 'Longchamp Bags', 'BAG', 'Black', 'Premium bag from the Longchamp Bags collection.', '/images/LongChamp_bags/LongChamp_Black.jpeg', 'Longchamp Bags (Black)', 89.99, NULL, 15),
(2, 'Longchamp Bags', 'BAG', 'Brown', 'Premium bag from the Longchamp Bags collection.', '/images/LongChamp_bags/LongChamp_Brown.jpeg', 'Longchamp Bags (Brown)', 89.99, NULL, 15),
(3, 'Longchamp Bags', 'BAG', NULL, 'Premium bag from the Longchamp Bags collection.', '/images/LongChamp_bags/LongChamp_Burgundy.jpeg', 'Longchamp Bags Longchamp Burgundy', 89.99, NULL, 15),
(4, 'Longchamp Bags', 'BAG', 'Green', 'Premium bag from the Longchamp Bags collection.', '/images/LongChamp_bags/LongChamp_Green.jpeg', 'Longchamp Bags (Green)', 89.99, NULL, 15),
(5, 'Longchamp Bags', 'BAG', 'Pink', 'Premium bag from the Longchamp Bags collection.', '/images/LongChamp_bags/LongChamp_Pink.jpeg', 'Longchamp Bags (Pink)', 89.99, NULL, 15),
(6, 'Miss Lola Shoes', 'SHOE', 'Black', 'Premium shoe from the Miss Lola Shoes collection.', '/images/Miss_Lola_shoes/Miss_Lola_Black.jpeg', 'Miss Lola Shoes (Black)', 69.99, NULL, 15),
(7, 'Miss Lola Shoes', 'SHOE', 'Brown', 'Premium shoe from the Miss Lola Shoes collection.', '/images/Miss_Lola_shoes/Miss_Lola_Brown.jpeg', 'Miss Lola Shoes (Brown)', 69.99, NULL, 15),
(8, 'Platform Shoes', 'SHOE', 'Black', 'Premium shoe from the Platform Shoes collection.', '/images/Platform_shoes/Platform_Black.jpeg', 'Platform Shoes (Black)', 69.99, NULL, 15),
(9, 'Platform Shoes', 'SHOE', 'Black', 'Premium shoe from the Platform Shoes collection.', '/images/Platform_shoes/Platform_BlackR.jpeg', 'Platform Shoes (Black)', 69.99, NULL, 15),
(10, 'Platform Shoes', 'SHOE', 'Black', 'Premium shoe from the Platform Shoes collection.', '/images/Platform_shoes/Platform_BlackT.jpeg', 'Platform Shoes (Black)', 69.99, NULL, 15),
(11, 'Platform Shoes', 'SHOE', 'Black', 'Premium shoe from the Platform Shoes collection.', '/images/Platform_shoes/Platform_BlackV.jpeg', 'Platform Shoes (Black)', 69.99, NULL, 15),
(12, 'Platform Shoes', 'SHOE', 'Pink', 'Premium shoe from the Platform Shoes collection.', '/images/Platform_shoes/Platform_Pink.jpeg', 'Platform Shoes (Pink)', 69.99, NULL, 15),
(13, 'Platform Shoes', 'SHOE', 'White', 'Premium shoe from the Platform Shoes collection.', '/images/Platform_shoes/Platform_White.jpeg', 'Platform Shoes (White)', 69.99, NULL, 15),
(14, 'Platform Shoes', 'SHOE', 'White', 'Premium shoe from the Platform Shoes collection.', '/images/Platform_shoes/Platform_WhiteT.jpeg', 'Platform Shoes (White)', 69.99, NULL, 15),
(15, 'Saint Bags', 'BAG', 'Black', 'Premium bag from the Saint Bags collection.', '/images/Saint_Bags/Saint_Black.jpeg', 'Saint Bags (Black)', 89.99, NULL, 15),
(16, 'Saint Bags', 'BAG', 'Brown', 'Premium bag from the Saint Bags collection.', '/images/Saint_Bags/Saint_Brown.jpeg', 'Saint Bags (Brown)', 89.99, NULL, 15),
(17, 'Saint Bags', 'BAG', NULL, 'Premium bag from the Saint Bags collection.', '/images/Saint_Bags/Saint_Burgundy.jpeg', 'Saint Bags Saint Burgundy', 89.99, NULL, 15),
(18, 'Saint Bags', 'BAG', 'Green', 'Premium bag from the Saint Bags collection.', '/images/Saint_Bags/Saint_Green.jpeg', 'Saint Bags (Green)', 89.99, NULL, 15),
(19, 'Tabacroc Bags', 'BAG', 'Black', 'Premium bag from the Tabacroc Bags collection.', '/images/TabaCroc_Bags/TabaCroc_Black.jpeg', 'Tabacroc Bags (Black)', 89.99, NULL, 15),
(20, 'Tabacroc Bags', 'BAG', 'Brown', 'Premium bag from the Tabacroc Bags collection.', '/images/TabaCroc_Bags/TabaCroc_Brown.jpeg', 'Tabacroc Bags (Brown)', 89.99, NULL, 15),
(21, 'Tabacroc Bags', 'BAG', 'Grey', 'Premium bag from the Tabacroc Bags collection.', '/images/TabaCroc_Bags/TabaCroc_Grey.jpeg', 'Tabacroc Bags (Grey)', 89.99, NULL, 15),
(22, 'Tabacroc Bags', 'BAG', 'Red', 'Premium bag from the Tabacroc Bags collection.', '/images/TabaCroc_Bags/TabaCroc_Red.jpeg', 'Tabacroc Bags (Red)', 89.99, NULL, 15),
(23, 'Tabacroc Bags', 'BAG', 'White', 'Premium bag from the Tabacroc Bags collection.', '/images/TabaCroc_Bags/TabaCroc_White.jpeg', 'Tabacroc Bags (White)', 89.99, NULL, 15),
(24, 'Coach Bag', 'BAG', 'Brown', 'Premium bag from the Coach Bag collection.', '/images/coach_bag/Coach_Brown.jpeg', 'Coach Bag (Brown)', 89.99, NULL, 15),
(25, 'Coach Bag', 'BAG', NULL, 'Premium bag from the Coach Bag collection.', '/images/coach_bag/Coach_Denim.jpeg', 'Coach Bag Coach Denim', 89.99, NULL, 15),
(26, 'Coach Bag', 'BAG', 'White', 'Premium bag from the Coach Bag collection.', '/images/coach_bag/Coach_FloweryWhite.jpeg', 'Coach Bag (White)', 89.99, NULL, 15),
(27, 'Coach Bag', 'BAG', 'Green', 'Premium bag from the Coach Bag collection.', '/images/coach_bag/Coach_Green.jpeg', 'Coach Bag (Green)', 89.99, NULL, 15),
(28, 'Coach Bag', 'BAG', 'Pink', 'Premium bag from the Coach Bag collection.', '/images/coach_bag/Coach_Pink.jpeg', 'Coach Bag (Pink)', 89.99, NULL, 15),
(29, 'Coach Bag', 'BAG', 'Pink', 'Premium bag from the Coach Bag collection.', '/images/coach_bag/Coach_PinkT.jpeg', 'Coach Bag (Pink)', 89.99, NULL, 15),
(30, 'Coach Bag', 'BAG', 'Red', 'Premium bag from the Coach Bag collection.', '/images/coach_bag/Coach_Red.jpeg', 'Coach Bag (Red)', 89.99, NULL, 15),
(31, 'Coach Bag', 'BAG', 'White', 'Premium bag from the Coach Bag collection.', '/images/coach_bag/Coach_White.jpeg', 'Coach Bag (White)', 89.99, NULL, 15),
(32, 'Cross Strap Shoes', 'SHOE', 'Black', 'Premium shoe from the Cross Strap Shoes collection.', '/images/cross_strap_shoes/cross_strap_black.jpeg', 'Cross Strap Shoes (Black)', 69.99, NULL, 15),
(33, 'Cross Strap Shoes', 'SHOE', NULL, 'Premium shoe from the Cross Strap Shoes collection.', '/images/cross_strap_shoes/cross_strap_burgundy.jpeg', 'Cross Strap Shoes Cross Strap Burgundy', 69.99, NULL, 15),
(34, 'Hermes Bags', 'BAG', 'Black', 'Premium bag from the Hermes Bags collection.', '/images/hermes_Bags/hermes_black.jpeg', 'Hermes Bags (Black)', 89.99, NULL, 15),
(35, 'Hermes Bags', 'BAG', 'Brown', 'Premium bag from the Hermes Bags collection.', '/images/hermes_Bags/hermes_brown.jpeg', 'Hermes Bags (Brown)', 89.99, NULL, 15),
(36, 'Hermes Bags', 'BAG', 'Green', 'Premium bag from the Hermes Bags collection.', '/images/hermes_Bags/hermes_green.jpeg', 'Hermes Bags (Green)', 89.99, NULL, 15),
(37, 'Hermes Bags', 'BAG', 'Pink', 'Premium bag from the Hermes Bags collection.', '/images/hermes_Bags/hermes_pink.jpeg', 'Hermes Bags (Pink)', 89.99, NULL, 15),
(38, 'Hermes Bags', 'BAG', 'Red', 'Premium bag from the Hermes Bags collection.', '/images/hermes_Bags/hermes_red.jpeg', 'Hermes Bags (Red)', 89.99, NULL, 15),
(39, 'Hermes Bags', 'BAG', 'White', 'Premium bag from the Hermes Bags collection.', '/images/hermes_Bags/hermes_white.jpeg', 'Hermes Bags (White)', 89.99, NULL, 15),
(40, 'Limited Shoes', 'SHOE', 'Black', 'Premium shoe from the Limited Shoes collection.', '/images/limited_shoes/ankle_strap_black.jpeg', 'Limited Shoes (Black)', 69.99, NULL, 15),
(41, 'Limited Shoes', 'SHOE', 'Black', 'Premium shoe from the Limited Shoes collection.', '/images/limited_shoes/black_strap.jpeg', 'Limited Shoes (Black)', 69.99, NULL, 15),
(42, 'Limited Shoes', 'SHOE', NULL, 'Premium shoe from the Limited Shoes collection.', '/images/limited_shoes/easy_sandal_heels.jpeg', 'Limited Shoes Easy Sandal Heels', 69.99, NULL, 15),
(43, 'Limited Shoes', 'SHOE', 'Pink', 'Premium shoe from the Limited Shoes collection.', '/images/limited_shoes/pink_strap.jpeg', 'Limited Shoes (Pink)', 69.99, NULL, 15),
(44, 'Limited Shoes', 'SHOE', NULL, 'Premium shoe from the Limited Shoes collection.', '/images/limited_shoes/skin_heels.jpeg', 'Limited Shoes Skin Heels', 69.99, NULL, 15),
(45, 'Limited Shoes', 'SHOE', 'Black', 'Premium shoe from the Limited Shoes collection.', '/images/limited_shoes/strap_sandals_black.jpeg', 'Limited Shoes (Black)', 69.99, NULL, 15),
(46, 'Limited Shoes', 'SHOE', 'White', 'Premium shoe from the Limited Shoes collection.', '/images/limited_shoes/white_strap.jpeg', 'Limited Shoes (White)', 69.99, NULL, 15),
(47, 'Loafers Shoes', 'SHOE', 'Black', 'Premium shoe from the Loafers Shoes collection.', '/images/loafers_Shoes/Black _Loafer .jpeg', 'Loafers Shoes (Black)', 69.99, NULL, 15),
(48, 'Loafers Shoes', 'SHOE', 'Black', 'Premium shoe from the Loafers Shoes collection.', '/images/loafers_Shoes/Black_Loafers.jpeg', 'Loafers Shoes (Black)', 69.99, NULL, 15),
(49, 'Loafers Shoes', 'SHOE', 'Black', 'Premium shoe from the Loafers Shoes collection.', '/images/loafers_Shoes/Black_Loafers_Chain.jpeg', 'Loafers Shoes (Black)', 69.99, NULL, 15),
(50, 'Loafers Shoes', 'SHOE', 'Black', 'Premium shoe from the Loafers Shoes collection.', '/images/loafers_Shoes/Black_Loafers_High.jpeg', 'Loafers Shoes (Black)', 69.99, NULL, 15),
(51, 'Loafers Shoes', 'SHOE', 'Black', 'Premium shoe from the Loafers Shoes collection.', '/images/loafers_Shoes/Black_Loafers_Pearl.jpeg', 'Loafers Shoes (Black)', 69.99, NULL, 15),
(52, 'Loafers Shoes', 'SHOE', 'Nude', 'Premium shoe from the Loafers Shoes collection.', '/images/loafers_Shoes/Nude_Loafers.jpeg', 'Loafers Shoes (Nude)', 69.99, NULL, 15),
(53, 'Loafers Shoes', 'SHOE', 'Red', 'Premium shoe from the Loafers Shoes collection.', '/images/loafers_Shoes/Red_Loafers.jpeg', 'Loafers Shoes (Red)', 69.99, NULL, 15),
(54, 'Loafers Shoes', 'SHOE', 'White', 'Premium shoe from the Loafers Shoes collection.', '/images/loafers_Shoes/White_Loafers.jpeg', 'Loafers Shoes (White)', 69.99, NULL, 15),
(55, 'Moynat Bags', 'BAG', 'Brown', 'Premium bag from the Moynat Bags collection.', '/images/moynat_bags/Moynat_Brown.jpeg', 'Moynat Bags (Brown)', 89.99, NULL, 15),
(56, 'Moynat Bags', 'BAG', 'Grey', 'Premium bag from the Moynat Bags collection.', '/images/moynat_bags/Moynat_Grey.jpeg', 'Moynat Bags (Grey)', 89.99, NULL, 15),
(57, 'Sandal Heels', 'SHOE', 'Gold', 'Premium shoe from the Sandal Heels collection.', '/images/sandal_heels/Gold_SandalHeel.jpeg', 'Sandal Heels (Gold)', 69.99, NULL, 15),
(58, 'Sandal Heels', 'SHOE', NULL, 'Premium shoe from the Sandal Heels collection.', '/images/sandal_heels/SandalHeels_Burgundy.jpeg', 'Sandal Heels Sandalheels Burgundy', 69.99, NULL, 15),
(59, 'Sandal Heels', 'SHOE', 'Gold', 'Premium shoe from the Sandal Heels collection.', '/images/sandal_heels/SandalHeels_Gold.jpeg', 'Sandal Heels (Gold)', 69.99, NULL, 15),
(60, 'Sandal Heels', 'SHOE', 'Pink', 'Premium shoe from the Sandal Heels collection.', '/images/sandal_heels/SandalHeels_Pink.jpeg', 'Sandal Heels (Pink)', 69.99, NULL, 15),
(61, 'Sandal Heels', 'SHOE', 'Silver', 'Premium shoe from the Sandal Heels collection.', '/images/sandal_heels/SandalHeels_Silver.jpeg', 'Sandal Heels (Silver)', 69.99, NULL, 15),
(62, 'Slip Shoes', 'SHOE', 'Beige', 'Premium shoe from the Slip Shoes collection.', '/images/slip_shoes/Slip_Beige.jpeg', 'Slip Shoes (Beige)', 69.99, NULL, 15),
(63, 'Slip Shoes', 'SHOE', 'Black', 'Premium shoe from the Slip Shoes collection.', '/images/slip_shoes/Slip_Black.jpeg', 'Slip Shoes (Black)', 69.99, NULL, 15),
(64, 'Slip Shoes', 'SHOE', 'Nude', 'Premium shoe from the Slip Shoes collection.', '/images/slip_shoes/Slip_Nude.jpeg', 'Slip Shoes (Nude)', 69.99, NULL, 15),
(65, 'Slip Shoes', 'SHOE', 'Pink', 'Premium shoe from the Slip Shoes collection.', '/images/slip_shoes/Slip_Pink.jpeg', 'Slip Shoes (Pink)', 69.99, NULL, 15),
(66, 'Stilettos', 'SHOE', 'Beige', 'Premium shoe from the Stilettos collection.', '/images/stilettos/Stilettos_Beige.jpeg', 'Stilettos (Beige)', 69.99, NULL, 15),
(67, 'Stilettos', 'SHOE', 'Beige', 'Premium shoe from the Stilettos collection.', '/images/stilettos/Stilettos_BeigeT.jpeg', 'Stilettos (Beige)', 69.99, NULL, 15),
(68, 'Stilettos', 'SHOE', 'Black', 'Premium shoe from the Stilettos collection.', '/images/stilettos/Stilettos_Black.jpeg', 'Stilettos (Black)', 69.99, NULL, 15),
(69, 'Stilettos', 'SHOE', 'Black', 'Premium shoe from the Stilettos collection.', '/images/stilettos/Stilettos_BlackT.jpeg', 'Stilettos (Black)', 69.99, NULL, 15),
(70, 'Stilettos', 'SHOE', 'White', 'Premium shoe from the Stilettos collection.', '/images/stilettos/Stilettos_White.jpeg', 'Stilettos (White)', 69.99, NULL, 15),
(71, 'Stilettos', 'SHOE', 'White', 'Premium shoe from the Stilettos collection.', '/images/stilettos/Stilettos_WhiteT.jpeg', 'Stilettos (White)', 69.99, NULL, 15),
(72, 'Summer Shoes', 'SHOE', 'Black', 'Premium shoe from the Summer Shoes collection.', '/images/summer_shoes/summer_black.jpeg', 'Summer Shoes (Black)', 69.99, NULL, 15),
(73, 'Summer Shoes', 'SHOE', 'Blue', 'Premium shoe from the Summer Shoes collection.', '/images/summer_shoes/summer_blue.jpeg', 'Summer Shoes (Blue)', 69.99, NULL, 15),
(74, 'Summer Shoes', 'SHOE', 'Green', 'Premium shoe from the Summer Shoes collection.', '/images/summer_shoes/summer_green.jpeg', 'Summer Shoes (Green)', 69.99, NULL, 15),
(75, 'Summer Shoes', 'SHOE', 'Nude', 'Premium shoe from the Summer Shoes collection.', '/images/summer_shoes/summer_nude.jpeg', 'Summer Shoes (Nude)', 69.99, NULL, 15),
(76, 'Summer Shoes', 'SHOE', 'White', 'Premium shoe from the Summer Shoes collection.', '/images/summer_shoes/summer_white.jpeg', 'Summer Shoes (White)', 69.99, NULL, 15);

COMMIT;
