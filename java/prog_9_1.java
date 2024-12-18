public class prog_9_1 {
    public static void main(String[] args) {
        Potato p1 = new Potato("Potato", "Skin");
        Tomato t1 = new Tomato("Tomato","Red");
        Brinjal b1 = new Brinjal("Brinjal", "Purple");
        System.out.println(p1);
        System.out.println(t1);
        System.out.println(b1);
    }
}

abstract class Vegetable{
    String name;
    String color;
}

class Potato extends Vegetable{

    Potato(String name,String color){
        this.name=name;
        this.color=color;
    }

    @Override
    public String toString(){
        return "Name of Vegetable is "+name+" And Color is "+color;
    }
}
class Tomato extends Vegetable{

    Tomato(String name,String color){
        this.name=name;
        this.color=color;
    }

    @Override
    public String toString(){
        return "Name of Vegetable is "+name+" And Color is "+color;
    }
}
class Brinjal extends Vegetable{

    Brinjal(String name,String color){
        this.name=name;
        this.color=color;
    }

    @Override
    public String toString(){
        return "Name of Vegetable is "+name+" And Color is "+color;
    }
}