# Rails Advanced Active Record Association Lab

### Task : Working in pairs, create 5 models and link them together with different types of association. Make use of Loops in your seed file and Faker

#### *Models:*

* Country
  * name:*string*
* Author
  * first_name:*string*
  * last_name:*string*
  * age:*integer*
* Book
  * title:*string*
  * genre:*string*
  * published_date:*integer*
* Chapter
  * title:*string*
* Paragraph
  * body:*text*

#### *Relationships:*

* Country has many Authors
* Author belongs to Country
* Author has many Books
* Book belongs to Author
* Book has many Chapters
* Book has many Paragraphs through Chapters
* Chapter has many Paragraphs
* Paragraph belongs to Chapter
