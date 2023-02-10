export default class Card
{
    constructor(xPos,yPos, isbn, title, year,author, category)
    {
        this.xPos        = xPos;      //Posicion inicial en X
        this.yPos        = yPos;      // Posicion inicial en Y
        this.isbn       = isbn;      
        this.title       = title;
        this.year        = year; 
        this.author       = author;     
        this.category    = category;
    }
}