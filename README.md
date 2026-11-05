# GameMaker Platformer

A 2D action platformer I built on my own in GameMaker Studio 2 (GML) during high school, from late 2020 to mid 2021. It was how I first learned to program: no tutorials-as-a-course, just building a feature, breaking it, and fixing it, one commit at a time.

## What's in it

**Combat:** three weapon types (pistol, shotgun, rifle) plus a laser, with ammo vending machines, health packs, and an E/Q inventory to switch weapons.

**Enemies:** walkers, flying enemies, armored and oversized enemies, ceiling-walkers, cannons and turrets, and moving-platform enemies, each with its own behavior.

**Levels:** five rooms plus a menu, with checkpoints, doors and room transitions, sliding doors, bounce pads, spikes, one-way platforms, and coins and scoring.

**Game feel:** a follow camera, hit sparks, dust, shell casings, and a layered blood-splatter system.

## Things I figured out along the way

**State machines.** The laser and several enemies run on simple state machines, which was the first time I structured behavior instead of piling up if-statements.

**Performance.** My first blood effect lagged the game badly. I rewrote it to draw onto layers instead of spawning thousands of objects, which fixed the slowdown (see the January 2021 commits).

**Persistence bugs.** Making the player object persist across rooms broke checkpoints and room loading, and tracking that down taught me a lot about object lifecycles.

## Running it

Open GamemakernewGame/GamemakernewGame.yyp in GameMaker Studio 2 and press Run. A few rooms (test, test2, RoomWork, Roomnotwork) are scratch rooms I used while building features.

## Status

Unfinished. I stopped in July 2021 while adding a large boss-style enemy. I was forced to stop because I ran into a series of issues which I was entirely unequipped to handle. The main issues were memory leaks, performance issues, and game status saving
