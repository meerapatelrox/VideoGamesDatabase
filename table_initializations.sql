-- Table: public."Company"
-- DROP TABLE public."Company";

CREATE TABLE public."Company"
(
    "Name" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "Founder" character varying(100) COLLATE pg_catalog."default",
    "Year Founded" integer,
    "CEO" character varying(50) COLLATE pg_catalog."default",
    "Headquarters" character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT "Company_pkey" PRIMARY KEY ("Name"),
    CONSTRAINT ck_primarykeynotempty CHECK (length("Name"::text) > 0)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Company"
    OWNER to postgres;

GRANT ALL ON TABLE public."Company" TO postgres;

-- Table: public."Customer"
-- DROP TABLE public."Customer";

CREATE TABLE public."Customer"
(
    "Name" character varying(30) COLLATE pg_catalog."default",
    "Address" character varying(50) COLLATE pg_catalog."default",
    "City" character varying(30) COLLATE pg_catalog."default",
    "State" character varying(2) COLLATE pg_catalog."default",
    "ZIP" character varying(5) COLLATE pg_catalog."default",
    "Phone Number" character varying(12) COLLATE pg_catalog."default",
    "CID" character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Customer_pkey" PRIMARY KEY ("CID"),
    CONSTRAINT ck_primarykeynotempty CHECK (length("CID"::text) > 0)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Customer"
    OWNER to postgres;

GRANT ALL ON TABLE public."Customer" TO postgres;

-- Table: public."Games"
-- DROP TABLE public."Games";

CREATE TABLE public."Games"
(
    "GID" character varying(10) COLLATE pg_catalog."default" NOT NULL,
    "Title" character varying(30) COLLATE pg_catalog."default",
    "Publisher" character varying(30) COLLATE pg_catalog."default",
    "Developer" character varying(30) COLLATE pg_catalog."default",
    "Genre" character varying(20) COLLATE pg_catalog."default",
    "Year" integer,
    "System" character varying(30) COLLATE pg_catalog."default",
    "Price" double precision,
    CONSTRAINT "Games_pkey" PRIMARY KEY ("GID"),
    CONSTRAINT ck_primarykeynotempty CHECK (length("GID"::text) > 0)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Games"
    OWNER to postgres;

GRANT ALL ON TABLE public."Games" TO postgres;

-- Table: public."Orders"
-- DROP TABLE public."Orders";

CREATE TABLE public."Orders"
(
    "OID" character varying(10) COLLATE pg_catalog."default" NOT NULL,
    "GID" character varying(10) COLLATE pg_catalog."default" NOT NULL,
    "CID" character varying(10) COLLATE pg_catalog."default" NOT NULL,
    "Sale" double precision,
    "Date" date,
    CONSTRAINT "Orders_pkey" PRIMARY KEY ("OID", "GID", "CID"),
    CONSTRAINT ck_primarykeynotempty CHECK (length("OID"::text) > 0 AND length("GID"::text) > 0 AND length("CID"::text) > 0)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Orders"
    OWNER to postgres;

GRANT ALL ON TABLE public."Orders" TO postgres;