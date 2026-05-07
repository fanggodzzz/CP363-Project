CREATE TABLE employees (
	emp_name VARCHAR(50) NOT NULL,
	emp_id INT AUTO_INCREMENT PRIMARY KEY,
	emp_dob DATE NOT NULL,
	emp_phone_number VARCHAR(15) NOT NULL,
	emp_contact_email VARCHAR(100) NOT NULL,
	emp_address VARCHAR(150) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE customers (
	cus_name VARCHAR(50) NOT NULL,
    cus_id INT AUTO_INCREMENT PRIMARY KEY,
    cus_street VARCHAR(20) NOT NULL,
    cus_city VARCHAR(20) NOT NULL,
    cus_province VARCHAR(10) NOT NULL,
    cus_country VARCHAR(15) NOT NULL,
    cus_postal_code VARCHAR(10) NOT NULL,
    cus_phone_number VARCHAR(15) NOT NULL,
    cus_email VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE logistic_companies (
	logi_name VARCHAR(50) NOT NULL,
    logi_id INT AUTO_INCREMENT PRIMARY KEY,
    logi_street VARCHAR(20) NOT NULL,
    logi_city VARCHAR(20) NOT NULL,
    logi_province VARCHAR(10) NOT NULL,
    logi_country VARCHAR(15) NOT NULL,
    logi_postal_code VARCHAR(10) NOT NULL,
    logi_contact_name VARCHAR(50) NOT NULL,
    logi_contact_phone_number VARCHAR(15) NOT NULL,
	logi_contact_email VARCHAR(100) NOT NULL,
    logi_tax VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE retailers (
	retail_name VARCHAR(50) NOT NULL,
    retail_id INT AUTO_INCREMENT PRIMARY KEY,
    retail_street VARCHAR(20) NOT NULL,
    retail_city VARCHAR(20) NOT NULL,
    retail_province VARCHAR(10) NOT NULL,
    retail_country VARCHAR(15) NOT NULL,
    retail_postal_code VARCHAR(10) NOT NULL,
    retail_contact_name VARCHAR(50) NOT NULL,
    retail_contact_phone_number VARCHAR(15) NOT NULL,
	retail_contact_email VARCHAR(100) NOT NULL,
    retail_tax VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE warehouses (
	ware_name VARCHAR(50) NOT NULL,
    ware_id INT AUTO_INCREMENT PRIMARY KEY,
    ware_street VARCHAR(20) NOT NULL,
    ware_city VARCHAR(20) NOT NULL,
    ware_province VARCHAR(10) NOT NULL,
    ware_country VARCHAR(15) NOT NULL,
    ware_postal_code VARCHAR(10) NOT NULL,
    ware_contact_name VARCHAR(50) NOT NULL,
    ware_contact_phone_number VARCHAR(15) NOT NULL,
	ware_contact_email VARCHAR(100) NOT NULL,
    ware_tax VARCHAR(20) NOT NULL,
    ware_manager_id INT NOT NULL,
    CONSTRAINT ware_manager_id
		FOREIGN KEY (ware_manager_id) REFERENCES employees(emp_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE manufacturers (
	manu_name VARCHAR(50) NOT NULL,
    manu_id INT AUTO_INCREMENT PRIMARY KEY,
    manu_street VARCHAR(20) NOT NULL,
    manu_city VARCHAR(20) NOT NULL,
    manu_province VARCHAR(10) NOT NULL,
    manu_country VARCHAR(15) NOT NULL,
    manu_postal_code VARCHAR(10) NOT NULL,
    manu_contact_name VARCHAR(50) NOT NULL,
    manu_contact_phone_number VARCHAR(15) NOT NULL,
	manu_contact_email VARCHAR(100) NOT NULL,
    manu_tax VARCHAR(20) NOT NULL,
    manu_manager_id INT NOT NULL,
    CONSTRAINT manu_manager_id
		FOREIGN KEY (manu_manager_id) REFERENCES employees(emp_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE suppliers (
	sup_name VARCHAR(50) NOT NULL,
    sup_id INT AUTO_INCREMENT PRIMARY KEY,
    sup_street VARCHAR(20) NOT NULL,
    sup_city VARCHAR(20) NOT NULL,
    sup_province VARCHAR(10) NOT NULL,
    sup_country VARCHAR(15) NOT NULL,
    sup_postal_code VARCHAR(10) NOT NULL,
    sup_contact_name VARCHAR(50) NOT NULL,
    sup_contact_phone_number VARCHAR(15) NOT NULL,
	sup_contact_email VARCHAR(100) NOT NULL,
    sup_tax VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE products (
	prod_name VARCHAR(50) NOT NULL,
    prod_id INT AUTO_INCREMENT PRIMARY KEY,
    prod_price FLOAT4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE raw_materials (
	raw_name VARCHAR(50) NOT NULL,
    raw_id INT AUTO_INCREMENT PRIMARY KEY,
    raw_price FLOAT4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE dependants (
	dep_name VARCHAR(50) NOT NULL,
	dep_dob DATE NOT NULL,
	dep_emp_id INT NOT NULL,
	PRIMARY KEY (dep_emp_id, dep_name),
	CONSTRAINT dep_emp_id
		FOREIGN KEY (dep_emp_id) REFERENCES employees(emp_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE deliveries (
	deli_id INT AUTO_INCREMENT PRIMARY KEY,
	deli_logi_id INT NOT NULL,
    deli_from_street VARCHAR(20) NOT NULL,
    deli_from_city VARCHAR(20) NOT NULL,
    deli_from_province VARCHAR(10) NOT NULL,
    deli_from_country VARCHAR(15) NOT NULL,
    deli_from_postal_code VARCHAR(10) NOT NULL,
    deli_to_street VARCHAR(20) NOT NULL,
    deli_to_city VARCHAR(20) NOT NULL,
    deli_to_province VARCHAR(10) NOT NULL,
    deli_to_country VARCHAR(15) NOT NULL,
    deli_to_postal_code VARCHAR(10) NOT NULL,
	deli_send_date DATE NOT NULL,
	deli_status ENUM("Arrived", "Arriving") NOT NULL,
	deli_arrived_date DATE,
	CONSTRAINT arriveornot CHECK (
		(deli_status = 'Arrived' AND deli_arrived_date IS NOT NULL) OR
		(deli_status = 'Arriving' AND deli_arrived_date IS NULL)
		)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE cus_order (
	cus_order_id INT AUTO_INCREMENT,
    cus_order_cus_id INT NOT NULL,
	cus_order_deli_id INT NOT NULL,
    cus_order_prod INT NOT NULL,
    cus_order_ware INT NOT NULL,
    PRIMARY KEY (cus_order_id, cus_order_prod),
	CONSTRAINT cus_order_deli_id
		FOREIGN KEY (cus_order_deli_id) REFERENCES deliveries(deli_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT cus_order_prod
		FOREIGN KEY (cus_order_prod) REFERENCES products(prod_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT cus_order_cus_id
		FOREIGN KEY (cus_order_cus_id) REFERENCES customers(cus_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT cus_order_ware
		FOREIGN KEY (cus_order_ware) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE retail_order (
	retail_order_id INT AUTO_INCREMENT,
    retail_order_retail_id INT NOT NULL,
	retail_order_deli_id INT NOT NULL,
	retail_order_prod INT NOT NULL,
    retail_order_ware INT NOT NULL,
    PRIMARY KEY (retail_order_id, retail_order_prod),
	CONSTRAINT retail_order_deli_id
		FOREIGN KEY (retail_order_deli_id) REFERENCES deliveries(deli_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT retail_order_prod
		FOREIGN KEY (retail_order_prod) REFERENCES products(prod_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT retail_order_retail_id
		FOREIGN KEY (retail_order_retail_id) REFERENCES retailers(retail_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT retail_order_ware
		FOREIGN KEY (retail_order_ware) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE manufacturer_deliver_product (
	mdp_deli_id INT AUTO_INCREMENT,
    mdp_deli_manu_id INT NOT NULL,
	mdp_order_deli_id INT NOT NULL,
	mdp_order_prod INT NOT NULL,
    mdp_order_ware INT NOT NULL,
    PRIMARY KEY (mdp_deli_id, mdp_order_prod),
	CONSTRAINT mdp_order_deli_id
		FOREIGN KEY (mdp_order_deli_id) REFERENCES deliveries(deli_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT mdp_order_prod
		FOREIGN KEY (mdp_order_prod) REFERENCES products(prod_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT mdp_deli_manu_id 
		FOREIGN KEY (mdp_deli_manu_id) REFERENCES manufacturers(manu_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT mdp_order_ware
		FOREIGN KEY (mdp_order_ware) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE raw_material_receive (
	rmr_deli_id INT AUTO_INCREMENT,
    rmr_deli_manu_id INT NOT NULL,
	rmr_order_deli_id INT NOT NULL,
	rmr_order_rm INT NOT NULL,
    rmr_order_ware INT NOT NULL,
    PRIMARY KEY (rmr_deli_id, rmr_order_rm),
	CONSTRAINT rmr_order_deli_id
		FOREIGN KEY (rmr_order_deli_id) REFERENCES deliveries(deli_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT rmr_order_rm
		FOREIGN KEY (rmr_order_rm) REFERENCES raw_materials(raw_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT rmr_deli_manu_id 
		FOREIGN KEY (rmr_deli_manu_id) REFERENCES manufacturers(manu_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT rmr_order_ware
		FOREIGN KEY (rmr_order_ware) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE supplier_supply_product (
	ssp_deli_id INT AUTO_INCREMENT,
    ssp_deli_sup_id INT NOT NULL,
	ssp_order_deli_id INT NOT NULL,
	ssp_order_prod INT NOT NULL,
    ssp_order_ware INT NOT NULL,
    PRIMARY KEY (ssp_deli_id, ssp_order_prod),
	CONSTRAINT ssp_order_deli_id
		FOREIGN KEY (ssp_order_deli_id) REFERENCES deliveries(deli_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT ssp_order_prod
		FOREIGN KEY (ssp_order_prod) REFERENCES products(prod_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT ssp_deli_sup_id 
		FOREIGN KEY (ssp_deli_sup_id) REFERENCES suppliers(sup_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT ssp_order_ware
		FOREIGN KEY (ssp_order_ware) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE supplier_supply_raw_material (
	ssrm_deli_id INT AUTO_INCREMENT,
    ssrm_deli_sup_id INT NOT NULL,
	ssrm_order_deli_id INT NOT NULL,
	ssrm_order_rm INT NOT NULL,
    ssrm_order_ware INT NOT NULL,
    PRIMARY KEY (ssrm_deli_id, ssrm_order_rm),
	CONSTRAINT ssrm_order_deli_id
		FOREIGN KEY (ssrm_order_deli_id) REFERENCES deliveries(deli_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT ssrm_order_rm
		FOREIGN KEY (ssrm_order_rm) REFERENCES raw_materials(raw_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT ssrm_deli_sup_id 
		FOREIGN KEY (ssrm_deli_sup_id) REFERENCES suppliers(sup_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT ssrm_order_ware
		FOREIGN KEY (ssrm_order_ware) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE inventory_product (
	inv_prod_ware_id INT NOT NULL,
    inv_prod_id INT,
	inv_quantity FLOAT NOT NULL,
    inv_unit ENUM ("KG", "METERCUBE", "NUMBER"),
    PRIMARY KEY (inv_prod_ware_id, inv_prod_id),
    CONSTRAINT inv_prod_id
		FOREIGN KEY (inv_prod_id) REFERENCES products(prod_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT inv_prod_ware_id
		FOREIGN KEY (inv_prod_ware_id) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE inventory_rm (
	inv_rm_ware_id INT NOT NULL,
    inv_rm_id INT,
	inv_quantity FLOAT NOT NULL,
    inv_unit ENUM ("KG", "METERCUBE", "NUMBER"),
    PRIMARY KEY (inv_rm_ware_id, inv_rm_id),
    CONSTRAINT inv_rm_id
		FOREIGN KEY (inv_rm_id) REFERENCES raw_materials(raw_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT inv_rm_ware_id
		FOREIGN KEY (inv_rm_ware_id) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE warehouse_emp (
	wk_ware_id INT NOT NULL,
    wk_ware_emp_id INT NOT NULL,
    PRIMARY KEY (wk_ware_id, wk_ware_emp_id),
    CONSTRAINT wk_ware_id
		FOREIGN KEY (wk_ware_id) REFERENCES warehouses(ware_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT wk_ware_emp_id
		FOREIGN KEY (wk_ware_emp_id) REFERENCES employees(emp_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE manufacturer_emp (
	wk_manu_id INT NOT NULL,
    wk_manu_emp_id INT NOT NULL,
    PRIMARY KEY (wk_manu_id, wk_manu_emp_id),
    CONSTRAINT wk_manu_id
		FOREIGN KEY (wk_manu_id) REFERENCES manufacturers(manu_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT wk_manu_emp_id
		FOREIGN KEY (wk_manu_emp_id) REFERENCES employees(emp_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





