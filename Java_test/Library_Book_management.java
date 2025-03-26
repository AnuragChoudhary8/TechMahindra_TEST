import java.util.Scanner;

class Book {
    private String title;
    private String author;
    private double price;

    public Book(String title, String author, double price) {
        this.title = title;
        this.author = author;
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void displayDetails() {
        System.out.println("\nBook Details:");
        System.out.println("Title: " + title);
        System.out.println("Author: " + author);
        System.out.println("Price: $" + price);
    }
}

public class LibraryManagement {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the number of books: ");
        int n = scanner.nextInt();
        scanner.nextLine();

        Book[] books = new Book[n];

        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details for Book " + (i + 1) + ":");
            System.out.print("Title: ");
            String title = scanner.nextLine();
            System.out.print("Author: ");
            String author = scanner.nextLine();
            System.out.print("Price: ");
            double price = scanner.nextDouble();
            scanner.nextLine();
            books[i] = new Book(title, author, price);
        }

        System.out.print("\nEnter book title to search: ");
        String searchTitle = scanner.nextLine();

        boolean found = false;
        for (Book book : books) {
            if (book.getTitle().equalsIgnoreCase(searchTitle)) {
                book.displayDetails();
                found = true;
                break;
            }
        }

        if (!found) {
            System.out.println("Book not found.");
        }

        scanner.close();
    }
}
