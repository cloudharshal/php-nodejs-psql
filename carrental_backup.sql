--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)

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

SET default_table_access_method = heap;

--
-- Name: Bookings; Type: TABLE; Schema: public; Owner: carrentaluser
--

CREATE TABLE public."Bookings" (
    id integer NOT NULL,
    "userId" integer,
    "carId" integer,
    "startDate" timestamp with time zone NOT NULL,
    "endDate" timestamp with time zone NOT NULL
);


ALTER TABLE public."Bookings" OWNER TO carrentaluser;

--
-- Name: Bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: carrentaluser
--

CREATE SEQUENCE public."Bookings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Bookings_id_seq" OWNER TO carrentaluser;

--
-- Name: Bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carrentaluser
--

ALTER SEQUENCE public."Bookings_id_seq" OWNED BY public."Bookings".id;


--
-- Name: Cars; Type: TABLE; Schema: public; Owner: carrentaluser
--

CREATE TABLE public."Cars" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    model character varying(255) NOT NULL,
    "pricePerDay" double precision NOT NULL,
    "imageUrl" character varying(255) NOT NULL
);


ALTER TABLE public."Cars" OWNER TO carrentaluser;

--
-- Name: Cars_id_seq; Type: SEQUENCE; Schema: public; Owner: carrentaluser
--

CREATE SEQUENCE public."Cars_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Cars_id_seq" OWNER TO carrentaluser;

--
-- Name: Cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carrentaluser
--

ALTER SEQUENCE public."Cars_id_seq" OWNED BY public."Cars".id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: carrentaluser
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public."Users" OWNER TO carrentaluser;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: carrentaluser
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Users_id_seq" OWNER TO carrentaluser;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carrentaluser
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: bookings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bookings (
    id integer NOT NULL,
    user_id integer,
    car_id integer,
    start_date date NOT NULL,
    end_date date NOT NULL
);


ALTER TABLE public.bookings OWNER TO postgres;

--
-- Name: bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bookings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bookings_id_seq OWNER TO postgres;

--
-- Name: bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bookings_id_seq OWNED BY public.bookings.id;


--
-- Name: cars; Type: TABLE; Schema: public; Owner: carrentaluser
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    "pricePerDay" numeric(10,2) NOT NULL,
    "imageUrl" text NOT NULL
);


ALTER TABLE public.cars OWNER TO carrentaluser;

--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: carrentaluser
--

CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cars_id_seq OWNER TO carrentaluser;

--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carrentaluser
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: Bookings id; Type: DEFAULT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Bookings" ALTER COLUMN id SET DEFAULT nextval('public."Bookings_id_seq"'::regclass);


--
-- Name: Cars id; Type: DEFAULT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Cars" ALTER COLUMN id SET DEFAULT nextval('public."Cars_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Name: bookings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public.bookings_id_seq'::regclass);


--
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: Bookings; Type: TABLE DATA; Schema: public; Owner: carrentaluser
--

COPY public."Bookings" (id, "userId", "carId", "startDate", "endDate") FROM stdin;
\.


--
-- Data for Name: Cars; Type: TABLE DATA; Schema: public; Owner: carrentaluser
--

COPY public."Cars" (id, name, model, "pricePerDay", "imageUrl") FROM stdin;
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: carrentaluser
--

COPY public."Users" (id, name, email, password) FROM stdin;
1	John Doe	john@example.com	$2b$10$D4toGk3n4J6Na22KmAio1O56trMcq0.knEFDh5eFPGjjZEAR98iea
\.


--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bookings (id, user_id, car_id, start_date, end_date) FROM stdin;
1	1	2	2024-03-01	2024-03-05
2	2	3	2024-03-10	2024-03-15
\.


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: carrentaluser
--

COPY public.cars (id, name, model, "pricePerDay", "imageUrl") FROM stdin;
1	Toyota Corolla	2022	50.00	https://example.com/toyota-corolla.jpg
2	Honda Civic	2023	60.00	https://example.com/honda-civic.jpg
3	Ford Mustang	2021	100.00	https://example.com/ford-mustang.jpg
4	Toyota Corolla	2022	50.00	https://example.com/toyota-corolla.jpg
5	Honda Civic	2023	60.00	https://example.com/honda-civic.jpg
6	Ford Mustang	2021	100.00	https://example.com/ford-mustang.jpg
7	Toyota Corolla	2022	50.00	https://example.com/toyota.jpg
8	Honda Civic	2023	60.00	https://example.com/honda.jpg
9	Ford Mustang	2021	100.00	https://example.com/mustang.jpg
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password) FROM stdin;
1	John Doe	john@example.com	$2a$10$Tz3U/YR0v9e3N8fJvPj8F.WwwJ3oeZcPuGfjJD2BlyS/j6Rgux1Gy
2	Jane Smith	jane@example.com	$2a$10$Tz3U/YR0v9e3N8fJvPj8F.WwwJ3oeZcPuGfjJD2BlyS/j6Rgux1Gy
\.


--
-- Name: Bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: carrentaluser
--

SELECT pg_catalog.setval('public."Bookings_id_seq"', 1, false);


--
-- Name: Cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: carrentaluser
--

SELECT pg_catalog.setval('public."Cars_id_seq"', 1, false);


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: carrentaluser
--

SELECT pg_catalog.setval('public."Users_id_seq"', 1, true);


--
-- Name: bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bookings_id_seq', 2, true);


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: carrentaluser
--

SELECT pg_catalog.setval('public.cars_id_seq', 9, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: Bookings Bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Bookings"
    ADD CONSTRAINT "Bookings_pkey" PRIMARY KEY (id);


--
-- Name: Cars Cars_pkey; Type: CONSTRAINT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Cars"
    ADD CONSTRAINT "Cars_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: Bookings Bookings_carId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Bookings"
    ADD CONSTRAINT "Bookings_carId_fkey" FOREIGN KEY ("carId") REFERENCES public."Cars"(id) ON UPDATE CASCADE;


--
-- Name: Bookings Bookings_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: carrentaluser
--

ALTER TABLE ONLY public."Bookings"
    ADD CONSTRAINT "Bookings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE;


--
-- Name: bookings bookings_car_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.cars(id) ON DELETE CASCADE;


--
-- Name: bookings bookings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO carrentaluser;


--
-- Name: TABLE bookings; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.bookings TO carrentaluser;


--
-- Name: SEQUENCE bookings_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.bookings_id_seq TO carrentaluser;


--
-- Name: TABLE users; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.users TO carrentaluser;


--
-- Name: SEQUENCE users_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.users_id_seq TO carrentaluser;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO carrentaluser;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO carrentaluser;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO carrentaluser;


--
-- PostgreSQL database dump complete
--

