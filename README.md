# AJIO Product Dissection Project

Overview
AJIO, launched in 2016 by Reliance Retail, is an innovative online fashion and lifestyle platform offering curated collections of clothing, accessories, footwear, and electronics. AJIO aims to redefine online shopping by providing high-quality products and exceptional customer service.

## Real-World Problems Solved by AJIO
1. **Overwhelming Choices and Decision Fatigue**  
   **Solution:** Curated collections and personalized recommendations simplify shopping.
2. **Limited Access to Exclusive Brands**  
   **Solution:** Partnerships with exclusive brands ensure access to unique, high-quality products.
3. **Concerns About Product Quality and Authenticity**  
   **Solution:** Direct sourcing from brands and stringent quality control guarantee authenticity.
4. **Lack of Personalized Shopping Experience**  
   **Solution:** Advanced algorithms offer tailored product recommendations.

## Top Features
- User Profiles
- Product Listings
- Curated Collections
- Exclusive Brands
- Recommendations
- Wishlist and Cart
- Order Tracking
- Hassle-Free Returns
- Customer Support

## Schema Overview
- **User Entity:** UserID, Username, Email, Full_Name, Password, Registration_Date.
- **Product Entity:** ProductID, Product_Name, Description, Price, Brand, Category, Stock, Image_URL.
- **Order Entity:** OrderID, UserID, Order_Date, Total_Amount, Status.
- **Review Entity:** ReviewID, ProductID, UserID, Rating, Comment, Review_Date.
- **Wishlist Entity:** WishlistID, UserID, ProductID, Added_Date.
- **Cart Entity:** CartID, UserID, ProductID, Quantity, Added_Date.

## Conclusion
This project covers AJIO's innovative solutions to common online shopping challenges, highlighting key features and providing a detailed schema overview.

*Prepared by: R Manisha Achary*
