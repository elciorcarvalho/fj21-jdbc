PGDMP     $                	    v            fj21    9.6.7    9.6.7     N           0    0    ENCODING    ENCODING         SET client_encoding = 'LATIN1';
                       false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            P           1262    17225    fj21    DATABASE     �   CREATE DATABASE fj21 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE fj21;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            Q           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            R           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17239    contatos    TABLE     �   CREATE TABLE contatos (
    id integer NOT NULL,
    nome character varying(255),
    email character varying(255),
    endereco character varying(255),
    datanascimento date
);
    DROP TABLE public.contatos;
       public         postgres    false    3            �            1259    17237    contatos_id_seq    SEQUENCE     q   CREATE SEQUENCE contatos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contatos_id_seq;
       public       postgres    false    186    3            S           0    0    contatos_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE contatos_id_seq OWNED BY contatos.id;
            public       postgres    false    185            �           2604    17242    contatos id    DEFAULT     \   ALTER TABLE ONLY contatos ALTER COLUMN id SET DEFAULT nextval('contatos_id_seq'::regclass);
 :   ALTER TABLE public.contatos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            K          0    17239    contatos 
   TABLE DATA               F   COPY contatos (id, nome, email, endereco, datanascimento) FROM stdin;
    public       postgres    false    186   �       T           0    0    contatos_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('contatos_id_seq', 2, true);
            public       postgres    false    185            �           2606    17247    contatos pk_id_contatos 
   CONSTRAINT     N   ALTER TABLE ONLY contatos
    ADD CONSTRAINT pk_id_contatos PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.contatos DROP CONSTRAINT pk_id_contatos;
       public         postgres    false    186    186            K   >   x�3�tNL�)��L��+I,�wHs���s9��R�����-L9�-tt-�b���� &QE     