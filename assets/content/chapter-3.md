## Chapter 3

In this chapter, I’ll be talking about:

**FAILURE SWINGS**

Why doesn’t the price always take out the previous low or high before making a move? Let’s find out!

🔙Before we begin, you should have watched the **previous two chapters** to understand the context and how the algorithm is programmed to move the price.

If the price always took out the previous candle on every timeframe before each move, it would become too predictable so everyone would make money.

🥷That’s why there are certain **conditions** and **characteristics** that trigger exceptions, leading to the Failure Swing.

![algo-3_1](resource:assets/images/algo-3_1.jpeg)

⏲️In essence, a **Failure Swing** occurs when the price **fails** to create a new swing before making a move. However, this isn’t always the case; sometimes, a failure swing can appear mid-move, but always keeping in mind what was discussed in Chapter 2 about the **start of the trading hours**.

![algo-3_2](resource:assets/images/algo-3_2.jpeg)

💡Here’s an example of what a **Failure Swing** looks like visually. In this case, we would keep waiting for the previous high to be taken out, and we’d never get our entry.

In **Image 2**, you can see the **ideal** entry at 02:00 and the **ideal** exit at the new low at 05:00.

![algo-3_3](resource:assets/images/algo-3_3.jpeg)

Let’s start with the reasons why this happens:

💎**Reason #1: Divergence** with highly **correlated** or **inversely correlated** pairs (like the DXY).

In this example, Pair A does take out the previous **HTF** candle, while Pair B fails to do so.

Therefore, Pair B would be valid for selling because, according to the algorithm, the raid on the previous candle has already been completed, and there’s no need to revisit it.

![algo-3_4](resource:assets/images/algo-3_4.jpeg)

Here’s a real example showing a **Failure Swing** at the **beginning** of the move and **mid-move**.

**Beginning**: The 03:00 candle fails to mitigate the low of 02:00, while the correlated asset (GU) does. In this case, **GU** is our **trigger**, and we’re clear to buy.

**Mid-move**: The **PO3** of the 04:00 candle in **EU** fails to mitigate the low of the previous candle, while **GU** completes it, making it valid for buying as well.

Our exit for the long would be at the new 4H or 6H candle, around the new **high** at 05:00.

![algo-3_5](resource:assets/images/algo-3_5.jpeg)
![algo-3_6](resource:assets/images/algo-3_6.jpeg)

💎**Reason #2: Purge at the End of the Hour**

If the price created a **raid** on **LTF** in the last 15 minutes of the hour, the algorithm validates this raid. The new hourly candle will **fail** to attempt the raid again (since it’s already been done). Our entry would be on the new candle, after the LTF raid, as we need confirmation that it won’t be revisited.

![algo-3_7](resource:assets/images/algo-3_7.jpeg)

Here’s a real example:

On the **1H** chart, the price fails to create a new high. I imagine it this way on the chart for the following reason:

In the **5-minute** chart, we see the high occurred exactly at 02:55, the last candle of the 02:00 hour. The algorithm validates this raid, so it doesn’t need to revisit it. The entry is at the 03:05 candle, and the exit is, as usual, at the new candle at 05:00.

![algo-3_8](resource:assets/images/algo-3_8.jpeg)

Another example, same process: The 03:00 candle fails to create a new high. We check the LTF to see what time this occurred, and surprise, it was again at 02:55. Our entry is at the 03:05 candle, and the exit is at the low of 05:00.
Here, we also have extra confirmation, **GU** did take out the high of the 02:00 candle, giving us two confluences that indicate the price is about to start a **bearish** move.

![algo-3_9](resource:assets/images/algo-3_9.jpeg)

💎**Reason #3: Price Attempts to Make the High or Low at the Beginning of the Hour**

In the first **15 minutes** of the new hourly candle, the price tries to attack the previous **high** or **low** and **fails**. When it fails, the algorithm validates the raid of the previous candle.

Adding **divergence** to this reasoning strengthens the argument.

![algo-3_10](resource:assets/images/algo-3_10.jpeg)

Let’s look at a real example:

On the **1H** chart, **EU** fails to create a new high at 08:00.
When we look at the **5-minute** chart, we see that at the beginning of the hour (08:05), the price attempts to create the new high but fails, this **is validated**.

In this case, **GU** followed the correct procedure, so we add strength to our argument with **divergence**.

![algo-3_11](resource:assets/images/algo-3_11.jpeg)

Another example:

Now we’re at the **London lunch**. At the 05:00 candle, the price takes out the high of the 01:00 candle. When we check the LTF, we see that at the start of the new hourly candle at 06:00, the price tries to make a new high, taking out the high of the 05:00 candle but **fails**.

Entry would be on the next candle, after rejecting the high, with our exit at the new **4H** candle at 09:00.

![algo-3_12](resource:assets/images/algo-3_12.jpeg)

The main reasons why the price fails to mitigate the previous high or low before making a move are:

· **Divergence** with a correlated or inversely correlated pair

· The **last candle of the hour** completes the LTF raid

· The **first 15 minutes** of the new candle attempts to attack the previous candle but **fails**.
