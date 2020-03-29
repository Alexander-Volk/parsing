--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: foo; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.foo (
    name character varying(100),
    age integer,
    email character varying(2000) NOT NULL
);


ALTER TABLE public.foo OWNER TO volk;

--
-- Name: my; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.my (
    name character varying(100),
    age integer,
    weigth integer,
    email character varying(50)
);


ALTER TABLE public.my OWNER TO volk;

--
-- Name: my_one; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.my_one (
    name character varying(100),
    age integer
);


ALTER TABLE public.my_one OWNER TO volk;

--
-- Name: order_items; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.order_items (
    product_no integer NOT NULL,
    order_id integer NOT NULL,
    quantity integer
);


ALTER TABLE public.order_items OWNER TO volk;

--
-- Name: orders_mtm; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.orders_mtm (
    order_id integer NOT NULL,
    shipping_address text,
    telefon character varying
);


ALTER TABLE public.orders_mtm OWNER TO volk;

--
-- Name: people; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.people (
    firstname character varying(100),
    lastname character varying(100),
    age integer,
    comment text,
    weight numeric(4,1)
);


ALTER TABLE public.people OWNER TO volk;

--
-- Name: products; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.products (
    product_no integer NOT NULL,
    brand character varying(255) DEFAULT 'no name'::character varying,
    name text,
    price numeric(9,2)
);


ALTER TABLE public.products OWNER TO volk;

--
-- Name: products_mtm; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.products_mtm (
    product_no integer NOT NULL,
    name text,
    price numeric
);


ALTER TABLE public.products_mtm OWNER TO volk;

--
-- Name: two; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.two (
    name character varying(100),
    email character varying(100),
    age integer,
    comment text,
    weight numeric(4,2)
);


ALTER TABLE public.two OWNER TO volk;

--
-- Name: users; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.users (
    login character varying(20),
    email character varying(10),
    age integer
);


ALTER TABLE public.users OWNER TO volk;

--
-- Name: usersone; Type: TABLE; Schema: public; Owner: volk
--

CREATE TABLE public.usersone (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    comment text DEFAULT 'no comment'::text,
    age integer,
    CONSTRAINT usersone_age_check CHECK (((age > 0) AND (age < 100)))
);


ALTER TABLE public.usersone OWNER TO volk;

--
-- Name: usersone_id_seq; Type: SEQUENCE; Schema: public; Owner: volk
--

CREATE SEQUENCE public.usersone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usersone_id_seq OWNER TO volk;

--
-- Name: usersone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: volk
--

ALTER SEQUENCE public.usersone_id_seq OWNED BY public.usersone.id;


--
-- Name: usersone id; Type: DEFAULT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.usersone ALTER COLUMN id SET DEFAULT nextval('public.usersone_id_seq'::regclass);


--
-- Data for Name: foo; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.foo (name, age, email) FROM stdin;
\.


--
-- Data for Name: my; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.my (name, age, weigth, email) FROM stdin;
i	\N	\N	@ru
i	\N	\N	@rus
\.


--
-- Data for Name: my_one; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.my_one (name, age) FROM stdin;
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.order_items (product_no, order_id, quantity) FROM stdin;
2	123	3
1	123	10
\.


--
-- Data for Name: orders_mtm; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.orders_mtm (order_id, shipping_address, telefon) FROM stdin;
123	москва	77-66-55
234	Минск	33-44-22
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.people (firstname, lastname, age, comment, weight) FROM stdin;
sergey	bubko	23	blablabla	80.8
andrey	li	24	bsdflgdsf	64.8
sergey	bubko	23	blablabla	80.8
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.products (product_no, brand, name, price) FROM stdin;
1500510	RITTAL	KL Клеммн. коробка RAL7035 150x150x120mm	26.21
1501510	RITTAL	KL Клеммн. коробка RAL7035 300x150x120mm	33.65
1502510	RITTAL	KL Клеммн. коробка RAL7035 200x200x120mm	29.40
1503510	RITTAL	KL Клеммн. коробка RAL7035 300x200x120mm	33.04
1504510	RITTAL	KL Клеммн. коробка RAL7035 400x200x120mm	36.87
1505510	RITTAL	KL Клеммн. коробка RAL7035 500x200x120mm	46.50
1506510		KL Клеммн. коробка RAL7035 600x200x120mm	50.54
1507510		KL Клеммн. коробка RAL7035 300x300x120mm	39.28
1508510	SIEMENS	KL Клеммн. коробка RAL7035 400x300x120mm	43.54
1509510	SIEMENS	KL Клеммн. коробка RAL7035 500x300x120mm	54.93
1510510	SIEMENS	KL Клеммн. коробка RAL7035 600x300x120mm	61.24
1511510	SIEMENS	KL Клеммн. коробка RAL7035 400x400x120mm	58.81
1512510	SIEMENS	KL Клеммн. коробка RAL7035 600x400x120mm	69.74
\.


--
-- Data for Name: products_mtm; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.products_mtm (product_no, name, price) FROM stdin;
1	зубная паста	33
2	мыло десткое	100
\.


--
-- Data for Name: two; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.two (name, email, age, comment, weight) FROM stdin;
yriy	u@mail	23	blablabla	68.79
sasha	volk@gamil.com	20	why?	67.00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.users (login, email, age) FROM stdin;
Volk	volk@gm	20
Li	li@knr.com	15
vasy	vs@mail	12
lili	lili@	35
\.


--
-- Data for Name: usersone; Type: TABLE DATA; Schema: public; Owner: volk
--

COPY public.usersone (id, name, email, comment, age) FROM stdin;
\.


--
-- Name: usersone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: volk
--

SELECT pg_catalog.setval('public.usersone_id_seq', 1, false);


--
-- Name: foo foo_pkey; Type: CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.foo
    ADD CONSTRAINT foo_pkey PRIMARY KEY (email);


--
-- Name: my my_email_key; Type: CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.my
    ADD CONSTRAINT my_email_key UNIQUE (email);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (product_no, order_id);


--
-- Name: orders_mtm orders_mtm_pkey; Type: CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.orders_mtm
    ADD CONSTRAINT orders_mtm_pkey PRIMARY KEY (order_id);


--
-- Name: products_mtm products_mtm_pkey; Type: CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.products_mtm
    ADD CONSTRAINT products_mtm_pkey PRIMARY KEY (product_no);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_no);


--
-- Name: usersone usersone_email_key; Type: CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.usersone
    ADD CONSTRAINT usersone_email_key UNIQUE (email);


--
-- Name: usersone usersone_pkey; Type: CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.usersone
    ADD CONSTRAINT usersone_pkey PRIMARY KEY (id);


--
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders_mtm(order_id);


--
-- Name: order_items order_items_product_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: volk
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_no_fkey FOREIGN KEY (product_no) REFERENCES public.products_mtm(product_no);


--
-- PostgreSQL database dump complete
--

