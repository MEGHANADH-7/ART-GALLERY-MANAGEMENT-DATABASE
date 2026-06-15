# 🎨 Art Gallery Management Database Project

## 📌 Description
A database system designed to manage artists and their artworks efficiently using SQL. It supports full CRUD operations and reporting features.

## 📂 Features
- Artist & Artwork management
- One-to-Many relationship
- CRUD operations (Create, Read, Update, Delete)
- SQL JOIN queries
- Reports generation

## 🧑‍🎨 Entities
### Artist
- Artist_ID (PK)
- Name
- Birthplace
- Age
- Style

### Artwork
- Artwork_ID (PK)
- Title
- Year
- Category
- Price
- Artist_ID (FK)

## 🔗 Relationship
One Artist → Many Artworks

## ⚙️ How to Run
1. Open MySQL / PostgreSQL
2. Run `art_gallery.sql`
3. Database will be created automatically
4. Execute queries step by step

## 📊 Reports
- Total artwork value per artist
- Artwork count by category
- Artist-wise detailed artwork report

## 🖼️ Screenshots
Add screenshots inside `/screenshots` folder.

## 📌 ER Diagram
ER diagram is included as `er_diagram.png`

## 👨‍💻 Author
MEGHANADH