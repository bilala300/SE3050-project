INSERT INTO ManagingMarkets (MarketName, MarketAddress, Days, OpeningTime, ClosingTime, MarketPhoneNumber, ManagerFirstName, ManagerLastName) VALUES
('Xavier Academy Green Market', '1407 Graymalkin Lane, Salem Center, NY', 'Saturday, Sunday', '08:00:00', '14:00:00', '555-0100', 'Charles', 'Xavier'),
('Bayville Farmers Market', '500 Main St, Bayville, NY', 'Wednesday, Friday', '09:00:00', '15:00:00', '555-0101', 'Hank', 'McCoy'),
('Westchester Organic Plaza', '12 Route 22, North Salem, NY', 'Thursday', '10:00:00', '16:00:00', '555-0102', 'Moira', 'MacTaggert'),
('Mutant Town Street Fair', 'District X, Lower East Side, NY', 'Sunday', '11:00:00', '18:00:00', '555-0103', 'Lucas', 'Bishop'),
('Krakoa Botanical Market', 'House of M Way, New York, NY', 'Saturday', '08:00:00', '13:00:00', '555-0104', 'Cypher', 'Ramsey'),
('Genosha Open Bazaar', '44 Ridge Road, White Plains, NY', 'Tuesday, Thursday', '09:00:00', '14:00:00', '555-0105', 'Erik', 'Lehnsherr'),
('Muir Island Fresh Produce', 'Coastal Highway, Boston, MA', 'Friday', '07:00:00', '12:00:00', '555-0106', 'Rahne', 'Sinclair'),
('Madripoor Night Market', 'Pier 88, West Side Highway, NY', 'Saturday', '16:00:00', '22:00:00', '555-0107', 'Opal', 'Tanaka'),
('Alkali Lake Growers Hub', '88 Glacier Rd, Upstate NY', 'Wednesday', '08:00:00', '13:00:00', '555-0108', 'John', 'Wraith'),
('Asteroid M Community Market', 'Highland Falls, Orange County, NY', 'Sunday', '09:00:00', '15:00:00', '555-0109', 'Fabian', 'Cortez');

INSERT INTO Vendors (VendorName, VendorEmail, VendorPhoneNumber, VendorAddress, PermitStatus, ManagerFirstName, ManagerLastName, MarketID) VALUES
('Savage Land Exotics', 'savageland@email.com', '555-0200', '12 Antartica Rd, NY', 'Active', 'Kevin', 'Plunder', 1),
('Guthrie Family Farm', 'guthriefarms@email.com', '555-0201', '77 Cannonball St, KY', 'Active', 'Samuel', 'Guthrie', 1),
('Avalon Hydroponics', 'avalon@email.com', '555-0202', '15 Magneto Blvd, NY', 'Active', 'Amelia', 'Voght', 2),
('Worthington Orchards', 'angelorchards@email.com', '555-0203', '500 Aviary Way, NY', 'Active', 'Warren', 'Worthington', 2),
('Cajun Spice & Roots', 'cajunroots@email.com', '555-0204', '22 Bayou Ln, LA', 'Active', 'Remy', 'LeBeau', 3),
('Cassidy Keep Dairy', 'cassidykeep@email.com', '555-0205', '45 Banshee Rd, NY', 'Active', 'Sean', 'Cassidy', 3),
('Askani Heirloom Seeds', 'askani@email.com', '555-0206', '99 Timeline Ave, NY', 'Active', 'Nathan', 'Summers', 4),
('Morlock Underground Fungi', 'morlocks@email.com', '555-0207', 'Sewer Line 4, District X, NY', 'Active', 'Callisto', 'Unknown', 4),
('Braddock Manor Florals', 'braddock@email.com', '555-0208', '10 Captain St, NY', 'Active', 'Brian', 'Braddock', 5),
('Proudstar Poultry', 'proudstar@email.com', '555-0209', '88 Apache Reserve, AZ', 'Active', 'John', 'Proudstar', 5),
('Rasputin Organic Wheat', 'rasputin@email.com', '555-0210', '11 Siberia Way, NY', 'Active', 'Piotr', 'Rasputin', 6),
('Darkstar Beekeeping', 'darkstar@email.com', '555-0211', '32 Soviet Hwy, NY', 'Active', 'Laynia', 'Petrovna', 6),
('St. Croix Fine Pastries', 'stcroix@email.com', '555-0212', '90 Monet Blvd, NY', 'Active', 'Monet', 'St. Croix', 7),
('Madrox Infinite Produce', 'madroxfarms@email.com', '555-0213', '55 Multiple Ln, NY', 'Active', 'Jamie', 'Madrox', 7),
('Hardcase & Harpoon Seafood', 'harpoon@email.com', '555-0214', '7 Marrow Dock, NY', 'Active', 'Kodiak', 'Cruse', 8),
('Brimstone Smoked Meats', 'brimstone@email.com', '555-0215', '666 Brimstone Ave, NY', 'Active', 'Azazel', 'Unknown', 8),
('Frost Diamond Dairy', 'frost@email.com', '555-0216', '100 White Queen Dr, NY', 'Active', 'Emma', 'Frost', 9),
('Black Tom Plant Nursery', 'blacktom@email.com', '555-0217', '14 Shillelagh Rd, NY', 'Active', 'Thomas', 'Cassidy', 9),
('Grey Estate Vineyard', 'greyvineyards@email.com', '555-0218', '77 Phoenix Way, NY', 'Active', 'John', 'Grey', 10),
('Howlett Wild Game', 'weaponx@email.com', '555-0219', '1974 Canadian Wilderness, AB', 'Active', 'Logan', 'Howlett', 10);

