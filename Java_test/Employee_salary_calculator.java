import java.util.Scanner;

class Employee {
    private String name;
    private int id;
    private double basicSalary;

    public Employee(String name, int id, double basicSalary) {
        this.name = name;
        this.id = id;
        this.basicSalary = basicSalary;
    }

    public double calculateNetSalary() {
        double bonus = 0.10 * basicSalary;
        double tax = 0.05 * basicSalary;
        return basicSalary + bonus - tax;
    }

    public void displayDetails() {
        System.out.println("\nEmployee Details:");
        System.out.println("Name: " + name);
        System.out.println("ID: " + id);
        System.out.println("Basic Salary: $" + basicSalary);
        System.out.println("Net Salary: $" + calculateNetSalary());
    }
}

public class EmployeeSalaryCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter Employee Name: ");
        String name = scanner.nextLine();

        System.out.print("Enter Employee ID: ");
        int id = scanner.nextInt();

        System.out.print("Enter Basic Salary: ");
        double basicSalary = scanner.nextDouble();

        Employee emp = new Employee(name, id, basicSalary);
        emp.displayDetails();

        scanner.close();
    }
}
