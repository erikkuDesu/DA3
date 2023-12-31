toc.dat                                                                                             0000600 0004000 0002000 00000112023 14477144177 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           !        	        {         
   Datamarket    15.3    15.3 p    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    40512 
   Datamarket    DATABASE     �   CREATE DATABASE "Datamarket" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';
    DROP DATABASE "Datamarket";
                postgres    false         �            1259    40522    cashier    TABLE     �   CREATE TABLE public.cashier (
    cashier_id character varying NOT NULL,
    cashier_name character varying NOT NULL,
    cashier_posnumber character varying NOT NULL
);
    DROP TABLE public.cashier;
       public         heap    postgres    false         �            1259    40514 	   costumers    TABLE       CREATE TABLE public.costumers (
    costumer_id integer NOT NULL,
    costumer_name character varying NOT NULL,
    costumer_telephone character varying NOT NULL,
    costumer_adress character varying NOT NULL,
    costumer_email character varying NOT NULL
);
    DROP TABLE public.costumers;
       public         heap    postgres    false         �            1259    40513    costumers_costumer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.costumers_costumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.costumers_costumer_id_seq;
       public          postgres    false    215         �           0    0    costumers_costumer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.costumers_costumer_id_seq OWNED BY public.costumers.costumer_id;
          public          postgres    false    214         �            1259    40665    facts_inventory    TABLE     �   CREATE TABLE public.facts_inventory (
    facts_inventoy_id integer NOT NULL,
    product_idfi integer NOT NULL,
    facts_s_idfi integer NOT NULL,
    inventory_idfi integer NOT NULL,
    factsinv_date date NOT NULL
);
 #   DROP TABLE public.facts_inventory;
       public         heap    postgres    false         �            1259    40664 %   facts_inventory_facts_inventoy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_inventory_facts_inventoy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.facts_inventory_facts_inventoy_id_seq;
       public          postgres    false    236         �           0    0 %   facts_inventory_facts_inventoy_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.facts_inventory_facts_inventoy_id_seq OWNED BY public.facts_inventory.facts_inventoy_id;
          public          postgres    false    235         �            1259    40624    facts_marketing    TABLE     �   CREATE TABLE public.facts_marketing (
    factsmid integer NOT NULL,
    product_idm integer NOT NULL,
    marketing_idm integer NOT NULL,
    factsmdate date NOT NULL,
    factsmdateend date NOT NULL,
    factsmpromotions character varying NOT NULL
);
 #   DROP TABLE public.facts_marketing;
       public         heap    postgres    false         �            1259    40623    facts_marketing_factsmid_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_marketing_factsmid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.facts_marketing_factsmid_seq;
       public          postgres    false    232         �           0    0    facts_marketing_factsmid_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.facts_marketing_factsmid_seq OWNED BY public.facts_marketing.factsmid;
          public          postgres    false    231         �            1259    40584    facts_sales    TABLE     s  CREATE TABLE public.facts_sales (
    factssid integer NOT NULL,
    costumer_ids integer NOT NULL,
    sales_ids integer NOT NULL,
    product_ids integer NOT NULL,
    cashier_ids character varying NOT NULL,
    payment_ids integer NOT NULL,
    marketing_ids integer NOT NULL,
    factssdate date DEFAULT CURRENT_DATE NOT NULL,
    factssquantityp numeric NOT NULL
);
    DROP TABLE public.facts_sales;
       public         heap    postgres    false         �            1259    40583    facts_sales_factssid_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_sales_factssid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.facts_sales_factssid_seq;
       public          postgres    false    230         �           0    0    facts_sales_factssid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.facts_sales_factssid_seq OWNED BY public.facts_sales.factssid;
          public          postgres    false    229         �            1259    40687    facts_summary    TABLE     �   CREATE TABLE public.facts_summary (
    facts_sumary_id integer NOT NULL,
    factssid integer NOT NULL,
    factsmid integer NOT NULL,
    factssuppid integer NOT NULL,
    facts_inventoy_id integer NOT NULL
);
 !   DROP TABLE public.facts_summary;
       public         heap    postgres    false         �            1259    40686 !   facts_summary_facts_sumary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_summary_facts_sumary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.facts_summary_facts_sumary_id_seq;
       public          postgres    false    238         �           0    0 !   facts_summary_facts_sumary_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.facts_summary_facts_sumary_id_seq OWNED BY public.facts_summary.facts_sumary_id;
          public          postgres    false    237         �            1259    40643    facts_suppliers    TABLE     �   CREATE TABLE public.facts_suppliers (
    factssuppid integer NOT NULL,
    product_idfs integer NOT NULL,
    supplier_idfs integer NOT NULL,
    inventory_idfs integer NOT NULL
);
 #   DROP TABLE public.facts_suppliers;
       public         heap    postgres    false         �            1259    40642    facts_suppliers_factssuppid_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_suppliers_factssuppid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.facts_suppliers_factssuppid_seq;
       public          postgres    false    234         �           0    0    facts_suppliers_factssuppid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.facts_suppliers_factssuppid_seq OWNED BY public.facts_suppliers.factssuppid;
          public          postgres    false    233         �            1259    40575 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    inventory_id integer NOT NULL,
    inventory_date date NOT NULL,
    inventory_desc character varying NOT NULL
);
    DROP TABLE public.inventory;
       public         heap    postgres    false         �            1259    40574    inventory_inventory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.inventory_inventory_id_seq;
       public          postgres    false    228         �           0    0    inventory_inventory_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.inventory_inventory_id_seq OWNED BY public.inventory.inventory_id;
          public          postgres    false    227         �            1259    40557 	   marketing    TABLE     �   CREATE TABLE public.marketing (
    marketing_id integer NOT NULL,
    marketing_name character varying NOT NULL,
    marketing_type character varying NOT NULL,
    marketing_promo character varying NOT NULL
);
    DROP TABLE public.marketing;
       public         heap    postgres    false         �            1259    40556    marketing_marketing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marketing_marketing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.marketing_marketing_id_seq;
       public          postgres    false    224         �           0    0    marketing_marketing_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.marketing_marketing_id_seq OWNED BY public.marketing.marketing_id;
          public          postgres    false    223         �            1259    40539    payment    TABLE     �   CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    payment_date date NOT NULL,
    payment_method character varying NOT NULL,
    payment_amount double precision NOT NULL,
    payment_reference character varying NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false         �            1259    40538    payment_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_payment_id_seq;
       public          postgres    false    220         �           0    0    payment_payment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;
          public          postgres    false    219         �            1259    40548    products    TABLE     N  CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying NOT NULL,
    product_category character varying NOT NULL,
    product_desc character varying NOT NULL,
    product_price double precision NOT NULL,
    product_type character varying NOT NULL,
    product_quantity numeric NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false         �            1259    40547    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public          postgres    false    222         �           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
          public          postgres    false    221         �            1259    40718    products_stock    VIEW     �  CREATE VIEW public.products_stock AS
 SELECT products.product_name AS producto_mas_vendido,
    facts_sales.factssquantityp,
    products.product_quantity,
    (products.product_quantity - facts_sales.factssquantityp) AS stock
   FROM ((public.facts_sales
     JOIN public.products ON ((facts_sales.product_ids = products.product_id)))
     JOIN public.payment ON ((facts_sales.payment_ids = payment.payment_id)))
  ORDER BY (products.product_quantity - facts_sales.factssquantityp) DESC;
 !   DROP VIEW public.products_stock;
       public          postgres    false    222    230    230    230    222    222    220         �            1259    40530    sales    TABLE     �   CREATE TABLE public.sales (
    sales_id integer NOT NULL,
    sales_category character varying NOT NULL,
    sales_desc character varying NOT NULL
);
    DROP TABLE public.sales;
       public         heap    postgres    false         �            1259    40713    sales_report    VIEW       CREATE VIEW public.sales_report AS
 SELECT costumers.costumer_name,
    products.product_name AS producto_comprado,
    facts_sales.factssquantityp AS cantidad_vendida,
    payment.payment_amount AS precio,
    payment.payment_date AS fecha_pago
   FROM (((public.facts_sales
     JOIN public.costumers ON ((facts_sales.costumer_ids = costumers.costumer_id)))
     JOIN public.products ON ((facts_sales.product_ids = products.product_id)))
     JOIN public.payment ON ((facts_sales.payment_ids = payment.payment_id)));
    DROP VIEW public.sales_report;
       public          postgres    false    215    215    220    230    220    230    220    222    222    230    230         �            1259    40529    sales_sales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sales_sales_id_seq;
       public          postgres    false    218         �           0    0    sales_sales_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sales_sales_id_seq OWNED BY public.sales.sales_id;
          public          postgres    false    217         �            1259    40566 	   suppliers    TABLE     �  CREATE TABLE public.suppliers (
    supplier_id integer NOT NULL,
    supplier_name character varying NOT NULL,
    supplier_telephone character varying NOT NULL,
    supplier_adress character varying NOT NULL,
    supplier_email character varying NOT NULL,
    supplier_products character varying NOT NULL,
    supplier_productsq numeric NOT NULL,
    supplier_manufacture character varying NOT NULL
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false         �            1259    40723    suppliers_products    VIEW     F  CREATE VIEW public.suppliers_products AS
 SELECT suppliers.supplier_products AS producto_ingresado,
    suppliers.supplier_name AS nombre_proveedor,
    suppliers.supplier_productsq AS cantidad_ingresada
   FROM (public.facts_suppliers
     JOIN public.suppliers ON ((facts_suppliers.supplier_idfs = suppliers.supplier_id)));
 %   DROP VIEW public.suppliers_products;
       public          postgres    false    234    226    226    226    226         �            1259    40565    suppliers_supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suppliers_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.suppliers_supplier_id_seq;
       public          postgres    false    226         �           0    0    suppliers_supplier_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.suppliers_supplier_id_seq OWNED BY public.suppliers.supplier_id;
          public          postgres    false    225         �           2604    40517    costumers costumer_id    DEFAULT     ~   ALTER TABLE ONLY public.costumers ALTER COLUMN costumer_id SET DEFAULT nextval('public.costumers_costumer_id_seq'::regclass);
 D   ALTER TABLE public.costumers ALTER COLUMN costumer_id DROP DEFAULT;
       public          postgres    false    215    214    215         �           2604    40668 !   facts_inventory facts_inventoy_id    DEFAULT     �   ALTER TABLE ONLY public.facts_inventory ALTER COLUMN facts_inventoy_id SET DEFAULT nextval('public.facts_inventory_facts_inventoy_id_seq'::regclass);
 P   ALTER TABLE public.facts_inventory ALTER COLUMN facts_inventoy_id DROP DEFAULT;
       public          postgres    false    235    236    236         �           2604    40627    facts_marketing factsmid    DEFAULT     �   ALTER TABLE ONLY public.facts_marketing ALTER COLUMN factsmid SET DEFAULT nextval('public.facts_marketing_factsmid_seq'::regclass);
 G   ALTER TABLE public.facts_marketing ALTER COLUMN factsmid DROP DEFAULT;
       public          postgres    false    231    232    232         �           2604    40587    facts_sales factssid    DEFAULT     |   ALTER TABLE ONLY public.facts_sales ALTER COLUMN factssid SET DEFAULT nextval('public.facts_sales_factssid_seq'::regclass);
 C   ALTER TABLE public.facts_sales ALTER COLUMN factssid DROP DEFAULT;
       public          postgres    false    230    229    230         �           2604    40690    facts_summary facts_sumary_id    DEFAULT     �   ALTER TABLE ONLY public.facts_summary ALTER COLUMN facts_sumary_id SET DEFAULT nextval('public.facts_summary_facts_sumary_id_seq'::regclass);
 L   ALTER TABLE public.facts_summary ALTER COLUMN facts_sumary_id DROP DEFAULT;
       public          postgres    false    237    238    238         �           2604    40646    facts_suppliers factssuppid    DEFAULT     �   ALTER TABLE ONLY public.facts_suppliers ALTER COLUMN factssuppid SET DEFAULT nextval('public.facts_suppliers_factssuppid_seq'::regclass);
 J   ALTER TABLE public.facts_suppliers ALTER COLUMN factssuppid DROP DEFAULT;
       public          postgres    false    233    234    234         �           2604    40578    inventory inventory_id    DEFAULT     �   ALTER TABLE ONLY public.inventory ALTER COLUMN inventory_id SET DEFAULT nextval('public.inventory_inventory_id_seq'::regclass);
 E   ALTER TABLE public.inventory ALTER COLUMN inventory_id DROP DEFAULT;
       public          postgres    false    228    227    228         �           2604    40560    marketing marketing_id    DEFAULT     �   ALTER TABLE ONLY public.marketing ALTER COLUMN marketing_id SET DEFAULT nextval('public.marketing_marketing_id_seq'::regclass);
 E   ALTER TABLE public.marketing ALTER COLUMN marketing_id DROP DEFAULT;
       public          postgres    false    224    223    224         �           2604    40542    payment payment_id    DEFAULT     x   ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);
 A   ALTER TABLE public.payment ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    219    220    220         �           2604    40551    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    221    222    222         �           2604    40533    sales sales_id    DEFAULT     p   ALTER TABLE ONLY public.sales ALTER COLUMN sales_id SET DEFAULT nextval('public.sales_sales_id_seq'::regclass);
 =   ALTER TABLE public.sales ALTER COLUMN sales_id DROP DEFAULT;
       public          postgres    false    217    218    218         �           2604    40569    suppliers supplier_id    DEFAULT     ~   ALTER TABLE ONLY public.suppliers ALTER COLUMN supplier_id SET DEFAULT nextval('public.suppliers_supplier_id_seq'::regclass);
 D   ALTER TABLE public.suppliers ALTER COLUMN supplier_id DROP DEFAULT;
       public          postgres    false    226    225    226         x          0    40522    cashier 
   TABLE DATA           N   COPY public.cashier (cashier_id, cashier_name, cashier_posnumber) FROM stdin;
    public          postgres    false    216       3448.dat w          0    40514 	   costumers 
   TABLE DATA           t   COPY public.costumers (costumer_id, costumer_name, costumer_telephone, costumer_adress, costumer_email) FROM stdin;
    public          postgres    false    215       3447.dat �          0    40665    facts_inventory 
   TABLE DATA           w   COPY public.facts_inventory (facts_inventoy_id, product_idfi, facts_s_idfi, inventory_idfi, factsinv_date) FROM stdin;
    public          postgres    false    236       3468.dat �          0    40624    facts_marketing 
   TABLE DATA           |   COPY public.facts_marketing (factsmid, product_idm, marketing_idm, factsmdate, factsmdateend, factsmpromotions) FROM stdin;
    public          postgres    false    232       3464.dat �          0    40584    facts_sales 
   TABLE DATA           �   COPY public.facts_sales (factssid, costumer_ids, sales_ids, product_ids, cashier_ids, payment_ids, marketing_ids, factssdate, factssquantityp) FROM stdin;
    public          postgres    false    230       3462.dat �          0    40687    facts_summary 
   TABLE DATA           l   COPY public.facts_summary (facts_sumary_id, factssid, factsmid, factssuppid, facts_inventoy_id) FROM stdin;
    public          postgres    false    238       3470.dat �          0    40643    facts_suppliers 
   TABLE DATA           c   COPY public.facts_suppliers (factssuppid, product_idfs, supplier_idfs, inventory_idfs) FROM stdin;
    public          postgres    false    234       3466.dat �          0    40575 	   inventory 
   TABLE DATA           Q   COPY public.inventory (inventory_id, inventory_date, inventory_desc) FROM stdin;
    public          postgres    false    228       3460.dat �          0    40557 	   marketing 
   TABLE DATA           b   COPY public.marketing (marketing_id, marketing_name, marketing_type, marketing_promo) FROM stdin;
    public          postgres    false    224       3456.dat |          0    40539    payment 
   TABLE DATA           n   COPY public.payment (payment_id, payment_date, payment_method, payment_amount, payment_reference) FROM stdin;
    public          postgres    false    220       3452.dat ~          0    40548    products 
   TABLE DATA           �   COPY public.products (product_id, product_name, product_category, product_desc, product_price, product_type, product_quantity) FROM stdin;
    public          postgres    false    222       3454.dat z          0    40530    sales 
   TABLE DATA           E   COPY public.sales (sales_id, sales_category, sales_desc) FROM stdin;
    public          postgres    false    218       3450.dat �          0    40566 	   suppliers 
   TABLE DATA           �   COPY public.suppliers (supplier_id, supplier_name, supplier_telephone, supplier_adress, supplier_email, supplier_products, supplier_productsq, supplier_manufacture) FROM stdin;
    public          postgres    false    226       3458.dat �           0    0    costumers_costumer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.costumers_costumer_id_seq', 10, true);
          public          postgres    false    214         �           0    0 %   facts_inventory_facts_inventoy_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.facts_inventory_facts_inventoy_id_seq', 1, true);
          public          postgres    false    235         �           0    0    facts_marketing_factsmid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.facts_marketing_factsmid_seq', 3, true);
          public          postgres    false    231         �           0    0    facts_sales_factssid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.facts_sales_factssid_seq', 10, true);
          public          postgres    false    229         �           0    0 !   facts_summary_facts_sumary_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.facts_summary_facts_sumary_id_seq', 1, true);
          public          postgres    false    237         �           0    0    facts_suppliers_factssuppid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.facts_suppliers_factssuppid_seq', 1, true);
          public          postgres    false    233         �           0    0    inventory_inventory_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.inventory_inventory_id_seq', 2, true);
          public          postgres    false    227         �           0    0    marketing_marketing_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.marketing_marketing_id_seq', 3, true);
          public          postgres    false    223         �           0    0    payment_payment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payment_payment_id_seq', 10, true);
          public          postgres    false    219         �           0    0    products_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.products_product_id_seq', 10, true);
          public          postgres    false    221         �           0    0    sales_sales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sales_sales_id_seq', 10, true);
          public          postgres    false    217         �           0    0    suppliers_supplier_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.suppliers_supplier_id_seq', 1, true);
          public          postgres    false    225         �           2606    40528    cashier cashier_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cashier
    ADD CONSTRAINT cashier_pkey PRIMARY KEY (cashier_id);
 >   ALTER TABLE ONLY public.cashier DROP CONSTRAINT cashier_pkey;
       public            postgres    false    216         �           2606    40521    costumers costumers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.costumers
    ADD CONSTRAINT costumers_pkey PRIMARY KEY (costumer_id);
 B   ALTER TABLE ONLY public.costumers DROP CONSTRAINT costumers_pkey;
       public            postgres    false    215         �           2606    40670 $   facts_inventory facts_inventory_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_pkey PRIMARY KEY (facts_inventoy_id);
 N   ALTER TABLE ONLY public.facts_inventory DROP CONSTRAINT facts_inventory_pkey;
       public            postgres    false    236         �           2606    40631 $   facts_marketing facts_marketing_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_pkey PRIMARY KEY (factsmid);
 N   ALTER TABLE ONLY public.facts_marketing DROP CONSTRAINT facts_marketing_pkey;
       public            postgres    false    232         �           2606    40592    facts_sales facts_sales_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_pkey PRIMARY KEY (factssid);
 F   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_pkey;
       public            postgres    false    230         �           2606    40692     facts_summary facts_summary_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_pkey PRIMARY KEY (facts_sumary_id);
 J   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_pkey;
       public            postgres    false    238         �           2606    40648 $   facts_suppliers facts_suppliers_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_pkey PRIMARY KEY (factssuppid);
 N   ALTER TABLE ONLY public.facts_suppliers DROP CONSTRAINT facts_suppliers_pkey;
       public            postgres    false    234         �           2606    40582    inventory inventory_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventory_id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public            postgres    false    228         �           2606    40564    marketing marketing_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_pkey PRIMARY KEY (marketing_id);
 B   ALTER TABLE ONLY public.marketing DROP CONSTRAINT marketing_pkey;
       public            postgres    false    224         �           2606    40546    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    220         �           2606    40555    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    222         �           2606    40537    sales sales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sales_id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    218         �           2606    40573    suppliers suppliers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    226         �           2606    40676 1   facts_inventory facts_inventory_facts_s_idfi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_facts_s_idfi_fkey FOREIGN KEY (facts_s_idfi) REFERENCES public.facts_sales(factssid);
 [   ALTER TABLE ONLY public.facts_inventory DROP CONSTRAINT facts_inventory_facts_s_idfi_fkey;
       public          postgres    false    230    3274    236         �           2606    40681 3   facts_inventory facts_inventory_inventory_idfi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_inventory_idfi_fkey FOREIGN KEY (inventory_idfi) REFERENCES public.inventory(inventory_id);
 ]   ALTER TABLE ONLY public.facts_inventory DROP CONSTRAINT facts_inventory_inventory_idfi_fkey;
       public          postgres    false    236    228    3272         �           2606    40671 1   facts_inventory facts_inventory_product_idfi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_product_idfi_fkey FOREIGN KEY (product_idfi) REFERENCES public.products(product_id);
 [   ALTER TABLE ONLY public.facts_inventory DROP CONSTRAINT facts_inventory_product_idfi_fkey;
       public          postgres    false    236    3266    222         �           2606    40637 2   facts_marketing facts_marketing_marketing_idm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_marketing_idm_fkey FOREIGN KEY (marketing_idm) REFERENCES public.marketing(marketing_id);
 \   ALTER TABLE ONLY public.facts_marketing DROP CONSTRAINT facts_marketing_marketing_idm_fkey;
       public          postgres    false    3268    224    232         �           2606    40632 0   facts_marketing facts_marketing_product_idm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_product_idm_fkey FOREIGN KEY (product_idm) REFERENCES public.products(product_id);
 Z   ALTER TABLE ONLY public.facts_marketing DROP CONSTRAINT facts_marketing_product_idm_fkey;
       public          postgres    false    222    3266    232         �           2606    40608 (   facts_sales facts_sales_cashier_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_cashier_ids_fkey FOREIGN KEY (cashier_ids) REFERENCES public.cashier(cashier_id);
 R   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_cashier_ids_fkey;
       public          postgres    false    216    230    3260         �           2606    40593 )   facts_sales facts_sales_costumer_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_costumer_ids_fkey FOREIGN KEY (costumer_ids) REFERENCES public.costumers(costumer_id);
 S   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_costumer_ids_fkey;
       public          postgres    false    230    3258    215         �           2606    40618 *   facts_sales facts_sales_marketing_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_marketing_ids_fkey FOREIGN KEY (marketing_ids) REFERENCES public.marketing(marketing_id);
 T   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_marketing_ids_fkey;
       public          postgres    false    3268    230    224         �           2606    40613 (   facts_sales facts_sales_payment_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_payment_ids_fkey FOREIGN KEY (payment_ids) REFERENCES public.payment(payment_id);
 R   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_payment_ids_fkey;
       public          postgres    false    230    220    3264         �           2606    40603 (   facts_sales facts_sales_product_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_product_ids_fkey FOREIGN KEY (product_ids) REFERENCES public.products(product_id);
 R   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_product_ids_fkey;
       public          postgres    false    230    3266    222         �           2606    40598 &   facts_sales facts_sales_sales_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_sales_ids_fkey FOREIGN KEY (sales_ids) REFERENCES public.sales(sales_id);
 P   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_sales_ids_fkey;
       public          postgres    false    218    3262    230         �           2606    40708 2   facts_summary facts_summary_facts_inventoy_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_facts_inventoy_id_fkey FOREIGN KEY (facts_inventoy_id) REFERENCES public.facts_inventory(facts_inventoy_id);
 \   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_facts_inventoy_id_fkey;
       public          postgres    false    3280    236    238         �           2606    40698 )   facts_summary facts_summary_factsmid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factsmid_fkey FOREIGN KEY (factsmid) REFERENCES public.facts_marketing(factsmid);
 S   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_factsmid_fkey;
       public          postgres    false    3276    232    238         �           2606    40693 )   facts_summary facts_summary_factssid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factssid_fkey FOREIGN KEY (factssid) REFERENCES public.facts_sales(factssid);
 S   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_factssid_fkey;
       public          postgres    false    238    230    3274         �           2606    40703 ,   facts_summary facts_summary_factssuppid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factssuppid_fkey FOREIGN KEY (factssuppid) REFERENCES public.facts_suppliers(factssuppid);
 V   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_factssuppid_fkey;
       public          postgres    false    3278    238    234         �           2606    40659 3   facts_suppliers facts_suppliers_inventory_idfs_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_inventory_idfs_fkey FOREIGN KEY (inventory_idfs) REFERENCES public.inventory(inventory_id);
 ]   ALTER TABLE ONLY public.facts_suppliers DROP CONSTRAINT facts_suppliers_inventory_idfs_fkey;
       public          postgres    false    228    234    3272         �           2606    40649 1   facts_suppliers facts_suppliers_product_idfs_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_product_idfs_fkey FOREIGN KEY (product_idfs) REFERENCES public.products(product_id);
 [   ALTER TABLE ONLY public.facts_suppliers DROP CONSTRAINT facts_suppliers_product_idfs_fkey;
       public          postgres    false    234    222    3266         �           2606    40654 2   facts_suppliers facts_suppliers_supplier_idfs_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_supplier_idfs_fkey FOREIGN KEY (supplier_idfs) REFERENCES public.suppliers(supplier_id);
 \   ALTER TABLE ONLY public.facts_suppliers DROP CONSTRAINT facts_suppliers_supplier_idfs_fkey;
       public          postgres    false    234    226    3270                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3448.dat                                                                                            0000600 0004000 0002000 00000000127 14477144177 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        C01	JUAN ANTONIO MORALES ORANTES	POS01
C02	KENIA ALEXANDRA RODRIGUEZ MOLINA	POS02
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                         3447.dat                                                                                            0000600 0004000 0002000 00000002252 14477144177 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	CAROLINA JANETH ESPERANZA	7123-4402	PASAJE LOS JIMENEZ CASA N°7 CANTON ZAPOTE ABAJO  AYUTUXTEPEQUE	carolinaesper134@gmail.com
2	JESUS ALBERTO CLEMENTE	7056-4869	COND. SANTA MARTA BELLA VISTA BO. SAN JACINTO 1-8 SAN SALVADOR	clemente011162@hotmail.com
3	TEOFILO ANDRES REYES	7745-5743	KM.35 CARRET.A SAN JUAN OPICO CTON.AGUA ESCONDIDA NO.ANDA 504 SAN JUAN OPICO	teofiloreyes@grupopoma.com
4	JOSE DOMINGO HERNANDEZ	7856-1183	FNL CLL SAN LUIS PJE 4 BK 8 #40 ALTOS DEL PALMAR SANTA ANA	jose9@gmail.com
5	MANUEL DE JESUS RIVERA	6118-1899	CANTON SAN JOSE BUENAVISTA CALLE PRINCIPAL OLOCUILTA	manuek.rivera@skysolutions.com.sv
6	ISRRAEL ARMANDO ARTURO	7794-0313	AV MONTREAL PJE. ELIAS Ñ13 MEJICANOS MEJICANOS	isrraelarturo@gmail.com
7	JOSE ANIBAL MIJANGO	6016-9673	5TA. AV.NTE. N.3 COL. DIVINA PROVIDENCIA ARMENIA	mijango2018@gmail.com
8	JONATHAN MIJANGO VELASQUEZ	6156-9276	COL SAN NICOLAS PJE 3 N 11 COL SAN NICOLAS ZARAGOZA	hmartinez@gmail.com
9	HUGO ARMANDO MARTINEZ	7093-5227	CARR. TCAL DEL NTE KM.17 PJE.3 Ñ.5 SAN NICOLAS, CAS EL ZAPOTE APOPA	hugo13@hotmail.com
10	JORGE ALBERTO HERNANDEZ	7088-7876	CASA 5 SANTA TECLA RES SAN ANTONIO PJE 4 NORTE SANTA TECLA	jorge.hernandez@orazul.com
\.


                                                                                                                                                                                                                                                                                                                                                      3468.dat                                                                                            0000600 0004000 0002000 00000000030 14477144177 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	1	2003-02-28
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3464.dat                                                                                            0000600 0004000 0002000 00000000350 14477144177 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2003-12-01	2003-12-30	10% DE DESCUENTO EN LECHE LA VAQUITA
2	2	2	2003-08-01	2003-08-30	10% DE DESCUENTO EN TODAS LAS CARNES ROJAS
3	3	3	2003-05-01	2003-05-30	20% DE DESCUENTO EN VINOS OLD FITO SI LLEVAS MAS DE 2 UNIDADES
\.


                                                                                                                                                                                                                                                                                        3462.dat                                                                                            0000600 0004000 0002000 00000000460 14477144177 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	1	C01	1	1	2003-10-23	20
2	2	2	2	C02	2	2	2003-02-02	10
3	3	3	3	C01	3	3	2003-03-05	5
4	4	4	4	C02	4	1	2003-08-04	4
5	5	5	5	C01	5	2	2003-01-05	8
6	6	6	6	C02	6	3	2003-05-05	11
7	7	7	7	C01	7	3	2003-04-08	15
8	8	8	8	C02	8	2	2003-02-01	6
9	9	9	9	C01	9	1	2003-01-01	7
10	10	10	10	C02	10	2	2003-11-24	9
\.


                                                                                                                                                                                                                3470.dat                                                                                            0000600 0004000 0002000 00000000017 14477144177 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	1	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3466.dat                                                                                            0000600 0004000 0002000 00000000015 14477144177 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3460.dat                                                                                            0000600 0004000 0002000 00000000132 14477144177 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2003-05-05	LECHE EN CAJA DE 1 LITRO
2	2003-05-05	CARNE DE RES MOLIDA SABEMAS 250GR
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                      3456.dat                                                                                            0000600 0004000 0002000 00000000275 14477144177 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	OFERTAS DE LA SEMANA	MARKETING DIGITAL	10% de descuento
2	DOMINGOS DE ASADO	MARKETING AUDIOVISUAL	15% de descuento
3	EL BUEN VINO NO PASA DE MODA	PUBLICIDAD IMPRESA	10% de descuento
\.


                                                                                                                                                                                                                                                                                                                                   3452.dat                                                                                            0000600 0004000 0002000 00000000671 14477144177 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2003-10-23	TRANSFERENCIA BANCARIA	12.5	BAC001
2	2005-11-10	TARJETA DE CREDITO	20	CCHIPO001
3	2004-10-12	EFECTIVO	15.2	NO REFERENCE
4	2003-05-05	TARJETA DE CREDITO	40	CCAGRI001
5	2003-08-02	EFECTIVO	8	NO REFERENCE
6	2004-03-09	TRANSFERENCIA BANCARIA	50	BAC002
7	2003-10-10	EFECTIVO	35.2	NO REFERENCE
8	2003-10-20	EFECTIVO	15.5	NO REFERENCE
9	2003-10-25	TRANSFERENCIA BANCARIA	14.5	BAC001
10	2003-05-05	TARJETA DE CREDITO	58.6	CCBAC001
\.


                                                                       3454.dat                                                                                            0000600 0004000 0002000 00000001677 14477144177 0014304 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	LECHE LA VAQUITA	ALIMENTOS	LECHE EN CAJA DE 1 LITRO	12.5	LACTEOS	100
2	CARNE DE RES MOLIDA SABEMAS 250GR	CARNES Y EMBUTIDOS	CARNE DE RES MOLIDA SABEMAS 250GR	8	CARNE ROJA	25
3	CARBON EL JORNALERO	INSUMOS	CARBON EN BOLSA 3 LIBRAS	8	INSUMOS DE HOGAR	20
4	GASEOSA KOLASHANPAM 3 LITROS	BEBIDAS CARBONATADAS	GASEOSA 3 KOLASHANPAM 3 LITROS UNIDAD	2.9	BEBIDAS CARBONATADAS	50
5	FOSFOROS FIRE BLUE	INSUMOS	CAJA DE FOSFOROS FIRE BLUE GRNADE 30 UNIDADES	2.5	INSUMOS DE HOGAR	45
6	TEQUILA OLD FITO SUAVE	EMBRIAGANTES	TEQUILA DE MAGEY FERMENTADO OLD FITO 750ML	7	LICORES	30
7	GALLETAS TRIGO-HONEY	SNACKS	GALLETAS DE HARINA DE TRIGO CON MIEL DE ABEJA 6 PACK	2.5	CEREALES Y HARINAS	15
8	SAZONADOR DE RES LA ABUELITA	CONDIMENTOS	SAZONADOR SABOR A RES LA ABUELITA 15GR	1.5	CONDIMENTOS	40
9	QUESO DURO BLANDO LA VAQUITA	ALIMENTOS	QUESO DURO BLANDO 1 LIBRA	4.5	LACTEOS	10
10	RON BLANCO 3 TIEMPOS	EMBRIAGANTES	RON DE FLOR DE CAÑA 25 GRADOS DE ALCOHOL 750ML	8	LICORES	35
\.


                                                                 3450.dat                                                                                            0000600 0004000 0002000 00000000500 14477144177 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ONLINE	VENTA EN EL SISTEMA EN LINEA
2	STORE	VENTA EN LA TIENDA
3	STORE	VENTA EN LA TIENDA
4	STORE	VENTA EN LA TIENDA
5	STORE	VENTA EN LA TIENDA
6	ONLINE	VENTA EN EL SISTEMA EN LINEA
7	STORE	VENTA EN LA TIENDA
8	ONLINE	VENTA EN EL SISTEMA EN LINEA
9	ONLINE	VENTA EN EL SISTEMA EN LINEA
10	STORE	VENTA EN LA TIENDA
\.


                                                                                                                                                                                                3458.dat                                                                                            0000600 0004000 0002000 00000000247 14477144177 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	LA VAQUITA	7474-1818	COLONIA EL ESPINO SAN SALVADOR	productoslavaquita@gmail.com	LECHE EN CAJA DE 1 LITRO	100	30 DE ENERO DE 2023 CADUCA EL 30 DE ENERO DE 2024
\.


                                                                                                                                                                                                                                                                                                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000073253 14477144177 0015416 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

DROP DATABASE "Datamarket";
--
-- Name: Datamarket; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Datamarket" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';


ALTER DATABASE "Datamarket" OWNER TO postgres;

\connect "Datamarket"

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
-- Name: cashier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cashier (
    cashier_id character varying NOT NULL,
    cashier_name character varying NOT NULL,
    cashier_posnumber character varying NOT NULL
);


ALTER TABLE public.cashier OWNER TO postgres;

--
-- Name: costumers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.costumers (
    costumer_id integer NOT NULL,
    costumer_name character varying NOT NULL,
    costumer_telephone character varying NOT NULL,
    costumer_adress character varying NOT NULL,
    costumer_email character varying NOT NULL
);


ALTER TABLE public.costumers OWNER TO postgres;

--
-- Name: costumers_costumer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.costumers_costumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.costumers_costumer_id_seq OWNER TO postgres;

--
-- Name: costumers_costumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.costumers_costumer_id_seq OWNED BY public.costumers.costumer_id;


--
-- Name: facts_inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facts_inventory (
    facts_inventoy_id integer NOT NULL,
    product_idfi integer NOT NULL,
    facts_s_idfi integer NOT NULL,
    inventory_idfi integer NOT NULL,
    factsinv_date date NOT NULL
);


ALTER TABLE public.facts_inventory OWNER TO postgres;

--
-- Name: facts_inventory_facts_inventoy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facts_inventory_facts_inventoy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facts_inventory_facts_inventoy_id_seq OWNER TO postgres;

--
-- Name: facts_inventory_facts_inventoy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facts_inventory_facts_inventoy_id_seq OWNED BY public.facts_inventory.facts_inventoy_id;


--
-- Name: facts_marketing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facts_marketing (
    factsmid integer NOT NULL,
    product_idm integer NOT NULL,
    marketing_idm integer NOT NULL,
    factsmdate date NOT NULL,
    factsmdateend date NOT NULL,
    factsmpromotions character varying NOT NULL
);


ALTER TABLE public.facts_marketing OWNER TO postgres;

--
-- Name: facts_marketing_factsmid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facts_marketing_factsmid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facts_marketing_factsmid_seq OWNER TO postgres;

--
-- Name: facts_marketing_factsmid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facts_marketing_factsmid_seq OWNED BY public.facts_marketing.factsmid;


--
-- Name: facts_sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facts_sales (
    factssid integer NOT NULL,
    costumer_ids integer NOT NULL,
    sales_ids integer NOT NULL,
    product_ids integer NOT NULL,
    cashier_ids character varying NOT NULL,
    payment_ids integer NOT NULL,
    marketing_ids integer NOT NULL,
    factssdate date DEFAULT CURRENT_DATE NOT NULL,
    factssquantityp numeric NOT NULL
);


ALTER TABLE public.facts_sales OWNER TO postgres;

--
-- Name: facts_sales_factssid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facts_sales_factssid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facts_sales_factssid_seq OWNER TO postgres;

--
-- Name: facts_sales_factssid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facts_sales_factssid_seq OWNED BY public.facts_sales.factssid;


--
-- Name: facts_summary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facts_summary (
    facts_sumary_id integer NOT NULL,
    factssid integer NOT NULL,
    factsmid integer NOT NULL,
    factssuppid integer NOT NULL,
    facts_inventoy_id integer NOT NULL
);


ALTER TABLE public.facts_summary OWNER TO postgres;

--
-- Name: facts_summary_facts_sumary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facts_summary_facts_sumary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facts_summary_facts_sumary_id_seq OWNER TO postgres;

--
-- Name: facts_summary_facts_sumary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facts_summary_facts_sumary_id_seq OWNED BY public.facts_summary.facts_sumary_id;


--
-- Name: facts_suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facts_suppliers (
    factssuppid integer NOT NULL,
    product_idfs integer NOT NULL,
    supplier_idfs integer NOT NULL,
    inventory_idfs integer NOT NULL
);


ALTER TABLE public.facts_suppliers OWNER TO postgres;

--
-- Name: facts_suppliers_factssuppid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facts_suppliers_factssuppid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facts_suppliers_factssuppid_seq OWNER TO postgres;

--
-- Name: facts_suppliers_factssuppid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facts_suppliers_factssuppid_seq OWNED BY public.facts_suppliers.factssuppid;


--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    inventory_id integer NOT NULL,
    inventory_date date NOT NULL,
    inventory_desc character varying NOT NULL
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: inventory_inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventory_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_inventory_id_seq OWNER TO postgres;

--
-- Name: inventory_inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventory_inventory_id_seq OWNED BY public.inventory.inventory_id;


--
-- Name: marketing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marketing (
    marketing_id integer NOT NULL,
    marketing_name character varying NOT NULL,
    marketing_type character varying NOT NULL,
    marketing_promo character varying NOT NULL
);


ALTER TABLE public.marketing OWNER TO postgres;

--
-- Name: marketing_marketing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marketing_marketing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marketing_marketing_id_seq OWNER TO postgres;

--
-- Name: marketing_marketing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marketing_marketing_id_seq OWNED BY public.marketing.marketing_id;


--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    payment_date date NOT NULL,
    payment_method character varying NOT NULL,
    payment_amount double precision NOT NULL,
    payment_reference character varying NOT NULL
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_payment_id_seq OWNER TO postgres;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying NOT NULL,
    product_category character varying NOT NULL,
    product_desc character varying NOT NULL,
    product_price double precision NOT NULL,
    product_type character varying NOT NULL,
    product_quantity numeric NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: products_stock; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.products_stock AS
 SELECT products.product_name AS producto_mas_vendido,
    facts_sales.factssquantityp,
    products.product_quantity,
    (products.product_quantity - facts_sales.factssquantityp) AS stock
   FROM ((public.facts_sales
     JOIN public.products ON ((facts_sales.product_ids = products.product_id)))
     JOIN public.payment ON ((facts_sales.payment_ids = payment.payment_id)))
  ORDER BY (products.product_quantity - facts_sales.factssquantityp) DESC;


ALTER TABLE public.products_stock OWNER TO postgres;

--
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    sales_id integer NOT NULL,
    sales_category character varying NOT NULL,
    sales_desc character varying NOT NULL
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- Name: sales_report; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.sales_report AS
 SELECT costumers.costumer_name,
    products.product_name AS producto_comprado,
    facts_sales.factssquantityp AS cantidad_vendida,
    payment.payment_amount AS precio,
    payment.payment_date AS fecha_pago
   FROM (((public.facts_sales
     JOIN public.costumers ON ((facts_sales.costumer_ids = costumers.costumer_id)))
     JOIN public.products ON ((facts_sales.product_ids = products.product_id)))
     JOIN public.payment ON ((facts_sales.payment_ids = payment.payment_id)));


ALTER TABLE public.sales_report OWNER TO postgres;

--
-- Name: sales_sales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_sales_id_seq OWNER TO postgres;

--
-- Name: sales_sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_sales_id_seq OWNED BY public.sales.sales_id;


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    supplier_id integer NOT NULL,
    supplier_name character varying NOT NULL,
    supplier_telephone character varying NOT NULL,
    supplier_adress character varying NOT NULL,
    supplier_email character varying NOT NULL,
    supplier_products character varying NOT NULL,
    supplier_productsq numeric NOT NULL,
    supplier_manufacture character varying NOT NULL
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- Name: suppliers_products; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.suppliers_products AS
 SELECT suppliers.supplier_products AS producto_ingresado,
    suppliers.supplier_name AS nombre_proveedor,
    suppliers.supplier_productsq AS cantidad_ingresada
   FROM (public.facts_suppliers
     JOIN public.suppliers ON ((facts_suppliers.supplier_idfs = suppliers.supplier_id)));


ALTER TABLE public.suppliers_products OWNER TO postgres;

--
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suppliers_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suppliers_supplier_id_seq OWNER TO postgres;

--
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suppliers_supplier_id_seq OWNED BY public.suppliers.supplier_id;


--
-- Name: costumers costumer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costumers ALTER COLUMN costumer_id SET DEFAULT nextval('public.costumers_costumer_id_seq'::regclass);


--
-- Name: facts_inventory facts_inventoy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_inventory ALTER COLUMN facts_inventoy_id SET DEFAULT nextval('public.facts_inventory_facts_inventoy_id_seq'::regclass);


--
-- Name: facts_marketing factsmid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_marketing ALTER COLUMN factsmid SET DEFAULT nextval('public.facts_marketing_factsmid_seq'::regclass);


--
-- Name: facts_sales factssid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_sales ALTER COLUMN factssid SET DEFAULT nextval('public.facts_sales_factssid_seq'::regclass);


--
-- Name: facts_summary facts_sumary_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_summary ALTER COLUMN facts_sumary_id SET DEFAULT nextval('public.facts_summary_facts_sumary_id_seq'::regclass);


--
-- Name: facts_suppliers factssuppid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_suppliers ALTER COLUMN factssuppid SET DEFAULT nextval('public.facts_suppliers_factssuppid_seq'::regclass);


--
-- Name: inventory inventory_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory ALTER COLUMN inventory_id SET DEFAULT nextval('public.inventory_inventory_id_seq'::regclass);


--
-- Name: marketing marketing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing ALTER COLUMN marketing_id SET DEFAULT nextval('public.marketing_marketing_id_seq'::regclass);


--
-- Name: payment payment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: sales sales_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales ALTER COLUMN sales_id SET DEFAULT nextval('public.sales_sales_id_seq'::regclass);


--
-- Name: suppliers supplier_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN supplier_id SET DEFAULT nextval('public.suppliers_supplier_id_seq'::regclass);


--
-- Data for Name: cashier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cashier (cashier_id, cashier_name, cashier_posnumber) FROM stdin;
\.
COPY public.cashier (cashier_id, cashier_name, cashier_posnumber) FROM '$$PATH$$/3448.dat';

--
-- Data for Name: costumers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.costumers (costumer_id, costumer_name, costumer_telephone, costumer_adress, costumer_email) FROM stdin;
\.
COPY public.costumers (costumer_id, costumer_name, costumer_telephone, costumer_adress, costumer_email) FROM '$$PATH$$/3447.dat';

--
-- Data for Name: facts_inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facts_inventory (facts_inventoy_id, product_idfi, facts_s_idfi, inventory_idfi, factsinv_date) FROM stdin;
\.
COPY public.facts_inventory (facts_inventoy_id, product_idfi, facts_s_idfi, inventory_idfi, factsinv_date) FROM '$$PATH$$/3468.dat';

--
-- Data for Name: facts_marketing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facts_marketing (factsmid, product_idm, marketing_idm, factsmdate, factsmdateend, factsmpromotions) FROM stdin;
\.
COPY public.facts_marketing (factsmid, product_idm, marketing_idm, factsmdate, factsmdateend, factsmpromotions) FROM '$$PATH$$/3464.dat';

--
-- Data for Name: facts_sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facts_sales (factssid, costumer_ids, sales_ids, product_ids, cashier_ids, payment_ids, marketing_ids, factssdate, factssquantityp) FROM stdin;
\.
COPY public.facts_sales (factssid, costumer_ids, sales_ids, product_ids, cashier_ids, payment_ids, marketing_ids, factssdate, factssquantityp) FROM '$$PATH$$/3462.dat';

--
-- Data for Name: facts_summary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facts_summary (facts_sumary_id, factssid, factsmid, factssuppid, facts_inventoy_id) FROM stdin;
\.
COPY public.facts_summary (facts_sumary_id, factssid, factsmid, factssuppid, facts_inventoy_id) FROM '$$PATH$$/3470.dat';

--
-- Data for Name: facts_suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facts_suppliers (factssuppid, product_idfs, supplier_idfs, inventory_idfs) FROM stdin;
\.
COPY public.facts_suppliers (factssuppid, product_idfs, supplier_idfs, inventory_idfs) FROM '$$PATH$$/3466.dat';

--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory (inventory_id, inventory_date, inventory_desc) FROM stdin;
\.
COPY public.inventory (inventory_id, inventory_date, inventory_desc) FROM '$$PATH$$/3460.dat';

--
-- Data for Name: marketing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marketing (marketing_id, marketing_name, marketing_type, marketing_promo) FROM stdin;
\.
COPY public.marketing (marketing_id, marketing_name, marketing_type, marketing_promo) FROM '$$PATH$$/3456.dat';

--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (payment_id, payment_date, payment_method, payment_amount, payment_reference) FROM stdin;
\.
COPY public.payment (payment_id, payment_date, payment_method, payment_amount, payment_reference) FROM '$$PATH$$/3452.dat';

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, product_name, product_category, product_desc, product_price, product_type, product_quantity) FROM stdin;
\.
COPY public.products (product_id, product_name, product_category, product_desc, product_price, product_type, product_quantity) FROM '$$PATH$$/3454.dat';

