
public class Main {

    public static void main(String[] args) {

        // Array for Linear Search
        Product[] products = {
            new Product(105, "Mouse", "Electronics"),
            new Product(101, "Laptop", "Electronics"),
            new Product(104, "Keyboard", "Electronics"),
            new Product(103, "Shoes", "Fashion"),
            new Product(102, "Watch", "Accessories")
        };

        // Sorted Array for Binary Search
        Product[] sortedProducts = {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Watch", "Accessories"),
            new Product(103, "Shoes", "Fashion"),
            new Product(104, "Keyboard", "Electronics"),
            new Product(105, "Mouse", "Electronics")
        };

        int searchId = 104;

        System.out.println("Linear Search");

        Product result1 = SearchOperations.linearSearch(products, searchId);

        if (result1 != null) {
            System.out.println("Found : " + result1); 
        }else {
            System.out.println("Product not found");
        }

        System.out.println();

        System.out.println("Binary Search");

        Product result2 = SearchOperations.binarySearch(sortedProducts, searchId);

        if (result2 != null) {
            System.out.println("Found : " + result2); 
        }else {
            System.out.println("Product not found");
        }
    }
}
