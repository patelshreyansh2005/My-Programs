class prog_9_2{
    public static void main(String[] args) {
        EventDemo ed = new EventDemo();
        ed. performEvent();
        ed.mouseClicked();
        ed.mousePressed();
        ed.mouseReleased();
        ed.mouseMoved();
        ed.mouseDragged();
        ed.keyPressed();
        ed.keyReleased();
    }
}

interface EventListener{
    void performEvent();
}

interface MouseListener{
    void mouseClicked();
    void mousePressed();
    void mouseReleased();
    void mouseMoved();
    void mouseDragged();
}

interface KeyListener extends EventListener{
    void keyPressed();
    void keyReleased();
}

class EventDemo implements MouseListener,KeyListener{

    @Override
    public void performEvent() {
        System.out.println("-----Mouse Clicked-----");
    }

    @Override
    public void keyPressed() {
        System.out.println("-----Mouse Clicked-----");
    }

    @Override
    public void keyReleased() {
        System.out.println("-----Mouse Clicked-----");
    }

    @Override
    public void mouseClicked() {
        System.out.println("-----Mouse Clicked-----");
    }

    @Override
    public void mousePressed() {
        System.out.println("-----Mouse Clicked-----");
    }

    @Override
    public void mouseReleased() {
        System.out.println("-----Mouse Clicked-----");
    }

    @Override
    public void mouseMoved() {
        System.out.println("-----Mouse Clicked-----");
    }

    @Override
    public void mouseDragged() {
        System.out.println("-----Mouse Clicked-----");
    }
}