--
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales (sales_id, sales_category, sales_desc) FROM stdin;
\.
COPY public.sales (sales_id, sales_category, sales_desc) FROM '$$PATH$$/3450.dat';

--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (supplier_id, supplier_name, supplier_telephone, supplier_adress, supplier_email, supplier_products, supplier_productsq, supplier_manufacture) FROM stdin;
\.
COPY public.suppliers (supplier_id, supplier_name, supplier_telephone, supplier_adress, supplier_email, supplier_products, supplier_productsq, supplier_manufacture) FROM '$$PATH$$/3458.dat';

--
-- Name: costumers_costumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.costumers_costumer_id_seq', 10, true);


--
-- Name: facts_inventory_facts_inventoy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facts_inventory_facts_inventoy_id_seq', 1, true);


--
-- Name: facts_marketing_factsmid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facts_marketing_factsmid_seq', 3, true);


--
-- Name: facts_sales_factssid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facts_sales_factssid_seq', 10, true);


--
-- Name: facts_summary_facts_sumary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facts_summary_facts_sumary_id_seq', 1, true);


--
-- Name: facts_suppliers_factssuppid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facts_suppliers_factssuppid_seq', 1, true);


--
-- Name: inventory_inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventory_inventory_id_seq', 2, true);


--
-- Name: marketing_marketing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marketing_marketing_id_seq', 3, true);


