PGDMP                           z            mydb    14.1    14.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16513    mydb    DATABASE     _   CREATE DATABASE mydb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Thai_Thailand.874';
    DROP DATABASE mydb;
                postgres    false            �            1259    16531 
   generation    TABLE     e   CREATE TABLE public.generation (
    gen_id integer NOT NULL,
    gen_name character varying(255)
);
    DROP TABLE public.generation;
       public         heap    postgres    false            �            1259    16544    member    TABLE       CREATE TABLE public.member (
    mem_id integer NOT NULL,
    name character varying(255) NOT NULL,
    nickname character varying(255) NOT NULL,
    channel character varying(255) NOT NULL,
    height integer NOT NULL,
    debut_date date NOT NULL,
    birth_date date NOT NULL
);
    DROP TABLE public.member;
       public         heap    postgres    false            �            1259    16537 
   member_gen    TABLE     �   CREATE TABLE public.member_gen (
    member_gen_id integer NOT NULL,
    mem_id integer NOT NULL,
    gen_id integer NOT NULL
);
    DROP TABLE public.member_gen;
       public         heap    postgres    false            �            1259    16536    member_gen_member_gen_id_seq    SEQUENCE     �   CREATE SEQUENCE public.member_gen_member_gen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.member_gen_member_gen_id_seq;
       public          postgres    false    211                       0    0    member_gen_member_gen_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.member_gen_member_gen_id_seq OWNED BY public.member_gen.member_gen_id;
          public          postgres    false    210            �            1259    16543    member_mem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.member_mem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.member_mem_id_seq;
       public          postgres    false    213                       0    0    member_mem_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.member_mem_id_seq OWNED BY public.member.mem_id;
          public          postgres    false    212            f           2604    16547    member mem_id    DEFAULT     n   ALTER TABLE ONLY public.member ALTER COLUMN mem_id SET DEFAULT nextval('public.member_mem_id_seq'::regclass);
 <   ALTER TABLE public.member ALTER COLUMN mem_id DROP DEFAULT;
       public          postgres    false    213    212    213            e           2604    16540    member_gen member_gen_id    DEFAULT     �   ALTER TABLE ONLY public.member_gen ALTER COLUMN member_gen_id SET DEFAULT nextval('public.member_gen_member_gen_id_seq'::regclass);
 G   ALTER TABLE public.member_gen ALTER COLUMN member_gen_id DROP DEFAULT;
       public          postgres    false    210    211    211            �          0    16531 
   generation 
   TABLE DATA           6   COPY public.generation (gen_id, gen_name) FROM stdin;
    public          postgres    false    209   =       �          0    16544    member 
   TABLE DATA           a   COPY public.member (mem_id, name, nickname, channel, height, debut_date, birth_date) FROM stdin;
    public          postgres    false    213   f       �          0    16537 
   member_gen 
   TABLE DATA           C   COPY public.member_gen (member_gen_id, mem_id, gen_id) FROM stdin;
    public          postgres    false    211   )                  0    0    member_gen_member_gen_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.member_gen_member_gen_id_seq', 3, true);
          public          postgres    false    210                       0    0    member_mem_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.member_mem_id_seq', 3, true);
          public          postgres    false    212            h           2606    16535    generation generation_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.generation
    ADD CONSTRAINT generation_pkey PRIMARY KEY (gen_id);
 D   ALTER TABLE ONLY public.generation DROP CONSTRAINT generation_pkey;
       public            postgres    false    209            j           2606    16542    member_gen member_gen_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.member_gen
    ADD CONSTRAINT member_gen_pkey PRIMARY KEY (member_gen_id);
 D   ALTER TABLE ONLY public.member_gen DROP CONSTRAINT member_gen_pkey;
       public            postgres    false    211            l           2606    16551    member member_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (mem_id);
 <   ALTER TABLE ONLY public.member DROP CONSTRAINT member_pkey;
       public            postgres    false    213            �      x�3�����W�,������� *�A      �   �   x�eα�0���S�9մT$�H"��1!P!��|z��tw˗�`����v�ߡ�˂ԙ[�cM�2/�}O���/���S�2U���.�z�{	v�\*�K������~\X��SЎ�!�1k�	^i��Y�RA���br�c0�&/ëq��G�2�E��Q:5      �      x�3�4�4�2�4�Ɯ�@2F��� !��     