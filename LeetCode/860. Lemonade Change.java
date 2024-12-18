class Solution {
    public boolean lemonadeChange(int[] bills) {
        int change5 = 0;
        int change10 = 0;
        for (int i = 0; i < bills.length; i++) {
            if (bills[i] == 5) {
                change5 += 1;
            } else if (bills[i] == 10) {
                if (change5 >= 1) {
                    change5 -= 1;
                } else {
                    return false;
                }
                change10 += 2;
            } else {
                if (change10 >= 2) {
                    if (change5 >= 1) {
                        change10 -= 2;
                        change5 -= 1;
                    } else {
                        return false;
                    }
                } else {
                    if (change5 >= 3) {
                        change5 -= 3;
                    } else {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}