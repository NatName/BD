--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "Shops";
--
-- Name: Shops; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Shops" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Ukraine.1251' LC_CTYPE = 'Russian_Ukraine.1251';


ALTER DATABASE "Shops" OWNER TO postgres;

\connect "Shops"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Customer" (
    "CustId" integer NOT NULL,
    "CustName" character varying(32) NOT NULL,
    "CustPhone" character varying(17),
    "CustSex" character varying(6)
);


ALTER TABLE public."Customer" OWNER TO postgres;

--
-- Name: Customer_CustId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Customer_CustId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Customer_CustId_seq" OWNER TO postgres;

--
-- Name: Customer_CustId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Customer_CustId_seq" OWNED BY public."Customer"."CustId";


--
-- Name: Item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Item" (
    "ItemId" integer NOT NULL,
    "ItemName" character varying(32) NOT NULL,
    "ItemPrice" money NOT NULL,
    "ItemQuantity" integer NOT NULL,
    "ItemColor" character varying(32),
    "ItemMaterial" character varying(32) NOT NULL
);


ALTER TABLE public."Item" OWNER TO postgres;

--
-- Name: Item_ItemId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Item_ItemId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Item_ItemId_seq" OWNER TO postgres;

--
-- Name: Item_ItemId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Item_ItemId_seq" OWNED BY public."Item"."ItemId";


--
-- Name: Order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order" (
    "OrderId" integer NOT NULL,
    "CustId" integer NOT NULL,
    "ItemId" integer NOT NULL,
    "ShopId" integer NOT NULL,
    "OrderDate" date
);


ALTER TABLE public."Order" OWNER TO postgres;

--
-- Name: Order_OrderId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Order_OrderId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Order_OrderId_seq" OWNER TO postgres;

--
-- Name: Order_OrderId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Order_OrderId_seq" OWNED BY public."Order"."OrderId";


--
-- Name: Shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Shop" (
    "ShopId" integer NOT NULL,
    "ShopName" character varying(32) NOT NULL,
    "ShopStreet" character varying(64) NOT NULL
);


ALTER TABLE public."Shop" OWNER TO postgres;

--
-- Name: Shop_ShopId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Shop_ShopId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Shop_ShopId_seq" OWNER TO postgres;

--
-- Name: Shop_ShopId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Shop_ShopId_seq" OWNED BY public."Shop"."ShopId";


--
-- Name: Customer CustId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer" ALTER COLUMN "CustId" SET DEFAULT nextval('public."Customer_CustId_seq"'::regclass);


--
-- Name: Item ItemId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Item" ALTER COLUMN "ItemId" SET DEFAULT nextval('public."Item_ItemId_seq"'::regclass);


--
-- Name: Order OrderId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order" ALTER COLUMN "OrderId" SET DEFAULT nextval('public."Order_OrderId_seq"'::regclass);


--
-- Name: Shop ShopId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop" ALTER COLUMN "ShopId" SET DEFAULT nextval('public."Shop_ShopId_seq"'::regclass);


--
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Customer" ("CustId", "CustName", "CustPhone", "CustSex") FROM stdin;
\.
COPY public."Customer" ("CustId", "CustName", "CustPhone", "CustSex") FROM '$$PATH$$/2847.dat';

--
-- Data for Name: Item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Item" ("ItemId", "ItemName", "ItemPrice", "ItemQuantity", "ItemColor", "ItemMaterial") FROM stdin;
\.
COPY public."Item" ("ItemId", "ItemName", "ItemPrice", "ItemQuantity", "ItemColor", "ItemMaterial") FROM '$$PATH$$/2849.dat';

--
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order" ("OrderId", "CustId", "ItemId", "ShopId", "OrderDate") FROM stdin;
\.
COPY public."Order" ("OrderId", "CustId", "ItemId", "ShopId", "OrderDate") FROM '$$PATH$$/2851.dat';

--
-- Data for Name: Shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Shop" ("ShopId", "ShopName", "ShopStreet") FROM stdin;
\.
COPY public."Shop" ("ShopId", "ShopName", "ShopStreet") FROM '$$PATH$$/2845.dat';

--
-- Name: Customer_CustId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Customer_CustId_seq"', 4, true);


--
-- Name: Item_ItemId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Item_ItemId_seq"', 4, true);


--
-- Name: Order_OrderId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_OrderId_seq"', 10, true);


--
-- Name: Shop_ShopId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Shop_ShopId_seq"', 3, true);


--
-- Name: Customer CUstIdPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "CUstIdPK" PRIMARY KEY ("CustId");


--
-- Name: Customer CustPhoneU; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "CustPhoneU" UNIQUE ("CustPhone");


--
-- Name: Item Item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_pkey" PRIMARY KEY ("ItemId");


--
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY ("OrderId");


--
-- Name: Shop Shop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop"
    ADD CONSTRAINT "Shop_pkey" PRIMARY KEY ("ShopId");


--
-- Name: fki_CustIdFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_CustIdFK" ON public."Order" USING btree ("CustId");


--
-- Name: fki_ItemIdFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_ItemIdFK" ON public."Order" USING btree ("ItemId");


--
-- Name: fki_ShopIdFK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_ShopIdFK" ON public."Order" USING btree ("ShopId");


--
-- Name: Order CustIdFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "CustIdFK" FOREIGN KEY ("CustId") REFERENCES public."Customer"("CustId");


--
-- Name: Order ItemIdFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "ItemIdFK" FOREIGN KEY ("ItemId") REFERENCES public."Item"("ItemId");


--
-- Name: Order ShopIdFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "ShopIdFK" FOREIGN KEY ("ShopId") REFERENCES public."Shop"("ShopId");


--
-- PostgreSQL database dump complete
--

