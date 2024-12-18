class MyHashSet {
    private int[] hashSet = new int[1000001];

    public MyHashSet() {

    }

    public void add(int key) {
        this.hashSet[key] = 1;
    }

    public void remove(int key) {
        this.hashSet[key] = 0;
    }

    public boolean contains(int key) {
        return this.hashSet[key] > 0;
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = new MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * boolean param_3 = obj.contains(key);
 */