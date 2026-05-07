# CP363 Database Project

This project is a MySQL database design for a supply-chain and order-management system. It models employees, customers, retailers, suppliers, manufacturers, warehouses, products, raw materials, deliveries, inventory, and order relationships.

The repository includes both a consolidated database dump and smaller scripts that separate table creation, data loading, views, and sample queries.

## Project Contents

- `Database.sql` - full database dump with schema, seed data, and views
- `Tables_creating.sql` - table definitions
- `Data_populating.sql` - insert scripts for sample data
- `Views_creating.sql` - view definitions and example selects
- `Queries.sql` - sample query exercises
- `Entity-Relationship Datagram.pdf` - ER diagram
- `Enhanced Entity-Relationship Datagram - MySQL generated.pdf` - enhanced ER diagram

## Database Overview

The schema centers on these main entities:

- Employees and dependants
- Customers and retailers
- Suppliers, manufacturers, and logistic companies
- Warehouses and inventory tracking
- Products, raw materials, and deliveries
- Customer and retail order tables

The database also includes relationship tables that connect warehouses and employees, manufacturers and employees, and the different delivery/order flows.

## Views

The project includes views for reporting and aggregation, including:

- `products_per_warehouse`
- `total_value_per_customer_order`
- `total_value_per_warehouse`
- `v_product_stock_overview`
- `v_products_per_warehouse`

There are no stored procedures or functions in the project files.

## Sample Queries

The `Queries.sql` file contains practice queries such as:

- listing customers and product information
- counting customers
- finding products above average price
- finding customers without orders
- ranking products by price

## How to Use

1. Import `Database.sql` into MySQL if you want the full setup in one step.
2. If you want to build the database manually, run `Tables_creating.sql` first.
3. Load sample rows using `Data_populating.sql`.
4. Create the reporting views from `Views_creating.sql`.
5. Run `Queries.sql` to test the schema with example queries.

## Notes

- The schema uses MySQL-specific syntax such as `AUTO_INCREMENT`, `ENUM`, and `CHECK` constraints.
- Some scripts assume supporting tables such as `inventory_product` and `inventory_rm` already exist in the full schema.
- The project appears to be coursework for CP363 and is organized around a small logistics and retail supply chain model.

## Collaborators

- Cooperate with https://github.com/Win-Htein-Oo