INSERT INTO Products (ProductName, ProductCost, Category, Inventory, SpecialTrait, VendorID) VALUES
('Savage Land Dragonfruit', 5.99, 'Produce', 50, 'Hyper-vibrant colors', 1),
('Prehistoric Papaya', 6.50, 'Produce', 30, 'Extremely sweet', 1),
('Tropical Dino-Kale', 3.25, 'Produce', 100, 'Tough, nutrient-dense leaves', 1),
('Kentucky Bluegrass Corn', 1.50, 'Produce', 200, 'Extra sweet kernels', 2),
('Guthrie Estate Potatoes', 4.00, 'Produce', 150, 'Perfect for mashing', 2),
('Exploding Pepper Pods', 2.99, 'Produce', 75, 'Spicy kick', 2),
('Magnetic Field Tomatoes', 4.50, 'Produce', 120, 'Perfectly spherical', 3),
('Levitating Lettuce', 3.75, 'Produce', 80, 'Crisp and airy', 3),
('Worthington Golden Apples', 2.00, 'Produce', 300, 'Flawless golden skin', 4),
('High-Altitude Peaches', 3.50, 'Produce', 140, 'Juicy and sweet', 4),
('Bayou Bourbon Hot Sauce', 8.00, 'Pantry', 60, 'Charged with flavor', 5),
('Kinetic Cajun Seasoning', 5.50, 'Pantry', 90, 'Popping flavor', 5),
('Gumbo File Powder', 4.00, 'Pantry', 110, 'Authentic blend', 5),
('Banshee Cream Butter', 4.50, 'Dairy', 70, 'Churned to perfection', 6),
('Muir Island Sharp Cheddar', 7.99, 'Dairy', 45, 'Aged 2 years', 6),
('High-Decibel Whole Milk', 3.99, 'Dairy', 85, 'Organic pastured', 6),
('Futuristic Heirloom Beans', 6.00, 'Produce', 100, 'Long shelf-life', 7),
('Techno-Organic Squash', 5.25, 'Produce', 65, 'Symmetric patterns', 7),
('Sewer-Grown Shiitake', 6.99, 'Mushrooms', 40, 'Earthy rich flavor', 8),
('Glow-in-the-Dark Truffles', 25.00, 'Mushrooms', 15, 'Rare find', 8),
('Subterranean Portobello', 5.00, 'Mushrooms', 80, 'Meaty texture', 8),
('Excalibur Red Roses', 12.99, 'Florals', 50, 'Thornless stems', 9),
('Avalon Lilies', 15.00, 'Florals', 35, 'Long-lasting bloom', 9),
('Apache Range Cage-Free Eggs', 5.50, 'Poultry', 120, 'Rich orange yolks', 10),
('Free-Range Turkey Breast', 18.99, 'Meat', 25, 'Fresh, never frozen', 10),
('Siberian Organic Wheat Flour', 6.50, 'Pantry', 100, 'High protein content', 11),
('Steel-Cut Rolled Oats', 4.50, 'Pantry', 130, 'Hearty texture', 11),
('Darkstar Wildflower Honey', 9.99, 'Pantry', 70, 'Deep amber hue', 12),
('Amber Glow Honeycomb', 12.50, 'Pantry', 40, '100% edible comb', 12),
('Mille-Feuille Pastry', 4.75, 'Bakery', 50, 'Perfectly laminated layers', 13),
('Croissant De Luxe', 3.50, 'Bakery', 80, 'Rich French butter', 13),
('Madrox Multi-Pack Onions', 3.00, 'Produce', 300, 'Identical size and shape', 14),
('Clone-Grown Garlic Bulbs', 1.50, 'Produce', 400, 'Strong pungent aroma', 14),
('Deep-Sea Harpooned Cod', 14.99, 'Seafood', 40, 'Line-caught fresh', 15),
('Atlantic Salmon Fillet', 19.99, 'Seafood', 35, 'Wild-caught rich fats', 15),
('Brimstone Smoked Bacon', 8.99, 'Meat', 60, 'Thick-cut, applewood smoked', 16),
('Sulfur-Charred Beef Jerky', 7.50, 'Meat', 100, 'Spicy, smoky chew', 16),
('Hellfire Smoked Ribs', 24.99, 'Meat', 20, 'Fall-off-the-bone tender', 16),
('White Queen Diamond Brie', 14.50, 'Dairy', 30, 'Ultra-creamy triple cream', 17),
('Telepathic Swiss Cheese', 6.99, 'Dairy', 55, 'Perfectly placed holes', 17),
('Sovereign Organic Heavy Cream', 5.00, 'Dairy', 75, 'High butterfat', 17),
('Shillelagh Potted Ferns', 8.99, 'Plants', 60, 'Sturdy indoor plant', 18),
('Irish Moss Groundcover', 4.50, 'Plants', 110, 'Lush and green', 18),
('Phoenix Flame Cabernet Sg.', 29.99, 'Alcohol', 45, 'Complex bold notes', 19),
('Telekinetic White Blend', 24.50, 'Alcohol', 50, 'Crisp finish', 19),
('X-Cellent Vintage Rosé', 22.00, 'Alcohol', 60, 'Fruity notes', 19),
('Wild Weapon Venison Steaks', 26.99, 'Meat', 15, 'Lean wild game', 20),
('Albertas Best Elk Jerky', 9.50, 'Meat', 80, 'High protein snack', 20),
('Berserker Smoked Sausages', 11.99, 'Meat', 45, 'Robust herbs and spice', 20),
('Healing Factor Root Tea', 6.00, 'Pantry', 90, 'Restorative herbal blend', 20);

