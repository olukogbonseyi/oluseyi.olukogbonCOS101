--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    email text NOT NULL,
    mobile bigint NOT NULL,
    eid integer
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: dataplan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataplan (
    id integer NOT NULL,
    data_size text NOT NULL,
    data_duration text NOT NULL,
    data_price text
);


ALTER TABLE public.dataplan OWNER TO postgres;

--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    id integer NOT NULL,
    dno integer NOT NULL,
    name text NOT NULL,
    location text NOT NULL,
    pno integer
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    pno integer NOT NULL,
    pname text NOT NULL,
    pduration text NOT NULL,
    project_managerid integer
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    staff_name text NOT NULL,
    dno integer NOT NULL,
    staff_sal real,
    age integer NOT NULL,
    mobile character varying(15) NOT NULL
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (id, name, age, email, mobile, eid) FROM stdin;
110	Musta Karim	35	m_karim@gmail.com	8055089912	102
111	Lilian Jaiya	43	i_jaiye@gmail.com	8055023012	100
112	Arthur Musa	50	a_musa@gmail.com	8055024512	107
113	Philip Akonjo	41	p_akonjo@gmail.com	8055024423	100
114	Marylene	33	m_mapa@gmail.com	8050391423	120
115	Oghene Agor	50	o_agor@gmail.com	8048291423	117
116	Adams Bree	33	a_bree@gmail.com	8028991423	102
117	Okafor Mathias	33	o_mathias@gmail.com	8028991478	120
118	Samson Adeleke	65	s_adeleke@gmail.com	8022291478	117
119	Lawal Tamire	35	l_tamire@gmail.com	8022292578	107
120	James Job	35	j_job@gmail.com	8022012578	100
121	Mathew Jakande	21	m_jakande@gmail.com	8022012521	120
122	Jimila Adegboye	20	j_adegboye@gmail.com	8029012578	107
\.


--
-- Data for Name: dataplan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataplan (id, data_size, data_duration, data_price) FROM stdin;
1	350mb	2days	200naira
2	1.8gb	14days	500naira
3	3.9gb	30days	1000naira
4	7.5gb	30days	1500naira
5	9.2gb	30days	2000naira
6	10.8gb	30days	2500naira
7	14gb	30days	3000naira
8	18gb	30days	4000naira
9	24gb	30days	5000naira
10	29.9gb	30days	8000naira
11	50gb	30days	10000naira
\.


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (id, dno, name, location, pno) FROM stdin;
108	1	Administration	Ikeja	44
101	2	Account	Egbeda	11
100	3	Packaging	Ajah	44
120	4	Research	V.I	33
97	5	Account	Magodo	22
122	6	Operations	Mile 2	44
107	7	Packaging	Ketu	55
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (pno, pname, pduration, project_managerid) FROM stdin;
11	A	9 Months	102
22	B	14 Months	97
33	C	16 Months	120
44	D	25 Months	108
55	E	9 Months	107
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (staff_id, staff_name, dno, staff_sal, age, mobile) FROM stdin;
100	Mustapha Ali	3	175000	32	8027392772
107	Alokwe Martin	7	380000	48	7093728294
97	Dankade Aminat	5	550000	40	9019928382
108	Josiah Joshua	1	120000	30	8018371784
102	Makinde Mary	2	450000	55	9017392742
120	Adeleke Jane	4	200000	38	7019375467
122	Osahon Mark	6	320000	44	8012839817
117	Suleman Ajayi	3	800000	50	7089345129
104	Kuti Lawal	1	750000	35	9129857612
\.


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: dataplan dataplan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataplan
    ADD CONSTRAINT dataplan_pkey PRIMARY KEY (id);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- Name: staff employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT employees_pkey PRIMARY KEY (staff_id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (pno);


--
-- PostgreSQL database dump complete
--

