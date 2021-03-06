PGDMP         4                z         
   ParkHereDB    13.3    13.3     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16398 
   ParkHereDB    DATABASE     p   CREATE DATABASE "ParkHereDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "ParkHereDB";
                postgres    false            ?            1259    16430    slot    TABLE     ?   CREATE TABLE public.slot (
    slotid integer NOT NULL,
    currentvehiclenumber character varying(50),
    status character varying(50)
);
    DROP TABLE public.slot;
       public         heap    postgres    false            ?            1259    16428    slot_slotid_seq    SEQUENCE     ?   CREATE SEQUENCE public.slot_slotid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.slot_slotid_seq;
       public          postgres    false    202            ?           0    0    slot_slotid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.slot_slotid_seq OWNED BY public.slot.slotid;
          public          postgres    false    201            ?            1259    16416    vehicle    TABLE     ?   CREATE TABLE public.vehicle (
    vehiclenumber character varying(50) NOT NULL,
    checkingdate date DEFAULT CURRENT_DATE NOT NULL,
    ownernic character varying(12)
);
    DROP TABLE public.vehicle;
       public         heap    postgres    false            '           2604    16433    slot slotid    DEFAULT     j   ALTER TABLE ONLY public.slot ALTER COLUMN slotid SET DEFAULT nextval('public.slot_slotid_seq'::regclass);
 :   ALTER TABLE public.slot ALTER COLUMN slotid DROP DEFAULT;
       public          postgres    false    202    201    202            ?          0    16430    slot 
   TABLE DATA           D   COPY public.slot (slotid, currentvehiclenumber, status) FROM stdin;
    public          postgres    false    202   ?       ?          0    16416    vehicle 
   TABLE DATA           H   COPY public.vehicle (vehiclenumber, checkingdate, ownernic) FROM stdin;
    public          postgres    false    200          ?           0    0    slot_slotid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.slot_slotid_seq', 5, true);
          public          postgres    false    201            +           2606    16435    slot slot_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_pkey PRIMARY KEY (slotid);
 8   ALTER TABLE ONLY public.slot DROP CONSTRAINT slot_pkey;
       public            postgres    false    202            )           2606    16421    vehicle vehicle_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vehiclenumber);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public            postgres    false    200            ?   D   x?3?ttt?53????/?KM?2?vѵ4???9??=?L?
?t?ML͠???Na??f?P?=... ??+      ?   _   x?e?=?0?Y??3bLu7q?=?t?n???pwdQ?(a"$?3?Ya?kGK_6?ؠ??Y?r??ט?r?呃o7Jl??¹tf x:0?     