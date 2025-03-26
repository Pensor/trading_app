# Decoding the Algorithm

Have you ever thought about _how the algorithm is coded?_

I guess you’ve never paid enough attention to the details. I’m going to start a series and reveal a small portion of how price delivery works and how we can take advantage of it.

## Chapter 1

For market makers, it's impossible to manually control the prices of all markets, assets, and timeframes.

For this reason, in the 80s, an algorithm was invented to deliver prices efficiently in the markets.
The market makers only need to input certain values, specify the program in which they want the price to execute the movement, and set the speed.

Since the algorithm is coded the same way, it makes the price fractal across all timeframes—annual, weekly, and even 15-second charts.

The only thing that changes is the time it takes to form the candle.⚡️

![algo-1_1](resource:assets/images/algorithm/algo-1_1.avif)

In the first chapter, I’ll discuss the efficiency of price delivery. Do you notice any visual differences between the two charts?🪞

And if I tell you that one is a weekly chart while the other is a 1 minute chart, what do we notice in both charts when creating a swing high or low and reversing?

![algo-1_2](resource:assets/images/algorithm/algo-1_2.avif)
![algo-1_3](resource:assets/images/algorithm/algo-1_3.avif)

Before starting a bearish move, the algorithm will create a new candle that mitigates the last high to enable a downward move.

The intention is to reduce the maximum number of people making money while shorting and to hunt for the maximum number of stops from early sellers.

The opposite occurs in a bullish market.

![algo-1_4](resource:assets/images/algorithm/algo-1_4.avif)

How can we identify a swing and that the price will reverse?

🥷🏼In this chapter, I won’t reveal this secret. Just think about aspects like time and simple things such as candles, highs, and lows.

As mentioned earlier, this occurs in all timeframes you can imagine.
For my trading style, it doesn’t make sense to wait for a monthly or weekly high or low to be mitigated, or for a 1 minute or 15-second candle to be mitigated… But, what if we wait for the 1 day and 1h candle to be mitigated?

![algo-1_5](resource:assets/images/algorithm/algo-1_5.avif)

So, how can we take advantage of this?

When a swing high or low is created, we wait for the next new candle that mitigates the opposite side of the next movement and then enter our trade.

This is how we can trade turtle soup setups with such precision and capitalize throughout the entire movement.

![algo-1_6](resource:assets/images/algorithm/algo-1_6.avif)

What happens with swings where the previous candle is not mitigated? Then a failure swing occurs.

![algo-1_7](resource:assets/images/algorithm/algo-1_7.avif)

To conclude, we wait for a raid of the previous HTF candle and when it's mitigated we go to LTF and wait for exactly same protocol.

![algo-1_8](resource:assets/images/algorithm/algo-1_8.avif)

## Chapter 2

In this chapter, I will talk about:

⏲️TIME-BASED ENTRIES⏲️

I'm sure you've often wondered, what is the best time to enter a trade? Let's find out!

Before we begin, you should know that the market is divided into several time zones: Asia, Europe, and America.

Our focus for trading Forex will be on the London open, London lunch, and New York AM session.

This is probably the first time you've seen sessions split by these specific hours. You have two options: either you trust what I'm telling you, or you use the killzones that everyone else uses, and you'll get the results that everyone else gets. ;)

![algo-2_1](resource:assets/images/algorithm/algo-2_1.avif)

If we split the 24 hours of the day, we’ll find that there are **key hours in the price action.** I won’t go into more detail on this point, but if we want to align sessions with the **available time frames**, we’ll see that the **6H**, **4H**, and **1H** candles are where we will find our best entries.

If we overlay the 6-hour chart, the candles that coincide with our sessions open at 23:00, 05:00, and 11:00.

If we overlay the 4-hour chart, the candles that coincide with our sessions are at 01:00, 05:00, and 09:00.

![algo-2_2](resource:assets/images/algorithm/algo-2_2.avif)

Once we know this, you should also know that **each individual candle** can be treated like a daily candle, with its **PO3, OHLC / OLHC.**

These three candles (01:00, 05:00, 09:00) make up the body of a daily candle, where one of these three candles will represent **accumulation**, **manipulation**, and **expansion**.

![algo-2_3](resource:assets/images/algorithm/algo-2_3.avif)
![algo-2_4](resource:assets/images/algorithm/algo-2_4.avif)

But this chapter is about **which candles we are going to trade**, right?