--
-- Name: payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_payment_id_seq', 10, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 10, true);


--
-- Name: sales_sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_sales_id_seq', 10, true);


--
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_supplier_id_seq', 1, true);


--
-- Name: cashier cashier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cashier
    ADD CONSTRAINT cashier_pkey PRIMARY KEY (cashier_id);


--
-- Name: costumers costumers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costumers
    ADD CONSTRAINT costumers_pkey PRIMARY KEY (costumer_id);


--
-- Name: facts_inventory facts_inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_pkey PRIMARY KEY (facts_inventoy_id);


--
-- Name: facts_marketing facts_marketing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_pkey PRIMARY KEY (factsmid);


--
-- Name: facts_sales facts_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_pkey PRIMARY KEY (factssid);


--
-- Name: facts_summary facts_summary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_pkey PRIMARY KEY (facts_sumary_id);


--
-- Name: facts_suppliers facts_suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_pkey PRIMARY KEY (factssuppid);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventory_id);


--
-- Name: marketing marketing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_pkey PRIMARY KEY (marketing_id);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sales_id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);


--
-- Name: facts_inventory facts_inventory_facts_s_idfi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_facts_s_idfi_fkey FOREIGN KEY (facts_s_idfi) REFERENCES public.facts_sales(factssid);


