PGDMP         (        	        {         
   Datamarket    15.3    15.3 p    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    40512 
   Datamarket    DATABASE     �   CREATE DATABASE "Datamarket" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';
    DROP DATABASE "Datamarket";
                postgres    false            �            1259    40522    cashier    TABLE     �   CREATE TABLE public.cashier (
    cashier_id character varying NOT NULL,
    cashier_name character varying NOT NULL,
    cashier_posnumber character varying NOT NULL
);
    DROP TABLE public.cashier;
       public         heap    postgres    false            �            1259    40514 	   costumers    TABLE       CREATE TABLE public.costumers (
    costumer_id integer NOT NULL,
    costumer_name character varying NOT NULL,
    costumer_telephone character varying NOT NULL,
    costumer_adress character varying NOT NULL,
    costumer_email character varying NOT NULL
);
    DROP TABLE public.costumers;
       public         heap    postgres    false            �            1259    40513    costumers_costumer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.costumers_costumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.costumers_costumer_id_seq;
       public          postgres    false    215            �           0    0    costumers_costumer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.costumers_costumer_id_seq OWNED BY public.costumers.costumer_id;
          public          postgres    false    214            �            1259    40665    facts_inventory    TABLE     �   CREATE TABLE public.facts_inventory (
    facts_inventoy_id integer NOT NULL,
    product_idfi integer NOT NULL,
    facts_s_idfi integer NOT NULL,
    inventory_idfi integer NOT NULL,
    factsinv_date date NOT NULL
);
 #   DROP TABLE public.facts_inventory;
       public         heap    postgres    false            �            1259    40664 %   facts_inventory_facts_inventoy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_inventory_facts_inventoy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.facts_inventory_facts_inventoy_id_seq;
       public          postgres    false    236            �           0    0 %   facts_inventory_facts_inventoy_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.facts_inventory_facts_inventoy_id_seq OWNED BY public.facts_inventory.facts_inventoy_id;
          public          postgres    false    235            �            1259    40624    facts_marketing    TABLE     �   CREATE TABLE public.facts_marketing (
    factsmid integer NOT NULL,
    product_idm integer NOT NULL,
    marketing_idm integer NOT NULL,
    factsmdate date NOT NULL,
    factsmdateend date NOT NULL,
    factsmpromotions character varying NOT NULL
);
 #   DROP TABLE public.facts_marketing;
       public         heap    postgres    false            �            1259    40623    facts_marketing_factsmid_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_marketing_factsmid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.facts_marketing_factsmid_seq;
       public          postgres    false    232            �           0    0    facts_marketing_factsmid_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.facts_marketing_factsmid_seq OWNED BY public.facts_marketing.factsmid;
          public          postgres    false    231            �            1259    40584    facts_sales    TABLE     s  CREATE TABLE public.facts_sales (
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
       public         heap    postgres    false            �            1259    40583    facts_sales_factssid_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_sales_factssid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.facts_sales_factssid_seq;
       public          postgres    false    230            �           0    0    facts_sales_factssid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.facts_sales_factssid_seq OWNED BY public.facts_sales.factssid;
          public          postgres    false    229            �            1259    40687    facts_summary    TABLE     �   CREATE TABLE public.facts_summary (
    facts_sumary_id integer NOT NULL,
    factssid integer NOT NULL,
    factsmid integer NOT NULL,
    factssuppid integer NOT NULL,
    facts_inventoy_id integer NOT NULL
);
 !   DROP TABLE public.facts_summary;
       public         heap    postgres    false            �            1259    40686 !   facts_summary_facts_sumary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_summary_facts_sumary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.facts_summary_facts_sumary_id_seq;
       public          postgres    false    238            �           0    0 !   facts_summary_facts_sumary_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.facts_summary_facts_sumary_id_seq OWNED BY public.facts_summary.facts_sumary_id;
          public          postgres    false    237            �            1259    40643    facts_suppliers    TABLE     �   CREATE TABLE public.facts_suppliers (
    factssuppid integer NOT NULL,
    product_idfs integer NOT NULL,
    supplier_idfs integer NOT NULL,
    inventory_idfs integer NOT NULL
);
 #   DROP TABLE public.facts_suppliers;
       public         heap    postgres    false            �            1259    40642    facts_suppliers_factssuppid_seq    SEQUENCE     �   CREATE SEQUENCE public.facts_suppliers_factssuppid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.facts_suppliers_factssuppid_seq;
       public          postgres    false    234            �           0    0    facts_suppliers_factssuppid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.facts_suppliers_factssuppid_seq OWNED BY public.facts_suppliers.factssuppid;
          public          postgres    false    233            �            1259    40575 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    inventory_id integer NOT NULL,
    inventory_date date NOT NULL,
    inventory_desc character varying NOT NULL
);
    DROP TABLE public.inventory;
       public         heap    postgres    false            �            1259    40574    inventory_inventory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.inventory_inventory_id_seq;
       public          postgres    false    228            �           0    0    inventory_inventory_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.inventory_inventory_id_seq OWNED BY public.inventory.inventory_id;
          public          postgres    false    227            �            1259    40557 	   marketing    TABLE     �   CREATE TABLE public.marketing (
    marketing_id integer NOT NULL,
    marketing_name character varying NOT NULL,
    marketing_type character varying NOT NULL,
    marketing_promo character varying NOT NULL
);
    DROP TABLE public.marketing;
       public         heap    postgres    false            �            1259    40556    marketing_marketing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marketing_marketing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.marketing_marketing_id_seq;
       public          postgres    false    224            �           0    0    marketing_marketing_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.marketing_marketing_id_seq OWNED BY public.marketing.marketing_id;
          public          postgres    false    223            �            1259    40539    payment    TABLE     �   CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    payment_date date NOT NULL,
    payment_method character varying NOT NULL,
    payment_amount double precision NOT NULL,
    payment_reference character varying NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    40538    payment_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_payment_id_seq;
       public          postgres    false    220            �           0    0    payment_payment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;
          public          postgres    false    219            �            1259    40548    products    TABLE     N  CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying NOT NULL,
    product_category character varying NOT NULL,
    product_desc character varying NOT NULL,
    product_price double precision NOT NULL,
    product_type character varying NOT NULL,
    product_quantity numeric NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    40547    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public          postgres    false    222            �           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
          public          postgres    false    221            �            1259    40718    products_stock    VIEW     �  CREATE VIEW public.products_stock AS
 SELECT products.product_name AS producto_mas_vendido,
    facts_sales.factssquantityp,
    products.product_quantity,
    (products.product_quantity - facts_sales.factssquantityp) AS stock
   FROM ((public.facts_sales
     JOIN public.products ON ((facts_sales.product_ids = products.product_id)))
     JOIN public.payment ON ((facts_sales.payment_ids = payment.payment_id)))
  ORDER BY (products.product_quantity - facts_sales.factssquantityp) DESC;
 !   DROP VIEW public.products_stock;
       public          postgres    false    222    230    230    230    222    222    220            �            1259    40530    sales    TABLE     �   CREATE TABLE public.sales (
    sales_id integer NOT NULL,
    sales_category character varying NOT NULL,
    sales_desc character varying NOT NULL
);
    DROP TABLE public.sales;
       public         heap    postgres    false            �            1259    40713    sales_report    VIEW       CREATE VIEW public.sales_report AS
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
       public          postgres    false    215    215    220    230    220    230    220    222    222    230    230            �            1259    40529    sales_sales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sales_sales_id_seq;
       public          postgres    false    218            �           0    0    sales_sales_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sales_sales_id_seq OWNED BY public.sales.sales_id;
          public          postgres    false    217            �            1259    40566 	   suppliers    TABLE     �  CREATE TABLE public.suppliers (
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
       public         heap    postgres    false            �            1259    40723    suppliers_products    VIEW     F  CREATE VIEW public.suppliers_products AS
 SELECT suppliers.supplier_products AS producto_ingresado,
    suppliers.supplier_name AS nombre_proveedor,
    suppliers.supplier_productsq AS cantidad_ingresada
   FROM (public.facts_suppliers
     JOIN public.suppliers ON ((facts_suppliers.supplier_idfs = suppliers.supplier_id)));
 %   DROP VIEW public.suppliers_products;
       public          postgres    false    234    226    226    226    226            �            1259    40565    suppliers_supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suppliers_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.suppliers_supplier_id_seq;
       public          postgres    false    226            �           0    0    suppliers_supplier_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.suppliers_supplier_id_seq OWNED BY public.suppliers.supplier_id;
          public          postgres    false    225            �           2604    40517    costumers costumer_id    DEFAULT     ~   ALTER TABLE ONLY public.costumers ALTER COLUMN costumer_id SET DEFAULT nextval('public.costumers_costumer_id_seq'::regclass);
 D   ALTER TABLE public.costumers ALTER COLUMN costumer_id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    40668 !   facts_inventory facts_inventoy_id    DEFAULT     �   ALTER TABLE ONLY public.facts_inventory ALTER COLUMN facts_inventoy_id SET DEFAULT nextval('public.facts_inventory_facts_inventoy_id_seq'::regclass);
 P   ALTER TABLE public.facts_inventory ALTER COLUMN facts_inventoy_id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    40627    facts_marketing factsmid    DEFAULT     �   ALTER TABLE ONLY public.facts_marketing ALTER COLUMN factsmid SET DEFAULT nextval('public.facts_marketing_factsmid_seq'::regclass);
 G   ALTER TABLE public.facts_marketing ALTER COLUMN factsmid DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    40587    facts_sales factssid    DEFAULT     |   ALTER TABLE ONLY public.facts_sales ALTER COLUMN factssid SET DEFAULT nextval('public.facts_sales_factssid_seq'::regclass);
 C   ALTER TABLE public.facts_sales ALTER COLUMN factssid DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    40690    facts_summary facts_sumary_id    DEFAULT     �   ALTER TABLE ONLY public.facts_summary ALTER COLUMN facts_sumary_id SET DEFAULT nextval('public.facts_summary_facts_sumary_id_seq'::regclass);
 L   ALTER TABLE public.facts_summary ALTER COLUMN facts_sumary_id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    40646    facts_suppliers factssuppid    DEFAULT     �   ALTER TABLE ONLY public.facts_suppliers ALTER COLUMN factssuppid SET DEFAULT nextval('public.facts_suppliers_factssuppid_seq'::regclass);
 J   ALTER TABLE public.facts_suppliers ALTER COLUMN factssuppid DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    40578    inventory inventory_id    DEFAULT     �   ALTER TABLE ONLY public.inventory ALTER COLUMN inventory_id SET DEFAULT nextval('public.inventory_inventory_id_seq'::regclass);
 E   ALTER TABLE public.inventory ALTER COLUMN inventory_id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    40560    marketing marketing_id    DEFAULT     �   ALTER TABLE ONLY public.marketing ALTER COLUMN marketing_id SET DEFAULT nextval('public.marketing_marketing_id_seq'::regclass);
 E   ALTER TABLE public.marketing ALTER COLUMN marketing_id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    40542    payment payment_id    DEFAULT     x   ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);
 A   ALTER TABLE public.payment ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    40551    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    40533    sales sales_id    DEFAULT     p   ALTER TABLE ONLY public.sales ALTER COLUMN sales_id SET DEFAULT nextval('public.sales_sales_id_seq'::regclass);
 =   ALTER TABLE public.sales ALTER COLUMN sales_id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    40569    suppliers supplier_id    DEFAULT     ~   ALTER TABLE ONLY public.suppliers ALTER COLUMN supplier_id SET DEFAULT nextval('public.suppliers_supplier_id_seq'::regclass);
 D   ALTER TABLE public.suppliers ALTER COLUMN supplier_id DROP DEFAULT;
       public          postgres    false    226    225    226            x          0    40522    cashier 
   TABLE DATA           N   COPY public.cashier (cashier_id, cashier_name, cashier_posnumber) FROM stdin;
    public          postgres    false    216   k�       w          0    40514 	   costumers 
   TABLE DATA           t   COPY public.costumers (costumer_id, costumer_name, costumer_telephone, costumer_adress, costumer_email) FROM stdin;
    public          postgres    false    215   Е       �          0    40665    facts_inventory 
   TABLE DATA           w   COPY public.facts_inventory (facts_inventoy_id, product_idfi, facts_s_idfi, inventory_idfi, factsinv_date) FROM stdin;
    public          postgres    false    236   ٘       �          0    40624    facts_marketing 
   TABLE DATA           |   COPY public.facts_marketing (factsmid, product_idm, marketing_idm, factsmdate, factsmdateend, factsmpromotions) FROM stdin;
    public          postgres    false    232   �       �          0    40584    facts_sales 
   TABLE DATA           �   COPY public.facts_sales (factssid, costumer_ids, sales_ids, product_ids, cashier_ids, payment_ids, marketing_ids, factssdate, factssquantityp) FROM stdin;
    public          postgres    false    230   ��       �          0    40687    facts_summary 
   TABLE DATA           l   COPY public.facts_summary (facts_sumary_id, factssid, factsmid, factssuppid, facts_inventoy_id) FROM stdin;
    public          postgres    false    238   8�       �          0    40643    facts_suppliers 
   TABLE DATA           c   COPY public.facts_suppliers (factssuppid, product_idfs, supplier_idfs, inventory_idfs) FROM stdin;
    public          postgres    false    234   Z�       �          0    40575 	   inventory 
   TABLE DATA           Q   COPY public.inventory (inventory_id, inventory_date, inventory_desc) FROM stdin;
    public          postgres    false    228   |�       �          0    40557 	   marketing 
   TABLE DATA           b   COPY public.marketing (marketing_id, marketing_name, marketing_type, marketing_promo) FROM stdin;
    public          postgres    false    224   ��       |          0    40539    payment 
   TABLE DATA           n   COPY public.payment (payment_id, payment_date, payment_method, payment_amount, payment_reference) FROM stdin;
    public          postgres    false    220   w�       ~          0    40548    products 
   TABLE DATA           �   COPY public.products (product_id, product_name, product_category, product_desc, product_price, product_type, product_quantity) FROM stdin;
    public          postgres    false    222   I�       z          0    40530    sales 
   TABLE DATA           E   COPY public.sales (sales_id, sales_category, sales_desc) FROM stdin;
    public          postgres    false    218   1�       �          0    40566 	   suppliers 
   TABLE DATA           �   COPY public.suppliers (supplier_id, supplier_name, supplier_telephone, supplier_adress, supplier_email, supplier_products, supplier_productsq, supplier_manufacture) FROM stdin;
    public          postgres    false    226   ��       �           0    0    costumers_costumer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.costumers_costumer_id_seq', 10, true);
          public          postgres    false    214            �           0    0 %   facts_inventory_facts_inventoy_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.facts_inventory_facts_inventoy_id_seq', 1, true);
          public          postgres    false    235            �           0    0    facts_marketing_factsmid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.facts_marketing_factsmid_seq', 3, true);
          public          postgres    false    231            �           0    0    facts_sales_factssid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.facts_sales_factssid_seq', 10, true);
          public          postgres    false    229            �           0    0 !   facts_summary_facts_sumary_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.facts_summary_facts_sumary_id_seq', 1, true);
          public          postgres    false    237            �           0    0    facts_suppliers_factssuppid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.facts_suppliers_factssuppid_seq', 1, true);
          public          postgres    false    233            �           0    0    inventory_inventory_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.inventory_inventory_id_seq', 2, true);
          public          postgres    false    227            �           0    0    marketing_marketing_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.marketing_marketing_id_seq', 3, true);
          public          postgres    false    223            �           0    0    payment_payment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payment_payment_id_seq', 10, true);
          public          postgres    false    219            �           0    0    products_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.products_product_id_seq', 10, true);
          public          postgres    false    221            �           0    0    sales_sales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sales_sales_id_seq', 10, true);
          public          postgres    false    217            �           0    0    suppliers_supplier_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.suppliers_supplier_id_seq', 1, true);
          public          postgres    false    225            �           2606    40528    cashier cashier_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cashier
    ADD CONSTRAINT cashier_pkey PRIMARY KEY (cashier_id);
 >   ALTER TABLE ONLY public.cashier DROP CONSTRAINT cashier_pkey;
       public            postgres    false    216            �           2606    40521    costumers costumers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.costumers
    ADD CONSTRAINT costumers_pkey PRIMARY KEY (costumer_id);
 B   ALTER TABLE ONLY public.costumers DROP CONSTRAINT costumers_pkey;
       public            postgres    false    215            �           2606    40670 $   facts_inventory facts_inventory_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_pkey PRIMARY KEY (facts_inventoy_id);
 N   ALTER TABLE ONLY public.facts_inventory DROP CONSTRAINT facts_inventory_pkey;
       public            postgres    false    236            �           2606    40631 $   facts_marketing facts_marketing_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_pkey PRIMARY KEY (factsmid);
 N   ALTER TABLE ONLY public.facts_marketing DROP CONSTRAINT facts_marketing_pkey;
       public            postgres    false    232            �           2606    40592    facts_sales facts_sales_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_pkey PRIMARY KEY (factssid);
 F   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_pkey;
       public            postgres    false    230            �           2606    40692     facts_summary facts_summary_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_pkey PRIMARY KEY (facts_sumary_id);
 J   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_pkey;
       public            postgres    false    238            �           2606    40648 $   facts_suppliers facts_suppliers_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_pkey PRIMARY KEY (factssuppid);
 N   ALTER TABLE ONLY public.facts_suppliers DROP CONSTRAINT facts_suppliers_pkey;
       public            postgres    false    234            �           2606    40582    inventory inventory_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventory_id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public            postgres    false    228            �           2606    40564    marketing marketing_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_pkey PRIMARY KEY (marketing_id);
 B   ALTER TABLE ONLY public.marketing DROP CONSTRAINT marketing_pkey;
       public            postgres    false    224            �           2606    40546    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    220            �           2606    40555    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    222            �           2606    40537    sales sales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sales_id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    218            �           2606    40573    suppliers suppliers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    226            �           2606    40676 1   facts_inventory facts_inventory_facts_s_idfi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_facts_s_idfi_fkey FOREIGN KEY (facts_s_idfi) REFERENCES public.facts_sales(factssid);
 [   ALTER TABLE ONLY public.facts_inventory DROP CONSTRAINT facts_inventory_facts_s_idfi_fkey;
       public          postgres    false    230    3274    236            �           2606    40681 3   facts_inventory facts_inventory_inventory_idfi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_inventory_idfi_fkey FOREIGN KEY (inventory_idfi) REFERENCES public.inventory(inventory_id);
 ]   ALTER TABLE ONLY public.facts_inventory DROP CONSTRAINT facts_inventory_inventory_idfi_fkey;
       public          postgres    false    236    228    3272            �           2606    40671 1   facts_inventory facts_inventory_product_idfi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_inventory
    ADD CONSTRAINT facts_inventory_product_idfi_fkey FOREIGN KEY (product_idfi) REFERENCES public.products(product_id);
 [   ALTER TABLE ONLY public.facts_inventory DROP CONSTRAINT facts_inventory_product_idfi_fkey;
       public          postgres    false    236    3266    222            �           2606    40637 2   facts_marketing facts_marketing_marketing_idm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_marketing_idm_fkey FOREIGN KEY (marketing_idm) REFERENCES public.marketing(marketing_id);
 \   ALTER TABLE ONLY public.facts_marketing DROP CONSTRAINT facts_marketing_marketing_idm_fkey;
       public          postgres    false    3268    224    232            �           2606    40632 0   facts_marketing facts_marketing_product_idm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_marketing
    ADD CONSTRAINT facts_marketing_product_idm_fkey FOREIGN KEY (product_idm) REFERENCES public.products(product_id);
 Z   ALTER TABLE ONLY public.facts_marketing DROP CONSTRAINT facts_marketing_product_idm_fkey;
       public          postgres    false    222    3266    232            �           2606    40608 (   facts_sales facts_sales_cashier_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_cashier_ids_fkey FOREIGN KEY (cashier_ids) REFERENCES public.cashier(cashier_id);
 R   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_cashier_ids_fkey;
       public          postgres    false    216    230    3260            �           2606    40593 )   facts_sales facts_sales_costumer_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_costumer_ids_fkey FOREIGN KEY (costumer_ids) REFERENCES public.costumers(costumer_id);
 S   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_costumer_ids_fkey;
       public          postgres    false    230    3258    215            �           2606    40618 *   facts_sales facts_sales_marketing_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_marketing_ids_fkey FOREIGN KEY (marketing_ids) REFERENCES public.marketing(marketing_id);
 T   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_marketing_ids_fkey;
       public          postgres    false    3268    230    224            �           2606    40613 (   facts_sales facts_sales_payment_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_payment_ids_fkey FOREIGN KEY (payment_ids) REFERENCES public.payment(payment_id);
 R   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_payment_ids_fkey;
       public          postgres    false    230    220    3264            �           2606    40603 (   facts_sales facts_sales_product_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_product_ids_fkey FOREIGN KEY (product_ids) REFERENCES public.products(product_id);
 R   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_product_ids_fkey;
       public          postgres    false    230    3266    222            �           2606    40598 &   facts_sales facts_sales_sales_ids_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_sales
    ADD CONSTRAINT facts_sales_sales_ids_fkey FOREIGN KEY (sales_ids) REFERENCES public.sales(sales_id);
 P   ALTER TABLE ONLY public.facts_sales DROP CONSTRAINT facts_sales_sales_ids_fkey;
       public          postgres    false    218    3262    230            �           2606    40708 2   facts_summary facts_summary_facts_inventoy_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_facts_inventoy_id_fkey FOREIGN KEY (facts_inventoy_id) REFERENCES public.facts_inventory(facts_inventoy_id);
 \   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_facts_inventoy_id_fkey;
       public          postgres    false    3280    236    238            �           2606    40698 )   facts_summary facts_summary_factsmid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factsmid_fkey FOREIGN KEY (factsmid) REFERENCES public.facts_marketing(factsmid);
 S   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_factsmid_fkey;
       public          postgres    false    3276    232    238            �           2606    40693 )   facts_summary facts_summary_factssid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factssid_fkey FOREIGN KEY (factssid) REFERENCES public.facts_sales(factssid);
 S   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_factssid_fkey;
       public          postgres    false    238    230    3274            �           2606    40703 ,   facts_summary facts_summary_factssuppid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_summary
    ADD CONSTRAINT facts_summary_factssuppid_fkey FOREIGN KEY (factssuppid) REFERENCES public.facts_suppliers(factssuppid);
 V   ALTER TABLE ONLY public.facts_summary DROP CONSTRAINT facts_summary_factssuppid_fkey;
       public          postgres    false    3278    238    234            �           2606    40659 3   facts_suppliers facts_suppliers_inventory_idfs_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_inventory_idfs_fkey FOREIGN KEY (inventory_idfs) REFERENCES public.inventory(inventory_id);
 ]   ALTER TABLE ONLY public.facts_suppliers DROP CONSTRAINT facts_suppliers_inventory_idfs_fkey;
       public          postgres    false    228    234    3272            �           2606    40649 1   facts_suppliers facts_suppliers_product_idfs_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_product_idfs_fkey FOREIGN KEY (product_idfs) REFERENCES public.products(product_id);
 [   ALTER TABLE ONLY public.facts_suppliers DROP CONSTRAINT facts_suppliers_product_idfs_fkey;
       public          postgres    false    234    222    3266            �           2606    40654 2   facts_suppliers facts_suppliers_supplier_idfs_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facts_suppliers
    ADD CONSTRAINT facts_suppliers_supplier_idfs_fkey FOREIGN KEY (supplier_idfs) REFERENCES public.suppliers(supplier_id);
 \   ALTER TABLE ONLY public.facts_suppliers DROP CONSTRAINT facts_suppliers_supplier_idfs_fkey;
       public          postgres    false    234    226    3270            x   U   x����  �t�N`�hL[S 1���������>H�����iN�Nh�.k1A�k8X�pʛ�8�[q�?���+� |�My      w   �  x�]�M��8���)
�vD�֯w]��n:4��$#m�F�Ѹ��VC�$��M����$7O6%|��z%�2tV+��D#�'�e!��DL/�)+�ĥmKX��4r}�߿	�Lel�������s]՟*Y�?k�^����M{zk{��C����0���,�Pϥ�,dZ�@%Y�G���e��J�AX���\j��V尶���)*����%�5�ֱ�}{h���B�Ӈ��|X%�����N���,Y���%a�>�x�C�d��S��*�Z�7�E�m(R��r�!��ߎ�s����w}��==l��[������-m)!�+e��3t�ܰ$%
B�{4����R]�
�H��'��'�
Ԅ�d��S;�c���N����ZS�YLJ�Hg������Pټ���3�ZB��I��6����������׶oN_�����뎧A���Nb�J琤�Q9�wU�,!������V�TN��d���
K��C��KE���ۊ�N}ߴ��?_���drE�F�馕�x/,�}{�8	XT!\s��Ȭ搫�0��k�Kr�C��(r�������LJ2�'��k����o�'uo6Mb��s��@�c�0 ���A�K��z S�c��Nnƞꅽ��A�!'�,��4��q��Kc�P�E2��#����&��淰I_���7+�'�n!o�zR?M�$l��=z��hJ����@)�[c�ݝ���ۖ����9�M����~�J��'��/��F�      �      x�3�4C#c]#]#�=... +��      �   �   x�u��
1E��Wd�r�܆6b��8i����cRg��.!�Xeg�_�[��Q֜ ��N�U�� #|��P;�f���+��G�jDC���V��ګɧ��uj��H�2����	r�!և�<;�%E��~���;��2      �   �   x�M��� ߻�p�H�M鿎��:�%,�����eyV���J=�eE���Ej�2H3S��Ά$���Q�/���{��<��y�=B��P��6u$�����I�s��/ʰk=�{u�Ԇ��C���-C      �      x�3�4�@�=... �      �      x�3�4A�=... ��      �   T   x�3�4200�50"NWgWW?gG/GWCϐ .#dUΎA~� � �`_OG�`G'W_�`#S� �=... dV[      �   �   x�eͱ�0���
/���� ��"�����]a ���	�t㽻�(y��,�	����IF��:��n����������Z�>�
�}1��6i�����ǾJ�I�aKj~�	���^�Ĩ!e)��~^;�ެF2{      |   �   x�}�K�0D��)�@�0��	�MP�QW��9�E�����3,b�j[A<�G	29�Eϓ���-	zv�F�̓6&}���*��A
d�qN������W���X�Q\�����D���#�雴�R>���­�7i{46Kr�_��RV��R�MY}���c��n����>jJ�? �e�&X�g��z��_�      ~   �  x��S[��0��N�4�#�d?i�q��Ŭ$/�E/�3�b���m�ǀ������=���.�w�,�Z‖N�c���(P7�<�̊���4`).��	'�n L��D	���HxA��9�A��'���('��3m9��=�$���i�����a�������B�eG)BS�-��T�xJG
g���L�s�%\�R&=�e�O98��l^�ӻ�tp�t��>������(X7��Q�j����p�bÃ�mg^ ������EL3}0�꣣�BV��̉F���cq���v]5y؁wV�%h+��%x�Y���F�q��H��[���@]X.X�h՜ɩu�GmV�/xV�"�rd��$d�i�:��D���A�-(:2�3�V�8��zj��K����4Ru��m[�Wx�9	s]6�����׈��ۋ0uQ���Gv<���̀�(^�U��߿Hs�N��e���_]��]��ύ1��=�      z   [   x�3������s�s�qTp�Sp�Q�q��@r�\F��!�AH�|B<]�\��qK���2�-eF���q`A��D�24�mO� 3�M�      �   �   x�e��
�0Eד���$*�ChJHZ_�n�B��~��..\�=pX���	�4K*W9ho�3�l���q+r[lK�/����[��>�K8ާ0�Q7O`Y�١�3a��К�����D��~/����+���_Sq��_��*�     