Let’s start with the **0100** candle:

This candle (from 01:00 to 05:00) is the **London open** candle. Where will the body of this candle form?

- **00:00** Accumulation
- 01:00 - **02:00** Manipulation
- **03:00** Distribution (we trade this candle)
- **04:00** Continuation / Reversal

![algo-2_5](resource:assets/images/algorithm/algo-2_5.avif)

Next is **0500** candle, this is the **London lunch**, we trade this candle when one of the following three criteria is met:

- The 01:00 candle has reached its target → **Reversal**
- The 01:00 candle has not reached its target → **Continuation**
- There is **news at** 08:30

![algo-2_6](resource:assets/images/algorithm/algo-2_6.avif)
![algo-2_7](resource:assets/images/algorithm/algo-2_7.avif)

Let's continue with **New York AM session**, will trade the **0900** candle when:

- There has not been an expansion candle at 01:00 or 05:00.
- The daily DOL has not been reached.
- The daily DOL has been reached, and a reversal scenario is created.

![algo-2_8](resource:assets/images/algorithm/algo-2_8.avif)
![algo-2_9](resource:assets/images/algorithm/algo-2_9.avif)

Once we know which candles we are going to trade and how, **where are we going to enter?**

Before getting into this point, you need to watch [Chapter 1](#chapter-1) of the **"Decoding the Algorithm"** series.

As we know, **the algorithm makes a purge making the move.** Extrapolating this to **LTF candles**, where do we enter?

Each new candle aims to take at least the high or low (or attempt to) of the previous candle, so **we will enter at the beginning of new candles.**

![algo-2_10](resource:assets/images/algorithm/algo-2_10.avif)
![algo-2_11](resource:assets/images/algorithm/algo-2_11.avif)

So, **when do we enter our trades?**

There is a **grace period** in the algorithm. This refers to the **first 15 minutes** of the new hourly candle and the last candle of the hour.

This way, we enter the trade optimally, **as we enter at the wick** of the PO3 of the new candle.

Backtest it and thank me later.🪄

![algo-2_12](resource:assets/images/algorithm/algo-2_12.avif)
![algo-2_13](resource:assets/images/algorithm/algo-2_13.avif)

To conclude...

We wait for a HTF purge of the previous candle and then in the first 15min of the new candle another LTF purge, then we entry.

What happens in swings where the previous candle is not mitigated? Then a **failure swing** is created.

## Chapter 3

In this chapter, I’ll be talking about:

**FAILURE SWINGS**

Why doesn’t the price always take out the previous low or high before making a move? Let’s find out!

🔙Before we begin, you should have watched the **previous two chapters** to understand the context and how the algorithm is programmed to move the price.

If the price always took out the previous candle on every timeframe before each move, it would become too predictable so everyone would make money.

🥷That’s why there are certain **conditions** and **characteristics** that trigger exceptions, leading to the Failure Swing.

![algo-3_1](resource:assets/images/algorithm/algo-3_1.avif)

⏲️In essence, a **Failure Swing** occurs when the price **fails** to create a new swing before making a move. However, this isn’t always the case; sometimes, a failure swing can appear mid-move, but always keeping in mind what was discussed in Chapter 2 about the **start of the trading hours**.

![algo-3_2](resource:assets/images/algorithm/algo-3_2.avif)

💡Here’s an example of what a **Failure Swing** looks like visually. In this case, we would keep waiting for the previous high to be taken out, and we’d never get our entry.

In **Image 2**, you can see the **ideal** entry at 02:00 and the **ideal** exit at the new low at 05:00.

![algo-3_3](resource:assets/images/algorithm/algo-3_3.avif)

Let’s start with the reasons why this happens:

💎**Reason #1: Divergence** with highly **correlated** or **inversely correlated** pairs (like the DXY).

In this example, Pair A does take out the previous **HTF** candle, while Pair B fails to do so.

Therefore, Pair B would be valid for selling because, according to the algorithm, the raid on the previous candle has already been completed, and there’s no need to revisit it.

![algo-3_4](resource:assets/images/algorithm/algo-3_4.avif)

Here’s a real example showing a **Failure Swing** at the **beginning** of the move and **mid-move**.

**Beginning**: The 03:00 candle fails to mitigate the low of 02:00, while the correlated asset (GU) does. In this case, **GU** is our **trigger**, and we’re clear to buy.

**Mid-move**: The **PO3** of the 04:00 candle in **EU** fails to mitigate the low of the previous candle, while **GU** completes it, making it valid for buying as well.

Our exit for the long would be at the new 4H or 6H candle, around the new **high** at 05:00.

![algo-3_5](resource:assets/images/algorithm/algo-3_5.avif)
![algo-3_6](resource:assets/images/algorithm/algo-3_6.avif)

💎**Reason #2: Purge at the End of the Hour**

If the price created a **raid** on **LTF** in the last 15 minutes of the hour, the algorithm validates this raid. The new hourly candle will **fail** to attempt the raid again (since it’s already been done). Our entry would be on the new candle, after the LTF raid, as we need confirmation that it won’t be revisited.

![algo-3_7](resource:assets/images/algorithm/algo-3_7.avif)

Here’s a real example:

On the **1H** chart, the price fails to create a new high. I imagine it this way on the chart for the following reason:

In the **5-minute** chart, we see the high occurred exactly at 02:55, the last candle of the 02:00 hour. The algorithm validates this raid, so it doesn’t need to revisit it. The entry is at the 03:05 candle, and the exit is, as usual, at the new candle at 05:00.

![algo-3_8](resource:assets/images/algorithm/algo-3_8.avif)

Another example, same process: The 03:00 candle fails to create a new high. We check the LTF to see what time this occurred, and surprise, it was again at 02:55. Our entry is at the 03:05 candle, and the exit is at the low of 05:00.
Here, we also have extra confirmation, **GU** did take out the high of the 02:00 candle, giving us two confluences that indicate the price is about to start a **bearish** move.

![algo-3_9](resource:assets/images/algorithm/algo-3_9.avif)

💎**Reason #3: Price Attempts to Make the High or Low at the Beginning of the Hour**

In the first **15 minutes** of the new hourly candle, the price tries to attack the previous **high** or **low** and **fails**. When it fails, the algorithm validates the raid of the previous candle.

Adding **divergence** to this reasoning strengthens the argument.

![algo-3_10](resource:assets/images/algorithm/algo-3_10.avif)

Let’s look at a real example:

On the **1H** chart, **EU** fails to create a new high at 08:00.
When we look at the **5-minute** chart, we see that at the beginning of the hour (08:05), the price attempts to create the new high but fails, this **is validated**.

In this case, **GU** followed the correct procedure, so we add strength to our argument with **divergence**.

![algo-3_11](resource:assets/images/algorithm/algo-3_11.avif)

Another example:

Now we’re at the **London lunch**. At the 05:00 candle, the price takes out the high of the 01:00 candle. When we check the LTF, we see that at the start of the new hourly candle at 06:00, the price tries to make a new high, taking out the high of the 05:00 candle but **fails**.

Entry would be on the next candle, after rejecting the high, with our exit at the new **4H** candle at 09:00.

![algo-3_12](resource:assets/images/algorithm/algo-3_12.avif)

The main reasons why the price fails to mitigate the previous high or low before making a move are:

· **Divergence** with a correlated or inversely correlated pair

· The **last candle of the hour** completes the LTF raid

· The **first 15 minutes** of the new candle attempts to attack the previous candle but **fails**.

## Chapter 4

In this chapter, I'll break down **The Logic Behind My Entries** and how I pinpoint trading opportunities with precision.

If you truly understand how the algorithm works, you'll leverage it to get the best entries possible.

🔁**Every entry is also an exit**, and vice versa. If you recall Chapter 1, the algorithm always mitigates the highsand lows of the previous candle across all timeframes, applying the fractality of price.

We trade these **HTF** (High Time Frame) raids on **LTF** (Low Time Frame). This means, when the market shifts from a buy program to a sell program, it mitigates the high before moving down.

If we're in a buy, our exit point is precisely this high. For a sell, our entry is the exit of a buyer. This is the concept of algorithmic order pairing: every candle starting a move must be mitigated, creating opportunities for us to trade.

![algo-4_1](resource:assets/images/algorithm/algo-4_1.avif)

💡During the price movement from the starting point to the Draw on Liquidity (DOL), the range is divided into **four quarters**. My strategy focuses on trading the first and last quarter.

Why? The **first quarter** provides **the most optimal entry**, minimizing drawdown and maximizing the risk-reward ratio.

The middle can cause retracements that might stop us out.

**The last quarter** is where price has mostly completed its move, offering a **final opportunity to join the trend** via a low-time frame raid.

![algo-4_2](resource:assets/images/algorithm/algo-4_2.avif)

Visual Example: Let’s visualize this with a **bullish example**.

Our **first buy** happens when the High Time Frame Draw on Liquidity (DOL) is mitigated. As the price reaches the previous low, we factor in time and the type of HTF raid.

**The second entry** occurs when a Low Time Frame raid happens, ensuring we enter as close to the start of the move as possible.

**The third entry** is when price fails to complete the HTF bullish DOL, giving us a chance to enter, albeit with a lower risk-reward.

In a bearish scenario, we apply the same concepts, but in reverse.

![algo-4_3](resource:assets/images/algorithm/algo-4_3.avif)

In a bullish case, **always buy on the buy side of the curve** to avoid drawdowns.
Trade during the **new candle hours**, except if a failure swing\* occurs at the end of the previous hour (explained in Chapter 3).

We never buy before the Turtle Soup has formed. You have two options: follow my **WS Time-Based Entry Model** or wait for confirmation entries, which I'll explain next.

![algo-4_4](resource:assets/images/algorithm/algo-4_4.avif)

How to Enter: Low Time Frame Raid WS Time-Based Entry Model Once you know when to enter, here's how: The Low Time Frame raid in my WS Time-Based Entry Model is the **most optimal entry**, always occurring after an HTF raid. If it captures the previous hour, that's even better.

For example, if this happens at 03:00, ensure the HTF raid has already been taken, followed by the 03:00 candle raiding the 02:00 high/low. Place your stop-loss to aim for a 3R reward toward your DOL without being stopped prematurely.

![algo-4_5](resource:assets/images/algorithm/algo-4_5.avif)

**Second Entry Type**: Order Block Confirmation If you're looking for confirmation entries, wait until a Swing High/Low has been mitigated by the HTF and previous hour’s candle on a Lower Time Frame. Look for an engulfing candle on a 5 or 15-minute chart that engulfs the candle forming the Swing High/Low. Enter when the next candle performs a PO3.

In a bearish case, enter when the candle touches the previous one, after it has closed below. This is known as the Order Block. Place your stop-loss above the high with at least a 5-pip margin.

![algo-4_6](resource:assets/images/algorithm/algo-4_6.avif)

**Entry Type #3: Last Quadrant** In the last quarter, wait for the price to fail at completing the HTF Draw on Liquidity, triggering a Low Time Frame raid within the final quadrant.

Here, we aim for a 1R or 2R profit, no more. Once the target is hit, exit the trade.

![algo-4_7](resource:assets/images/algorithm/algo-4_7.avif)

🚫**Where I Avoid Trading**: I avoid trading towards the **end of the hour**, except when a Failure Swing occurs, as detailed in Chapter 3.

I also avoid trading **halfway** between the start and DOL, as entering there can lead to a retracement that stops you out.

![algo-4_8](resource:assets/images/algorithm/algo-4_8.avif)

Real Example of Low Time Frame Entries:

- Entry 1: After a Low Time Frame raid follows the HTF raid.
- Entry 2: Price returns to the candle that created the Swing Low.
- Entry 3: When a Low Time Frame raid occurs in the first quarter towards the HTF DOL.

Always focus on the first and last quarter for the most optimal entries.

![algo-4_9](resource:assets/images/algorithm/algo-4_9.avif)

**Entry Patterns**:

This is what happens when you become a "**pattern trader**" without truly understanding how price moves.

In the first image, I apply Smart Money or ICT concepts, and we can see how, by only following patterns, we would be completely rekt.

In the second case, we apply the logic behind price movements, identifying the true Draw on Liquidity and understanding what the price is doing at a given time. At 4 o'clock, the Failure Swing is created, marking our ideal entry point.

![algo-4_10](resource:assets/images/algorithm/algo-4_10.avif)

🐑I'm sure all of you are trading the following: Turtle Soup, MSS, OTE retracement, or FVG, followed by the entry. The problem is, if you trade like everyone else, you'll get the same results as them.

🥷To be different and truly successful, you need to understand price action and focus on what really matters: **time, highs and lows**, the **Draw on Liquidity**, and the **economic calendar**. That’s what will give you the edge.

![algo-4_11](resource:assets/images/algorithm/algo-4_11.avif)

**High Time Frame Reversal Patterns**:

Let's see some **real reversal patterns** in **High Time Frame**. This is how reversal patterns manifest in candles on higher time frames

If you don’t believe me, I invite you to check for yourself. Study each **High Time Frame Reversal** and see how the candles behaved on lower time frames. Here’s some homework for you: look for the **Swing Highs** and **Swing Lows** on the 4hour chart, then drop down to the 1hour chart and find the entries on the 5minute chart using the concepts I just explained, applying the **WS Time-Based Entry Model**.

![algo-4_12](resource:assets/images/algorithm/algo-4_12.avif)

**Real Example of Low Time Frame Entries**:

Let’s look at another real example of entries on

1. The first entry is made once the Low Time Frame Write has occurred after the **High Time Frame Write**.

2. The second entry happens when the price returns to the candle that created the **Swing Low**.

3. The third entry takes place when a **Low Time Frame raid** occurs within the **last quarter**, heading toward our High Time Frame Draw on Liquidity.

Remember, as I mentioned before, we don't trade in the middle of the move. Although you might avoid drawdown in some cases, trading in the middle of the run will ultimately lead to losses. Focusing on the **first and last quarters** will always provide the most optimal entries.

![algo-4_13](resource:assets/images/algorithm/algo-4_13.avif)

**Stop Loss Placement**:

- Entry 1: Aim for **3R** from the LTF raid to your DOL.

- Entry 2: Place your **stop-loss just below the Swing Low**.

- Entry 3: Target a **1-2R** ratio, as you’re far into the move.

![algo-4_14](resource:assets/images/algorithm/algo-4_14.avif)

## Chapter 5

🥷 Welcome to CHAPTER 5 of my series "DECODING THE ALGORITHM" by Will Street.

In this chapter, we’ll dive into my WS CONTINUATION MODEL, crucial for not missing any moves that have already started🥷🏼 .

First, let’s dive into understanding **how price moves**.

Initially, we see price breaking down from a simpler view to a more detailed one. On a deeper level, we observe how price makes **swings**, forming **highs and lows**. But if we zoom in further, once a move is created and heads towards its target, the price forms a lower time frame raid. This lower time frame raid will be our **continuation model**.

Now, let’s break down how we’ll use this model

![algo-5_1](resource:assets/images/algorithm/algo-5_1.avif)

If we look closely here and recall the previous episode on the **logic behind my entries**, we see that the first entry is based on the WS Time-Based Entry Model, as it’s the most optimal and initiates the movement.
My second entry is the **continuation model**.

The final entry would be a version of my continuation model, or my last model, which I’ll be releasing soon my WS **Last Quarter Model**. However, I won’t cover that in this chapter.

![algo-5_2](resource:assets/images/algorithm/algo-5_2.avif)

💎Remember, we always trade on the **right side of the curve**.

If we’re bullish, we trade the buy side of the curve. If we’re bearish, we trade the sell side.

But we **never** trade on the left side of the curve. In this case, we see the same principle. If we’ve missed the start of the move, there will be more opportunities before we reach our draw on liquidity.

Here’s how a market move would look with candles. We see how the first creates CISD shifts from sell-program to buy-program, forming our Time-Based Entry Model.
However, a single candle doesn’t reach the target. This is where, in the **Power of Three of the next candle**, we want to position ourselves and **keep buying until we reach the target**, exiting at the new high after completing our draw on liquidity.

This continuation is our Continuation Model.

![algo-5_3](resource:assets/images/algorithm/algo-5_3.avif)

Now, let’s look at how this continuation looks like on a **lower time frame**.

We see how the **PO3** of the new candle, on the new hour, makes a LTF raid, meaning it takes out the low of a previous candle.

In this case, our continuation model forms, and our longs would be positioned in the wick of the Power of Three.

This ensures we always enter at the **most optimal part of the candle**, which is the **wick**.

⚠️But pay close attention: **we don’t enter** the PO3 **before** it takes out the previous candle. **Only after** it’s taken out, and only then, do we enter.

![algo-5_4](resource:assets/images/algorithm/algo-5_4.avif)

Here’s a **schematic view** of the market move. The start of the move, as we know, comes from the exit of our sells, which then makes way for our buys.

Since a single candle doesn’t complete the target, in the next candle, after a raid of the previous one in the PO3, that’s where our entry would be.

![algo-5_5](resource:assets/images/algorithm/algo-5_5.avif)

Once we understand how this continuation model works, let’s explore its **three versions**.

**Version one** is the simplest and most basic. The PO3 of the new candle takes out a lower time frame raid, and we buy on the buy side of the curve (if we’re bullish), after it has done the LTF raid.

![algo-5_6](resource:assets/images/algorithm/algo-5_6.avif)

Here’s a real example of how this model would be used, giving us two opportunities. We see the move starting at 2:00, and at 3:00 it doesn’t make a new low, creating the continuation model. The **PO3** at 3:00 takes out the LTF of the 2:00 candle, which is where **our buy would be**.

At 4:00, the move hasn’t completed, giving us **another buying opportunity** in the new **PO3** at 4:00, which again takes out a lower time frame raid of the previous candle.

Our **exit** is at the higher high of the 5:00 candle, based on the **Time-Based Exit Model**.

![algo-5_7](resource:assets/images/algorithm/algo-5_7.avif)

Another example: we see the PO3 from the 3:00 candle take out the low of the 2:00 candle.

Therefore, our entry would be in the PO3 of the 3:00 candle, and our exit at the new low of the 4:00 candle.

![algo-5_8](resource:assets/images/algorithm/algo-5_8.avif)

Here’s another example that shows exactly the same process. It’s **very mechanical and easy to identify** when the model is valid and when it isn’t.

![algo-5_9](resource:assets/images/algorithm/algo-5_9.avif)

Now let’s move on to **version two**, which occurs when we have a failure swing in the PO3 of the new candle.

In this case, the LTF raid would come from the last candle of the previous hour. As we know from the **Failure Swings episode**, this candle, according to the algorithm, is already part of the new candle that will continue the move.

Therefore, we could enter either in the last candle of the previous hour or in the PO3 of the new candle that follows.

![algo-5_10](resource:assets/images/algorithm/algo-5_10.avif)

Here’s a real example: the last candle of the previous hour, at 2:55, takes out the high of the 2:50 candle. Therefore, the **PO3** at 3:00 **doesn’t need to be a LTF raid**.

Our first entry could be in the LTF raid of the last candle or in the PO3 of the new 3:00 candle, aiming for our Draw on Liquidity.

![algo-5_11](resource:assets/images/algorithm/algo-5_11.avif)

Another example: at 2:00, our **Time-Based Exit Model** is created, but at 3:00 it doesn’t reach the target.
Therefore, our **Continuation Model forms at** 4:00. However, we see that the last candle at 3:00 makes a LTF raid, so the **new** 4:00 **candle doesn’t need to make that raid**.

Our entry would be at the end of the hour.

![algo-5_12](resource:assets/images/algorithm/algo-5_12.avif)

Another example: at 2:55, we see a LTF raid, so at 3:00 there’s no need for the PO3. **We simply trade either at the start of the new candle or in the last candle of the 2:00 hour**.

![algo-5_13](resource:assets/images/algorithm/algo-5_13.avif)

The **3rd version** of this model occurs in the **last quarter**, when the price has already made a Low Time Frame raid mid-move.

Since we’re so close to our target, there’s no need for another LTF raid. In this case, we would simply trade the PO3 of the new candle if the target hasn’t been reached in the previous candle.

This is the most advanced version of the model, and I wouldn’t place too much emphasis on it for now, as I haven’t yet released my **WS Last Quarter Model**.

![algo-5_14](resource:assets/images/algorithm/algo-5_14.avif)

Here’s an example where the DOL hadn’t been completed, and in the PO3 of the 4:00 candle, we see a final move forming.

Remember, in this case, we’re only looking for a 1:1 RR ratio since we’re very far along in the move, nothing more than that.

![algo-5_15](resource:assets/images/algorithm/algo-5_15.avif)

To wrap up, **when** should you **avoid this model**? Don’t use this model when a **LTF raid hasn’t occurred** at the end of the hour, and the **new PO3** in the following hour **doesn’t make a LTF raid** either.

Most likely, **you’ll get trapped** in this trade, and halfway through the hour, it will make that rate, stop you out, and then make the real move occurs.

![algo-5_16](resource:assets/images/algorithm/algo-5_16.avif)

**Conclusion**:

When the higher time frame DOL is not reach, we wait for a Low Time Frame Write in the new candle, then enter at the PO3.
If we’re bullish, we enter below the open, and if we’re bearish, we enter above the open. Simple as that!