--
-- Name: facts_inventory facts_inventory_inventory_idfi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_inventory_idfi_fkey FOREIGN KEY (inventory_idfi) REFERENCES public.inventory(inventory_id);


--
-- Name: facts_inventory facts_inventory_product_idfi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_product_idfi_fkey FOREIGN KEY (product_idfi) REFERENCES public.products(product_id);


--
-- Name: facts_marketing facts_marketing_marketing_idm_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_marketing_idm_fkey FOREIGN KEY (marketing_idm) REFERENCES public.marketing(marketing_id);


--
-- Name: facts_marketing facts_marketing_product_idm_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_product_idm_fkey FOREIGN KEY (product_idm) REFERENCES public.products(product_id);


--
-- Name: facts_sales facts_sales_cashier_ids_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_cashier_ids_fkey FOREIGN KEY (cashier_ids) REFERENCES public.cashier(cashier_id);


--
-- Name: facts_sales facts_sales_costumer_ids_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_costumer_ids_fkey FOREIGN KEY (costumer_ids) REFERENCES public.costumers(costumer_id);


--
-- Name: facts_sales facts_sales_marketing_ids_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_marketing_ids_fkey FOREIGN KEY (marketing_ids) REFERENCES public.marketing(marketing_id);


--
-- Name: facts_sales facts_sales_payment_ids_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_payment_ids_fkey FOREIGN KEY (payment_ids) REFERENCES public.payment(payment_id);


