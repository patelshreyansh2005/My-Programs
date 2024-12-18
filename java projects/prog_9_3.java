public class prog_9_3 {
    public static void main(String[] args) {
        Animal[] a = new Animal[4];
        for(int i=0;i<4;i++){
            a[i]=new Animal();
        }
    }
}

interface Transport {
    void deliver();
}

abstract class Animal {
}

class Tiger extends Animal {
}

class Camel extends Animal implements Transport {

    @Override
    public void deliver() {
        System.out.println("Camel Delivered");
    }
}

class Deer extends Animal {
}

class Donkey extends Animal implements Transport {

    @Override
    public void deliver() {
        System.out.println("Donkey Delivered");
    }
}

