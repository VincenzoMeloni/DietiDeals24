PGDMP     .                    {            dietideals24    14.4    14.4 F    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    49769    dietideals24    DATABASE     h   CREATE DATABASE dietideals24 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE dietideals24;
                postgres    false            �            1259    49781    asta    TABLE     �   CREATE TABLE public.asta (
    id integer NOT NULL,
    id_creatore integer NOT NULL,
    nome character varying(32) NOT NULL,
    descrizione character varying(256),
    categoria character varying(32) NOT NULL,
    foto bytea
);
    DROP TABLE public.asta;
       public         heap    postgres    false            �            1259    49780    asta_id_creatore_seq    SEQUENCE     �   CREATE SEQUENCE public.asta_id_creatore_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.asta_id_creatore_seq;
       public          postgres    false    213            :           0    0    asta_id_creatore_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.asta_id_creatore_seq OWNED BY public.asta.id_creatore;
          public          postgres    false    212            �            1259    49779    asta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.asta_id_seq;
       public          postgres    false    213            ;           0    0    asta_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.asta_id_seq OWNED BY public.asta.id;
          public          postgres    false    211            �            1259    49853    asta_inversa    TABLE     �   CREATE TABLE public.asta_inversa (
    id_asta integer NOT NULL,
    prezzo double precision NOT NULL,
    scadenza date NOT NULL
);
     DROP TABLE public.asta_inversa;
       public         heap    postgres    false            �            1259    49852    asta_inversa_id_asta_seq    SEQUENCE     �   CREATE SEQUENCE public.asta_inversa_id_asta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.asta_inversa_id_asta_seq;
       public          postgres    false    226            <           0    0    asta_inversa_id_asta_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.asta_inversa_id_asta_seq OWNED BY public.asta_inversa.id_asta;
          public          postgres    false    225            �            1259    49833    asta_ribasso    TABLE     �   CREATE TABLE public.asta_ribasso (
    id_asta integer NOT NULL,
    prezzo double precision NOT NULL,
    timer date NOT NULL,
    decremento double precision NOT NULL,
    minimo double precision NOT NULL
);
     DROP TABLE public.asta_ribasso;
       public         heap    postgres    false            �            1259    49832    asta_ribasso_id_asta_seq    SEQUENCE     �   CREATE SEQUENCE public.asta_ribasso_id_asta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.asta_ribasso_id_asta_seq;
       public          postgres    false    222            =           0    0    asta_ribasso_id_asta_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.asta_ribasso_id_asta_seq OWNED BY public.asta_ribasso.id_asta;
          public          postgres    false    221            �            1259    49843    asta_silenziosa    TABLE     b   CREATE TABLE public.asta_silenziosa (
    id_asta integer NOT NULL,
    scadenza date NOT NULL
);
 #   DROP TABLE public.asta_silenziosa;
       public         heap    postgres    false            �            1259    49842    asta_silenziosa_id_asta_seq    SEQUENCE     �   CREATE SEQUENCE public.asta_silenziosa_id_asta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.asta_silenziosa_id_asta_seq;
       public          postgres    false    224            >           0    0    asta_silenziosa_id_asta_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.asta_silenziosa_id_asta_seq OWNED BY public.asta_silenziosa.id_asta;
          public          postgres    false    223            �            1259    49813 
   compratore    TABLE     C   CREATE TABLE public.compratore (
    id_utente integer NOT NULL
);
    DROP TABLE public.compratore;
       public         heap    postgres    false            �            1259    49812    compratore_id_utente_seq    SEQUENCE     �   CREATE SEQUENCE public.compratore_id_utente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.compratore_id_utente_seq;
       public          postgres    false    218            ?           0    0    compratore_id_utente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.compratore_id_utente_seq OWNED BY public.compratore.id_utente;
          public          postgres    false    217            �            1259    49797    offerta    TABLE     �   CREATE TABLE public.offerta (
    id_utente integer NOT NULL,
    id_asta integer NOT NULL,
    valore double precision NOT NULL,
    data date NOT NULL
);
    DROP TABLE public.offerta;
       public         heap    postgres    false            �            1259    49796    offerta_id_asta_seq    SEQUENCE     �   CREATE SEQUENCE public.offerta_id_asta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.offerta_id_asta_seq;
       public          postgres    false    216            @           0    0    offerta_id_asta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.offerta_id_asta_seq OWNED BY public.offerta.id_asta;
          public          postgres    false    215            �            1259    49795    offerta_id_utente_seq    SEQUENCE     �   CREATE SEQUENCE public.offerta_id_utente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.offerta_id_utente_seq;
       public          postgres    false    216            A           0    0    offerta_id_utente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.offerta_id_utente_seq OWNED BY public.offerta.id_utente;
          public          postgres    false    214            �            1259    49771    utente    TABLE     8  CREATE TABLE public.utente (
    id integer NOT NULL,
    username character varying(32) NOT NULL,
    email character varying(64) NOT NULL,
    password character varying(32) NOT NULL,
    biografia character varying(256),
    sitoweb character varying(32),
    paese character varying(32),
    avatar bytea
);
    DROP TABLE public.utente;
       public         heap    postgres    false            �            1259    49770    utente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.utente_id_seq;
       public          postgres    false    210            B           0    0    utente_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.utente_id_seq OWNED BY public.utente.id;
          public          postgres    false    209            �            1259    49823 	   venditore    TABLE     B   CREATE TABLE public.venditore (
    id_utente integer NOT NULL
);
    DROP TABLE public.venditore;
       public         heap    postgres    false            �            1259    49822    venditore_id_utente_seq    SEQUENCE     �   CREATE SEQUENCE public.venditore_id_utente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.venditore_id_utente_seq;
       public          postgres    false    220            C           0    0    venditore_id_utente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.venditore_id_utente_seq OWNED BY public.venditore.id_utente;
          public          postgres    false    219            �           2604    49784    asta id    DEFAULT     b   ALTER TABLE ONLY public.asta ALTER COLUMN id SET DEFAULT nextval('public.asta_id_seq'::regclass);
 6   ALTER TABLE public.asta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    211    213            �           2604    49785    asta id_creatore    DEFAULT     t   ALTER TABLE ONLY public.asta ALTER COLUMN id_creatore SET DEFAULT nextval('public.asta_id_creatore_seq'::regclass);
 ?   ALTER TABLE public.asta ALTER COLUMN id_creatore DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    49856    asta_inversa id_asta    DEFAULT     |   ALTER TABLE ONLY public.asta_inversa ALTER COLUMN id_asta SET DEFAULT nextval('public.asta_inversa_id_asta_seq'::regclass);
 C   ALTER TABLE public.asta_inversa ALTER COLUMN id_asta DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    49836    asta_ribasso id_asta    DEFAULT     |   ALTER TABLE ONLY public.asta_ribasso ALTER COLUMN id_asta SET DEFAULT nextval('public.asta_ribasso_id_asta_seq'::regclass);
 C   ALTER TABLE public.asta_ribasso ALTER COLUMN id_asta DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    49846    asta_silenziosa id_asta    DEFAULT     �   ALTER TABLE ONLY public.asta_silenziosa ALTER COLUMN id_asta SET DEFAULT nextval('public.asta_silenziosa_id_asta_seq'::regclass);
 F   ALTER TABLE public.asta_silenziosa ALTER COLUMN id_asta DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    49816    compratore id_utente    DEFAULT     |   ALTER TABLE ONLY public.compratore ALTER COLUMN id_utente SET DEFAULT nextval('public.compratore_id_utente_seq'::regclass);
 C   ALTER TABLE public.compratore ALTER COLUMN id_utente DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    49800    offerta id_utente    DEFAULT     v   ALTER TABLE ONLY public.offerta ALTER COLUMN id_utente SET DEFAULT nextval('public.offerta_id_utente_seq'::regclass);
 @   ALTER TABLE public.offerta ALTER COLUMN id_utente DROP DEFAULT;
       public          postgres    false    214    216    216            �           2604    49801    offerta id_asta    DEFAULT     r   ALTER TABLE ONLY public.offerta ALTER COLUMN id_asta SET DEFAULT nextval('public.offerta_id_asta_seq'::regclass);
 >   ALTER TABLE public.offerta ALTER COLUMN id_asta DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    49774 	   utente id    DEFAULT     f   ALTER TABLE ONLY public.utente ALTER COLUMN id SET DEFAULT nextval('public.utente_id_seq'::regclass);
 8   ALTER TABLE public.utente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    49826    venditore id_utente    DEFAULT     z   ALTER TABLE ONLY public.venditore ALTER COLUMN id_utente SET DEFAULT nextval('public.venditore_id_utente_seq'::regclass);
 B   ALTER TABLE public.venditore ALTER COLUMN id_utente DROP DEFAULT;
       public          postgres    false    220    219    220            &          0    49781    asta 
   TABLE DATA           S   COPY public.asta (id, id_creatore, nome, descrizione, categoria, foto) FROM stdin;
    public          postgres    false    213   �N       3          0    49853    asta_inversa 
   TABLE DATA           A   COPY public.asta_inversa (id_asta, prezzo, scadenza) FROM stdin;
    public          postgres    false    226   �N       /          0    49833    asta_ribasso 
   TABLE DATA           R   COPY public.asta_ribasso (id_asta, prezzo, timer, decremento, minimo) FROM stdin;
    public          postgres    false    222   O       1          0    49843    asta_silenziosa 
   TABLE DATA           <   COPY public.asta_silenziosa (id_asta, scadenza) FROM stdin;
    public          postgres    false    224   3O       +          0    49813 
   compratore 
   TABLE DATA           /   COPY public.compratore (id_utente) FROM stdin;
    public          postgres    false    218   PO       )          0    49797    offerta 
   TABLE DATA           C   COPY public.offerta (id_utente, id_asta, valore, data) FROM stdin;
    public          postgres    false    216   mO       #          0    49771    utente 
   TABLE DATA           b   COPY public.utente (id, username, email, password, biografia, sitoweb, paese, avatar) FROM stdin;
    public          postgres    false    210   �O       -          0    49823 	   venditore 
   TABLE DATA           .   COPY public.venditore (id_utente) FROM stdin;
    public          postgres    false    220   �O       D           0    0    asta_id_creatore_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.asta_id_creatore_seq', 1, false);
          public          postgres    false    212            E           0    0    asta_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.asta_id_seq', 1, false);
          public          postgres    false    211            F           0    0    asta_inversa_id_asta_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.asta_inversa_id_asta_seq', 1, false);
          public          postgres    false    225            G           0    0    asta_ribasso_id_asta_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.asta_ribasso_id_asta_seq', 1, false);
          public          postgres    false    221            H           0    0    asta_silenziosa_id_asta_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.asta_silenziosa_id_asta_seq', 1, false);
          public          postgres    false    223            I           0    0    compratore_id_utente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.compratore_id_utente_seq', 1, false);
          public          postgres    false    217            J           0    0    offerta_id_asta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.offerta_id_asta_seq', 1, false);
          public          postgres    false    215            K           0    0    offerta_id_utente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.offerta_id_utente_seq', 1, false);
          public          postgres    false    214            L           0    0    utente_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.utente_id_seq', 1, false);
          public          postgres    false    209            M           0    0    venditore_id_utente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.venditore_id_utente_seq', 1, false);
          public          postgres    false    219            �           2606    49789    asta asta_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.asta
    ADD CONSTRAINT asta_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.asta DROP CONSTRAINT asta_pkey;
       public            postgres    false    213            �           2606    49778    utente utente_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    210            �           2606    49790    asta asta_id_creatore_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.asta
    ADD CONSTRAINT asta_id_creatore_fkey FOREIGN KEY (id_creatore) REFERENCES public.utente(id);
 D   ALTER TABLE ONLY public.asta DROP CONSTRAINT asta_id_creatore_fkey;
       public          postgres    false    213    210    3212            �           2606    49857 &   asta_inversa asta_inversa_id_asta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asta_inversa
    ADD CONSTRAINT asta_inversa_id_asta_fkey FOREIGN KEY (id_asta) REFERENCES public.asta(id);
 P   ALTER TABLE ONLY public.asta_inversa DROP CONSTRAINT asta_inversa_id_asta_fkey;
       public          postgres    false    226    213    3214            �           2606    49837 &   asta_ribasso asta_ribasso_id_asta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asta_ribasso
    ADD CONSTRAINT asta_ribasso_id_asta_fkey FOREIGN KEY (id_asta) REFERENCES public.asta(id);
 P   ALTER TABLE ONLY public.asta_ribasso DROP CONSTRAINT asta_ribasso_id_asta_fkey;
       public          postgres    false    213    222    3214            �           2606    49847 ,   asta_silenziosa asta_silenziosa_id_asta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asta_silenziosa
    ADD CONSTRAINT asta_silenziosa_id_asta_fkey FOREIGN KEY (id_asta) REFERENCES public.asta(id);
 V   ALTER TABLE ONLY public.asta_silenziosa DROP CONSTRAINT asta_silenziosa_id_asta_fkey;
       public          postgres    false    213    224    3214            �           2606    49817 $   compratore compratore_id_utente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compratore
    ADD CONSTRAINT compratore_id_utente_fkey FOREIGN KEY (id_utente) REFERENCES public.utente(id);
 N   ALTER TABLE ONLY public.compratore DROP CONSTRAINT compratore_id_utente_fkey;
       public          postgres    false    3212    210    218            �           2606    49807    offerta offerta_id_asta_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.offerta
    ADD CONSTRAINT offerta_id_asta_fkey FOREIGN KEY (id_asta) REFERENCES public.asta(id);
 F   ALTER TABLE ONLY public.offerta DROP CONSTRAINT offerta_id_asta_fkey;
       public          postgres    false    3214    213    216            �           2606    49802    offerta offerta_id_utente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.offerta
    ADD CONSTRAINT offerta_id_utente_fkey FOREIGN KEY (id_utente) REFERENCES public.utente(id);
 H   ALTER TABLE ONLY public.offerta DROP CONSTRAINT offerta_id_utente_fkey;
       public          postgres    false    216    210    3212            �           2606    49827 "   venditore venditore_id_utente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venditore
    ADD CONSTRAINT venditore_id_utente_fkey FOREIGN KEY (id_utente) REFERENCES public.utente(id);
 L   ALTER TABLE ONLY public.venditore DROP CONSTRAINT venditore_id_utente_fkey;
       public          postgres    false    220    210    3212            &      x������ � �      3      x������ � �      /      x������ � �      1      x������ � �      +      x������ � �      )      x������ � �      #      x������ � �      -      x������ � �     