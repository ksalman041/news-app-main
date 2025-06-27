# news-app
# Pure Tech

<p align="center">
  <img src="images/logo.png" alt="News App Logo" width="200px"/>
</p>

## Overview
This Pure Tech is designed to deliver the latest tech news to users in a visually appealing format. It features responsive news cards and dynamic interactions for an engaging user experience.

## Business Overview
The Pure Tech aims to become a leading source of tech news by providing timely updates and insightful articles on technology advancements, coding trends, and more. Our target audience includes tech enthusiasts, industry professionals, and students looking to stay informed about the tech world.

## Technical Documentation

### HTML
We use semantic HTML to structure the web application, ensuring accessibility and SEO friendliness. Key elements include:

- `<header>`: Contains the logo, title, and navigation.
- `<main>`: Holds the news cards grid.
- `<section>`: Used for individual news cards.
- `<footer>`: Includes copyright and social media links.

### CSS
The CSS styling ensures the application is visually appealing and provides a user-friendly experience. Highlights include:

- **Layout**: Uses Flexbox and Grid for responsive layouts.
- **Styles**: Employs modern aesthetics with shadows, transitions, and hover effects to enhance interactivity.
- **Responsive Design**: Ensures the app is accessible on both mobile and desktop devices.

#### Example of CSS for News Cards
```css
.news-card {
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    border: 1px solid transparent;
    transition: transform 0.3s ease, box-shadow 0.3s ease, border-color 0.3s ease;
    cursor: pointer;
}

.news-card:hover {
    transform: scale(1.03);
    border-color: #007bff;
}

```
### Data format description (XML)

#### Root Element:
- **Element Name:** `news`
- **Description:** Root container for all news articles in the document.

#### Child Elements:

#### `article`
- **Description:** Represents a single news article, containing various details about the article.
- **Occurrence:** Unbounded (multiple `article` elements can be included).
- **Structure:**

  #### `title`
    - **Type:** `xsd:string`
    - **Description:** The title of the article.

  #### `image`
    - **Description:** Contains the source URL and alternative text for an image associated with the article.
    - **Attributes:**
        - **`src`**
            - **Type:** `xsd:string`
            - **Use:** Required
            - **Description:** URL to the image.
        - **`alt`**
            - **Type:** `xsd:string`
            - **Use:** Required
            - **Description:** Alternative text description of the image.

  #### `description`
    - **Type:** `xsd:string`
    - **Description:** A detailed description or summary of the article.

  #### `author`
    - **Description:** Contains information about the author of the article.
    - **Attributes:**
        - **`name`**
            - **Type:** `xsd:string`
            - **Use:** Required
            - **Description:** Name of the article's author.
        - **`email`**
            - **Type:** `xsd:string`
            - **Use:** Required
            - **Description:** Email address of the author.

  #### `date`
    - **Type:** `xsd:date`
    - **Description:** Publication date of the article.

  #### `tags`
    - **Description:** Categorization tags for the article.
    - **Structure:**
        - **`tag`**
            - **Type:** `xsd:string`
            - **Occurrence:** Unbounded
            - **Description:** A single categorization tag associated with the article.

  #### `relatedArticles`
    - **Description:** Links to articles that are related to the current article.
    - **Structure:**
        - **`relatedArticle`**
            - **Type:** `xsd:string`
            - **Occurrence:** Unbounded
            - **Description:** Descriptive text or type of the related article.
            - **Attributes:**
                - **`url`**
                    - **Type:** `xsd:string`
                    - **Use:** Required
                    - **Description:** URL of the related article.

  #### `comments`
    - **Description:** Comments made on the article.
    - **Structure:**
        - **`comment`**
            - **Type:** `xsd:string`
            - **Occurrence:** Unbounded
            - **Description:** Text of a single comment.