--
-- Name: facts_sales facts_sales_product_ids_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_product_ids_fkey FOREIGN KEY (product_ids) REFERENCES public.products(product_id);


--
-- Name: facts_sales facts_sales_sales_ids_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_sales_ids_fkey FOREIGN KEY (sales_ids) REFERENCES public.sales(sales_id);


--
-- Name: facts_summary facts_summary_facts_inventoy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_facts_inventoy_id_fkey FOREIGN KEY (facts_inventoy_id) REFERENCES public.facts_inventory(facts_inventoy_id);


--
-- Name: facts_summary facts_summary_factsmid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factsmid_fkey FOREIGN KEY (factsmid) REFERENCES public.facts_marketing(factsmid);


--
-- Name: facts_summary facts_summary_factssid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factssid_fkey FOREIGN KEY (factssid) REFERENCES public.facts_sales(factssid);


--
-- Name: facts_summary facts_summary_factssuppid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factssuppid_fkey FOREIGN KEY (factssuppid) REFERENCES public.facts_suppliers(factssuppid);


--
-- Name: facts_suppliers facts_suppliers_inventory_idfs_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_inventory_idfs_fkey FOREIGN KEY (inventory_idfs) REFERENCES public.inventory(inventory_id);


--
-- Name: facts_suppliers facts_suppliers_product_idfs_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_product_idfs_fkey FOREIGN KEY (product_idfs) REFERENCES public.products(product_id);


--
-- Name: facts_suppliers facts_suppliers_supplier_idfs_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_supplier_idfs_fkey FOREIGN KEY (supplier_idfs) REFERENCES public.suppliers(supplier_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     