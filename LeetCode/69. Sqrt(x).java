class Solution {
    public int mySqrt(int x) {
        Long i = 0l;
        while(true){
            if(i*i > x){
                break;
            }
            i++;
        }
        return (int)(i-1);
    }
}