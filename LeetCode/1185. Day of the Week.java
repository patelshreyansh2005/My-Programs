class Solution {
    public String dayOfTheWeek(int day, int month, int year) {
        int[] table = { 1, 4, 4, 0, 2, 5, 0, 3, 6, 1, 4, 6 };
        String[] nameOfDays = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
        int lastTwo = year % 100;
        int quarter = lastTwo / 4;
        int dayInInteger = 0;
        int keyNumber = table[month - 1];
        if ((((year % 400 == 0) || (year % 100 != 0) && (year % 4 == 0))) && month < 3) {
            keyNumber--;
        }
        if (year <= 2100 && year >= 2000) {
            dayInInteger = (keyNumber + lastTwo + quarter + day - 1) % 7;
        } else {
            dayInInteger = (keyNumber + lastTwo + quarter + day) % 7;
        }
        if (year >= 2100) {

            if (dayInInteger == 0) {
                return "Thursday";
            } else if (dayInInteger == 1) {
                return "Friday";
            } else if (dayInInteger == 2) {
                return "Saturday";
            } else {
                return nameOfDays[dayInInteger - 3];
            }
        }
        if (dayInInteger == 0) {
            return "Saturday";
        }

        return nameOfDays[dayInInteger - 1];
    }
}