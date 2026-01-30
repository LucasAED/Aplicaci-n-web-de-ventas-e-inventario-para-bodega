--
-- PostgreSQL database dump
--

\restrict zgffhVaQqyyEyeVhDf3aVRvy7jgbaQIOewVtLcEBqIolYkgqRgeesKrvMFkcExR

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2026-01-30 10:43:08

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16390)
-- Name: Productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Productos" (
    "IdProducto" integer NOT NULL,
    "Nombre" character varying(150) NOT NULL,
    "Categoria" character varying(100) NOT NULL,
    "Precio" numeric(10,2) NOT NULL,
    "ImagenUrl" character varying(255) NOT NULL
);


ALTER TABLE public."Productos" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16389)
-- Name: Productos_IdProducto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Productos_IdProducto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Productos_IdProducto_seq" OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 219
-- Name: Productos_IdProducto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Productos_IdProducto_seq" OWNED BY public."Productos"."IdProducto";


--
-- TOC entry 4755 (class 2604 OID 16393)
-- Name: Productos IdProducto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Productos" ALTER COLUMN "IdProducto" SET DEFAULT nextval('public."Productos_IdProducto_seq"'::regclass);


--
-- TOC entry 4906 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: Productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Productos" VALUES (1, 'Ace', 'Productos de limpieza', 7.50, '/images/ace.jpg');
INSERT INTO public."Productos" VALUES (2, 'Ariel', 'Productos de limpieza', 8.90, '/images/ariel.jpg');
INSERT INTO public."Productos" VALUES (3, 'Ayud¡n', 'Productos de limpieza', 6.20, '/images/ayudin.jpg');
INSERT INTO public."Productos" VALUES (4, 'Bol¡var', 'Productos de limpieza', 5.80, '/images/bolivar.jpg');
INSERT INTO public."Productos" VALUES (5, 'Cloro', 'Productos de limpieza', 3.00, '/images/cloro.jpg');
INSERT INTO public."Productos" VALUES (6, 'Esponja', 'Productos de limpieza', 2.50, '/images/esponja.jpg');
INSERT INTO public."Productos" VALUES (7, 'Poett', 'Productos de limpieza', 4.50, '/images/poett.jpg');
INSERT INTO public."Productos" VALUES (8, 'Vidrios Limpieza', 'Productos de limpieza', 3.80, '/images/vidrios.jpg');
INSERT INTO public."Productos" VALUES (9, 'Ajo', 'Verduras', 1.00, '/images/ajo.jpg');
INSERT INTO public."Productos" VALUES (10, 'Calabaza', 'Verduras', 1.80, '/images/calabaza.jpg');
INSERT INTO public."Productos" VALUES (11, 'Camote', 'Verduras', 1.50, '/images/camote.jpg');
INSERT INTO public."Productos" VALUES (12, 'Cebolla', 'Verduras', 1.20, '/images/cebolla.jpg');
INSERT INTO public."Productos" VALUES (13, 'Lechuga', 'Verduras', 1.50, '/images/lechuga.jpg');
INSERT INTO public."Productos" VALUES (14, 'Papa', 'Verduras', 1.00, '/images/papa.jpg');
INSERT INTO public."Productos" VALUES (15, 'Tomate', 'Verduras', 0.90, '/images/tomate.jpg');
INSERT INTO public."Productos" VALUES (16, 'Zanahoria', 'Verduras', 1.00, '/images/zanahoria.jpg');
INSERT INTO public."Productos" VALUES (17, 'Mandarina', 'Frutas', 0.80, '/images/mandarina.jpg');
INSERT INTO public."Productos" VALUES (18, 'Manzana', 'Frutas', 0.80, '/images/manzana.jpg');
INSERT INTO public."Productos" VALUES (19, 'Mel¢n', 'Frutas', 2.50, '/images/melon.jpg');
INSERT INTO public."Productos" VALUES (20, 'Papaya', 'Frutas', 3.00, '/images/papaya.jpg');
INSERT INTO public."Productos" VALUES (21, 'Pera', 'Frutas', 1.20, '/images/pera.jpg');
INSERT INTO public."Productos" VALUES (22, 'Pl tano', 'Frutas', 0.70, '/images/platano.jpg');
INSERT INTO public."Productos" VALUES (23, 'Sand¡a', 'Frutas', 4.00, '/images/sandia.jpg');
INSERT INTO public."Productos" VALUES (24, 'Uvas', 'Frutas', 2.80, '/images/uvas.jpg');
INSERT INTO public."Productos" VALUES (25, 'Beso de Moza', 'Golosinas', 1.50, '/images/besodemoza.jpg');
INSERT INTO public."Productos" VALUES (26, 'Casino', 'Golosinas', 0.80, '/images/casino.jpg');
INSERT INTO public."Productos" VALUES (27, 'Chocman', 'Golosinas', 1.20, '/images/chocman.jpg');
INSERT INTO public."Productos" VALUES (28, 'Choco Donuts', 'Golosinas', 2.50, '/images/chocodonuts.jpg');
INSERT INTO public."Productos" VALUES (29, 'Chocolate Princesa', 'Golosinas', 1.80, '/images/chocolateprincesa.jpg');
INSERT INTO public."Productos" VALUES (30, 'Do¤a Pepa', 'Golosinas', 1.00, '/images/donapepa.jpg');
INSERT INTO public."Productos" VALUES (31, 'Menta', 'Golosinas', 0.50, '/images/menta.jpg');
INSERT INTO public."Productos" VALUES (32, 'Sublime', 'Golosinas', 2.50, '/images/sublime.jpg');
INSERT INTO public."Productos" VALUES (33, 'Cheese Tris', 'Snacks', 1.50, '/images/cheesetris.jpg');
INSERT INTO public."Productos" VALUES (34, 'Chicharr¢n', 'Snacks', 2.50, '/images/chicharron.jpg');
INSERT INTO public."Productos" VALUES (35, 'Chizitos', 'Snacks', 1.20, '/images/chizitos.jpg');
INSERT INTO public."Productos" VALUES (36, 'Cuates', 'Snacks', 1.80, '/images/cuates.jpg');
INSERT INTO public."Productos" VALUES (37, 'Doritos', 'Snacks', 2.00, '/images/doritos.jpg');
INSERT INTO public."Productos" VALUES (38, 'Inka Chips', 'Snacks', 2.50, '/images/inkachips.jpg');
INSERT INTO public."Productos" VALUES (39, 'Piqueo', 'Snacks', 2.80, '/images/piqueo.jpg');
INSERT INTO public."Productos" VALUES (40, 'Papas Lays', 'Snacks', 3.50, '/images/papaslays.jpg');


--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 219
-- Name: Productos_IdProducto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Productos_IdProducto_seq"', 43, true);


--
-- TOC entry 4757 (class 2606 OID 16402)
-- Name: Productos Productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_pkey" PRIMARY KEY ("IdProducto");


-- Completed on 2026-01-30 10:43:09

--
-- PostgreSQL database dump complete
--

\unrestrict zgffhVaQqyyEyeVhDf3aVRvy7jgbaQIOewVtLcEBqIolYkgqRgeesKrvMFkcExR

