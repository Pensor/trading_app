## Chapter 5

🥷 Welcome to CHAPTER 5 of my series "DECODING THE ALGORITHM" by Will Street.

In this chapter, we’ll dive into my WS CONTINUATION MODEL, crucial for not missing any moves that have already started🥷🏼 .

First, let’s dive into understanding **how price moves**.

Initially, we see price breaking down from a simpler view to a more detailed one. On a deeper level, we observe how price makes **swings**, forming **highs and lows**. But if we zoom in further, once a move is created and heads towards its target, the price forms a lower time frame raid. This lower time frame raid will be our **continuation model**.

Now, let’s break down how we’ll use this model

![algo-5_1](resource:assets/images/algo-5_1.jpeg)

If we look closely here and recall the previous episode on the **logic behind my entries**, we see that the first entry is based on the WS Time-Based Entry Model, as it’s the most optimal and initiates the movement.
My second entry is the **continuation model**.

The final entry would be a version of my continuation model, or my last model, which I’ll be releasing soon my WS **Last Quarter Model**. However, I won’t cover that in this chapter.

![algo-5_2](resource:assets/images/algo-5_2.jpeg)

💎Remember, we always trade on the **right side of the curve**.

If we’re bullish, we trade the buy side of the curve. If we’re bearish, we trade the sell side.

But we **never** trade on the left side of the curve. In this case, we see the same principle. If we’ve missed the start of the move, there will be more opportunities before we reach our draw on liquidity.

Here’s how a market move would look with candles. We see how the first creates CISD shifts from sell-program to buy-program, forming our Time-Based Entry Model.
However, a single candle doesn’t reach the target. This is where, in the **Power of Three of the next candle**, we want to position ourselves and **keep buying until we reach the target**, exiting at the new high after completing our draw on liquidity.

This continuation is our Continuation Model.

![algo-5_3](resource:assets/images/algo-5_3.jpeg)

Now, let’s look at how this continuation looks like on a **lower time frame**.

We see how the **PO3** of the new candle, on the new hour, makes a LTF raid, meaning it takes out the low of a previous candle.

In this case, our continuation model forms, and our longs would be positioned in the wick of the Power of Three.

This ensures we always enter at the **most optimal part of the candle**, which is the **wick**.

⚠️But pay close attention: **we don’t enter** the PO3 **before** it takes out the previous candle. **Only after** it’s taken out, and only then, do we enter.

![algo-5_4](resource:assets/images/algo-5_4.jpeg)

Here’s a **schematic view** of the market move. The start of the move, as we know, comes from the exit of our sells, which then makes way for our buys.

Since a single candle doesn’t complete the target, in the next candle, after a raid of the previous one in the PO3, that’s where our entry would be.

![algo-5_5](resource:assets/images/algo-5_5.jpeg)

Once we understand how this continuation model works, let’s explore its **three versions**.

**Version one** is the simplest and most basic. The PO3 of the new candle takes out a lower time frame raid, and we buy on the buy side of the curve (if we’re bullish), after it has done the LTF raid.

![algo-5_6](resource:assets/images/algo-5_6.jpeg)

Here’s a real example of how this model would be used, giving us two opportunities. We see the move starting at 2:00, and at 3:00 it doesn’t make a new low, creating the continuation model. The **PO3** at 3:00 takes out the LTF of the 2:00 candle, which is where **our buy would be**.

At 4:00, the move hasn’t completed, giving us **another buying opportunity** in the new **PO3** at 4:00, which again takes out a lower time frame raid of the previous candle.

Our **exit** is at the higher high of the 5:00 candle, based on the **Time-Based Exit Model**.

![algo-5_7](resource:assets/images/algo-5_7.jpeg)

Another example: we see the PO3 from the 3:00 candle take out the low of the 2:00 candle.

Therefore, our entry would be in the PO3 of the 3:00 candle, and our exit at the new low of the 4:00 candle.

![algo-5_8](resource:assets/images/algo-5_8.jpeg)

Here’s another example that shows exactly the same process. It’s **very mechanical and easy to identify** when the model is valid and when it isn’t.

![algo-5_9](resource:assets/images/algo-5_9.jpeg)

Now let’s move on to **version two**, which occurs when we have a failure swing in the PO3 of the new candle.

In this case, the LTF raid would come from the last candle of the previous hour. As we know from the **Failure Swings episode**, this candle, according to the algorithm, is already part of the new candle that will continue the move.

Therefore, we could enter either in the last candle of the previous hour or in the PO3 of the new candle that follows.

![algo-5_10](resource:assets/images/algo-5_10.jpeg)

Here’s a real example: the last candle of the previous hour, at 2:55, takes out the high of the 2:50 candle. Therefore, the **PO3** at 3:00 **doesn’t need to be a LTF raid**.

Our first entry could be in the LTF raid of the last candle or in the PO3 of the new 3:00 candle, aiming for our Draw on Liquidity.

![algo-5_11](resource:assets/images/algo-5_11.jpeg)

Another example: at 2:00, our **Time-Based Exit Model** is created, but at 3:00 it doesn’t reach the target.
Therefore, our **Continuation Model forms at** 4:00. However, we see that the last candle at 3:00 makes a LTF raid, so the **new** 4:00 **candle doesn’t need to make that raid**.

Our entry would be at the end of the hour.

![algo-5_12](resource:assets/images/algo-5_12.jpeg)

Another example: at 2:55, we see a LTF raid, so at 3:00 there’s no need for the PO3. **We simply trade either at the start of the new candle or in the last candle of the 2:00 hour**.

![algo-5_13](resource:assets/images/algo-5_13.jpeg)

The **3rd version** of this model occurs in the **last quarter**, when the price has already made a Low Time Frame raid mid-move.

Since we’re so close to our target, there’s no need for another LTF raid. In this case, we would simply trade the PO3 of the new candle if the target hasn’t been reached in the previous candle.

This is the most advanced version of the model, and I wouldn’t place too much emphasis on it for now, as I haven’t yet released my **WS Last Quarter Model**.

![algo-5_14](resource:assets/images/algo-5_14.jpeg)

Here’s an example where the DOL hadn’t been completed, and in the PO3 of the 4:00 candle, we see a final move forming.

Remember, in this case, we’re only looking for a 1:1 RR ratio since we’re very far along in the move, nothing more than that.

![algo-5_15](resource:assets/images/algo-5_15.jpeg)

To wrap up, **when** should you **avoid this model**? Don’t use this model when a **LTF raid hasn’t occurred** at the end of the hour, and the **new PO3** in the following hour **doesn’t make a LTF raid** either.

Most likely, **you’ll get trapped** in this trade, and halfway through the hour, it will make that rate, stop you out, and then make the real move occurs.

![algo-5_16](resource:assets/images/algo-5_16.jpeg)

**Conclusion**:

When the higher time frame DOL is not reach, we wait for a Low Time Frame Write in the new candle, then enter at the PO3.
If we’re bullish, we enter below the open, and if we’re bearish, we enter above the open. Simple as that!
