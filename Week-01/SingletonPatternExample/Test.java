
public class Test {

    public static void main(String[] args) {

        Logger a = Logger.getInstance();
        Logger b = Logger.getInstance();

        a.log("hello");
        b.log("world");

        System.out.println(a == b);
    }
}
