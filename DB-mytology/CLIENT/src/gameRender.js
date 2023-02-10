import globals from "./globals.js";
import {CARD_SIZE} from "./constants.js";

export default function render()
{
    globals.ctx.clearRect(0, 0, globals.canvas.width, globals.canvas.height);
    renderCards();
}

function renderCards()
{
    for (let i = 0; i < globals.cards.length; ++i)
    {
        const card = globals.cards[i];
        renderCard(card);    
    }
}

function renderCard(card)
 {
   
     globals.ctx.fillStyle = 'green';
     globals.ctx.fillRect(card.xPos, card.yPos, CARD_SIZE, CARD_SIZE);
     globals.ctx.font = '30px emulogic';
     globals.ctx.fillStyle = 'white';
     //globals.ctx.fillText("HIGH SCORES", 400, 30);
     globals.ctx.fillText(card.title, card.xPos + 20, card.yPos + 30);
     globals.ctx.fillText(card.isbn, card.xPos + 20, card.yPos + 50);
     globals.ctx.fillText(card.author, card.xPos + 20, card.yPos + 70);
     globals.ctx.fillText(card.category, card.xPos + 20, card.yPos + 90);
     globals.ctx.fillText(card.year, card.xPos + 20, card.yPos + 110);
 }