INSERT INTO Customers (CustomerFirstName, CustomerLastName, CustomerAddress, CustomerEmailAddress, CustomerPhoneNumber, RewardsMember) VALUES
('Charles', 'Xavier', '1407 Graymalkin Lane, Salem Center, NY', 'professorx@xavier.edu', '555-0001', TRUE),
('Scott', 'Summers', '1407 Graymalkin Lane, Salem Center, NY', 'cyclops@xavier.edu', '555-0002', TRUE),
('Jean', 'Grey', '1407 Graymalkin Lane, Salem Center, NY', 'phoenix@xavier.edu', '555-0003', TRUE),
('Logan', 'Howlett', 'Unknown Wilderness, Alberta, Canada', 'wolverine@weaponx.com', '555-0004', FALSE),
('Ororo', 'Munroe', 'Serengeti Plains, Kenya', 'storm@weather.org', '555-0005', TRUE),
('Hank', 'McCoy', 'Science Lab 3, Westchester, NY', 'beast@xavier.edu', '555-0006', TRUE),
('Marie', 'DAncanto', 'Caldecott County, MS', 'rogue@xmen.net', '555-0007', FALSE),
('Remy', 'LeBeau', 'New Orleans, LA', 'gambit@thievesguild.com', '555-0008', TRUE),
('Kurt', 'Wagner', 'Bavaria, Germany', 'nightcrawler@circus.de', '555-0009', TRUE),
('Kitty', 'Pryde', 'Deerfield, IL', 'shadowcat@xavier.edu', '555-0010', TRUE),
('Piotr', 'Rasputin', 'Ust-Ordynsky, Siberia', 'colossus@soviet.ru', '555-0011', FALSE),
('Bobby', 'Drake', 'Long Island, NY', 'iceman@frozen.com', '555-0012', TRUE),
('Warren', 'Worthington', 'Centerport, Long Island, NY', 'angel@worthington.corp', '555-0013', TRUE),
('Emma', 'Frost', 'Hellfire Club, Manhattan, NY', 'whitequeen@hellfire.com', '555-0014', TRUE),
('Lucas', 'Bishop', 'Alternative Future Timeline', 'bishop@rebellion.net', '555-0015', FALSE),
('Cable', 'Summers', '2000 Years in the Future', 'nathan.summers@clanaskani.gov', '555-0016', TRUE),
('Jubilation', 'Lee', 'Beverly Hills, CA', 'jubilee@fireworks.com', '555-0017', TRUE),
('Betsy', 'Braddock', 'Braddock Manor, England', 'psylocke@starlight.co.uk', '555-0018', TRUE),
('Samuel', 'Guthrie', 'Cumberland County, KY', 'cannonball@xfactor.org', '555-0019', FALSE),
('Tabitha', 'Smith', 'Roanoke, VA', 'boomboom@timebomb.com', '555-0020', TRUE),
('Rahne', 'Sinclair', 'Kinross, Scotland', 'wolfsbane@muir.ac.uk', '555-0021', FALSE),
('Illyana', 'Rasputina', 'Limbo Dimension', 'magik@steppingdiscs.net', '555-0022', TRUE),
('Alex', 'Summers', 'Honolulu, HI', 'havok@cosmic.org', '555-0023', TRUE),
('Lorna', 'Dane', 'Greenfield, suburb of Austin, TX', 'polaris@magnetic.net', '555-0024', TRUE),
('Sean', 'Cassidy', 'Cassidy Keep, County Mayo, Ireland', 'banshee@cassidy.ie', '555-0025', FALSE),
('Theresa', 'Cassidy', 'Cassidy Keep, County Mayo, Ireland', 'siryn@acoustic.ie', '555-0026', TRUE),
('James', 'Proudstar', 'Camp Verde, AZ', 'warpath@apache.org', '555-0027', FALSE),
('Laura', 'Kinney', 'The Facility, Secret Location', 'x23@clonelab.com', '555-0028', TRUE),
('Nathaniel', 'Essex', 'Victorian London Underground', 'sinister@dna.org', '555-0029', FALSE),
('Raven', 'Darkholme', 'Unknown, Shape-shifter Residence', 'mystique@brotherhood.org', '555-0030', TRUE);

