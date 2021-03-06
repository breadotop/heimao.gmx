///Heimao step function

// Global initial stepping

// Clear movement speed
vx = 0;
vy = 0;

/********************/
// Temporary Controls
/********************/
keyUp = keyboard_check(ord('W'));
keyDown = keyboard_check(ord('S'));
keyLeft = keyboard_check(ord('A'));
keyRight = keyboard_check(ord('D'));
keyUseItem = keyboard_check_pressed(vk_space);
keyAction = keyboard_check(ord('E'));
keyActionHold = keyboard_check_pressed(ord('E'));
keyInventory = keyInventory ^^ keyboard_check_pressed(ord('I'));
xDir = keyRight - keyLeft;
yDir = keyDown - keyUp;
timer += 1;
currentItem = (inventory).useFunctions[(inventory).currentlyEquipped];
//Old action control
/*
//laydown input logic
sitPress = keyboard_check_pressed(ord('Q'));
sitHeld = keyboard_check(ord('Q'));
sitRelease = keyboard_check_released(ord('Q'));

if(sitPress)
{
    sitTimer = 0.1; // TODO handle sitting timer properly with delta
    sitResult = 1;
}

if(sitHeld) {sitTimer += 0.1;}
    
if(sitTimer > 0.5 && sitResult == 1) {sitResult = 2;}
 
if(sitRelease)
{
    sitResult = 0;
    sitTimer = 0;
}*/

(inventory).active = keyInventory;

// Check if heimao should be interrupted
// Add on here to stop updating 
shouldBeInterrupted = (inventory).active;

/********************/ 
// Main step function
/********************/ 
if (!shouldBeInterrupted)
{
    image_speed = 0.15;
    // Update states accordingly
    scr_heimao_updateState();
    
    // Act
    scr_heimao_action();
    
    // Draw
    scr_heimao_draw();
}
else
{
    image_speed = 0;
}
