CREATE TABLE "House" (
    "Index" int,
    "Bed" int,
    "Bath" int,
    "AcreLot" decimal,
	"ZipCode" int,
    "HouseSize" int,
    "Price" int,
    CONSTRAINT "pk_House" PRIMARY KEY (
        "Index"
     )
);
SELECT * FROM "House"
CREATE TABLE "Location" (
	"Index" int,
    "City" varchar,
    "State" varchar,
    "ZipCode" int,
    CONSTRAINT "pk_Location" PRIMARY KEY (
        "Index"
     )
);
SELECT * FROM "Location"
CREATE TABLE "Dimension" (
	"Index" int,
    "AcreLot" decimal,
    "HouseSize" int,
    "Price" int,
    CONSTRAINT "pk_Dimension" PRIMARY KEY (
        "Index"
     )
);
SELECT * FROM "Dimension"