class Solution {
    public int dayOfYear(String dateString) {
        String[] data = dateString.split("-");
        int year = Integer.parseInt(data[0]);
        int month = Integer.parseInt(data[1]);
        int[] daysInMonth = { 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 };
        return ((year % 4 == 0 && year % 100 != 0 || year % 400 == 0) && month > 2)
        ? daysInMonth[month - 1] + Integer.parseInt(data[2]) + 1
        : daysInMonth[month - 1] + Integer.parseInt(data[2]);
    }
}