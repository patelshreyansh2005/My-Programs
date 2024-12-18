class Solution {
    public int findPoisonedDuration(int[] timeSeries, int duration) {
        if (timeSeries.length < 2) {
            return duration;
        }
        int PoisonedDuration = duration;
        int d = 0;
        for (int i = 1; i < timeSeries.length; i++) {
            d = timeSeries[i] - timeSeries[i - 1];
            PoisonedDuration += d < duration ? d : duration;
        }
        return PoisonedDuration;
    }
}