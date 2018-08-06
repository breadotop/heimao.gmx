// Initialize variables
MAX_ITEM = 8;
ELEM_PER_ROW = 5;
ELEM_PER_COL = 2;

active = false;
selectX = 0;
selectY = 0;
currentSelection = 1
currentItemCount = 0;

currentlyEquipped = 1;

for(var i = MAX_ITEM - 1; i >= 0 i--;)
{
    icons[i] = -1;
    names[i] = -1;
    descriptions[i] = -1;
    useFunctions[i] = Items.None;
}

enum Items
{
    Mittens,
    Shield,
    NoteBottle,
    Bottle,
    Blanket,
    Boots,
    Lantern,
    Meteorite,
    None
}
