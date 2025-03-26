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

Before getting into this point, you need to watch **Chapter 1** of the **"Decoding the Algorithm"** series.

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
