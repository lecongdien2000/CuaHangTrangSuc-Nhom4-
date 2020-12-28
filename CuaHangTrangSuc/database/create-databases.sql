CREATE DATABASE `NLADB`; 
USE `NLADB`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `USER` (
  `id_user` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
`email` varchar(50) NOT NULL,
`gender` varchar(5),
`birthday` date,
`description` varchar(200),
`accountName` varchar(50),
`admin` bool,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `CATEGORIES` (
 `id_category` varchar(20) NOT NULL,
`name` varchar(20) NOT NULL, 
 PRIMARY KEY (`id_category`)
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `PRODUCT` (
  `id_product` varchar(20) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `picture1` varchar(200),
  `picture2` varchar(200),
  `picture3` varchar(200),
  `price` double NOT NULL,
  `id_category` varchar(20) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id_product`),
  FOREIGN KEY (`id_category`) REFERENCES CATEGORIES(`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `BILL` (
  `id_bill` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id_bill`),
  FOREIGN KEY (`id_user`) REFERENCES USER(`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `CART` (
  `id_user` varchar(20) NOT NULL,
  `id_product` varchar(20) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id_user`, `id_product`),
  FOREIGN KEY (`id_user`) REFERENCES USER(`id_user`),
  FOREIGN KEY (`id_product`) REFERENCES PRODUCT(`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `BILL_DETAIL` (
  `id_bill` varchar(20) NOT NULL,
  `id_product` varchar(20) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id_bill`, `id_product`),
  FOREIGN KEY (`id_bill`) REFERENCES BILL(`id_bill`),
  FOREIGN KEY (`id_product`) REFERENCES PRODUCT(`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `PRODUCT_DETAIL` (
  `id_product` varchar(20)  NOT NULL,
  `trademark` varchar(20) NOT NULL,
  `gender` varchar(5),
  `description` varchar(2000),
  `rate` int NOT NULL,
  `is_diamond` bool,
  `is_gemstone` bool,
  `is_ecz` bool,
  `is_pearl` bool,
  `is_plain` bool,
  `is_child` bool,
  PRIMARY KEY (`id_product`),
  FOREIGN KEY (`id_product`) REFERENCES PRODUCT(`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

