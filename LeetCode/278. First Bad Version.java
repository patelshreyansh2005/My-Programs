/* The isBadVersion API is defined in the parent class VersionControl.
      boolean isBadVersion(int version); */

// public class Solution extends VersionControl {
//     public int firstBadVersion(int n) {
//         int mid, lo = 2, hi = n;
//         boolean isBV = true, isBVM1 = true;
//         while (lo <= hi) {
//             mid = lo + (hi - lo) / 2;
//             isBV = isBadVersion(mid);
//             isBVM1 = isBadVersion(mid - 1);
//             if (isBV && !isBVM1) {
//                 return mid;
//             } else if (isBV && isBVM1) {
//                 hi = mid;
//             } else {
//                 lo = mid + 1;
//             }
//         }
//         return 0;
//     }
// }