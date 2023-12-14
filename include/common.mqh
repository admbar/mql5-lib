#property copyright "Copyright 2023, Andy Barnes"
#property version   "1.00"

/*
 * Returns true if there is a new candle present on the attached chart.
 */
bool isNewCandle() {

   static datetime time = 0;

   if (time == 0) {
      time = iTime(_Symbol, _Period, 0);
      return false; 
   }

   if(time != iTime(_Symbol, _Period, 0)) {
      time = iTime(_Symbol, _Period, 0);
      return true;
   }

   return false;
}