INSERT INTO Orders (DateTime, PaymentTotal, PaymentMethod, CustomerID) VALUES
('2026-11-01 09:15:00', 21.48, 'Credit Card', 1),
('2026-11-01 10:30:00', 38.98, 'Cash', 4),
('2026-11-01 11:00:00', 58.99, 'Apple Pay', 14),
('2026-11-01 12:45:00', 16.50, 'Credit Card', 8),
('2026-11-01 14:20:00', 17.50, 'Debit Card', 11);

INSERT INTO OrderItems (OrderID, ProductID, ItemQuantity, Price, FulfillmentStatus) VALUES
-- Order 1 items (Charles Xavier)
(1, 1, 2, 5.99, 'Fulfilled'),  -- 2 Savage Land Dragonfruits
(1, 29, 1, 9.49, 'Fulfilled'), -- 1 Darkstar Honey
-- Order 2 items (Logan / Wolverine)
(2, 47, 1, 26.99, 'Fulfilled'), -- 1 Wild Weapon Venison Steak
(2, 49, 1, 11.99, 'Fulfilled'), -- 1 Berserker Smoked Sausage
-- Order 3 items (Emma Frost)
(3, 39, 2, 14.50, 'Fulfilled'), -- 2 White Queen Diamond Brie cheeses
(3, 44, 1, 29.99, 'Fulfilled'), -- 1 Phoenix Flame Cabernet
-- Order 4 items (Remy LeBeau)
(4, 11, 1, 8.00, 'Fulfilled'),  -- 1 Bayou Bourbon Hot Sauce
(4, 12, 1, 5.50, 'Fulfilled'),  -- 1 Kinetic Cajun Seasoning
(4, 33, 2, 1.50, 'Fulfilled'),  -- 2 Clone-Grown Garlic Bulbs
-- Order 5 items (Piotr Rasputin)
(5, 26, 2, 6.50, 'Fulfilled'),  -- 2 Siberian Flour bags
(5, 27, 1, 4.50, 'Fulfilled');  -- 1 Steel-Cut Rolled Oats