PGDMP     '                    y         	   open-shop    12.3    12.3 K    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    16504 	   open-shop    DATABASE     �   CREATE DATABASE "open-shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE "open-shop";
                postgres    false            �            1259    17007 
   categories    TABLE     �   CREATE TABLE public.categories (
    id bigint NOT NULL,
    libelle character varying(255) NOT NULL,
    description text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    17005    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    216            x           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    215            �            1259    16931    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16929    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    208            y           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    207            �            1259    16903 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16901    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    203            z           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    202            �            1259    16922    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    17020    produit_user    TABLE     �   CREATE TABLE public.produit_user (
    id bigint NOT NULL,
    produit_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.produit_user;
       public         heap    postgres    false            �            1259    17018    produit_user_id_seq    SEQUENCE     |   CREATE SEQUENCE public.produit_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.produit_user_id_seq;
       public          postgres    false    218            {           0    0    produit_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.produit_user_id_seq OWNED BY public.produit_user.id;
          public          postgres    false    217            �            1259    16945    produits    TABLE     S  CREATE TABLE public.produits (
    id bigint NOT NULL,
    designation character varying(255) NOT NULL,
    prix integer NOT NULL,
    description text,
    quantite integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    category_id integer,
    image character varying(255)
);
    DROP TABLE public.produits;
       public         heap    postgres    false            �            1259    16943    produits_id_seq    SEQUENCE     x   CREATE SEQUENCE public.produits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produits_id_seq;
       public          postgres    false    210            |           0    0    produits_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produits_id_seq OWNED BY public.produits.id;
          public          postgres    false    209            �            1259    17028    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    profil character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    17026    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    220            }           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    219            �            1259    16958    tests    TABLE     �   CREATE TABLE public.tests (
    id bigint NOT NULL,
    nom character varying(255) NOT NULL,
    annee integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.tests;
       public         heap    postgres    false            �            1259    16956    tests_id_seq    SEQUENCE     u   CREATE SEQUENCE public.tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tests_id_seq;
       public          postgres    false    212            ~           0    0    tests_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;
          public          postgres    false    211            �            1259    16911    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    role_id integer,
    phone_number character varying(255) DEFAULT '22672835047'::character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16909    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    205                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204            �            1259    16966 	   vehicules    TABLE     +  CREATE TABLE public.vehicules (
    id bigint NOT NULL,
    nom character varying(255) NOT NULL,
    marque character varying(255) NOT NULL,
    description text NOT NULL,
    quantite integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.vehicules;
       public         heap    postgres    false            �            1259    16964    vehicule_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vehicule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vehicule_id_seq;
       public          postgres    false    214            �           0    0    vehicule_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.vehicule_id_seq OWNED BY public.vehicules.id;
          public          postgres    false    213            �
           2604    17010    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �
           2604    16934    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            �
           2604    16906    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    17023    produit_user id    DEFAULT     r   ALTER TABLE ONLY public.produit_user ALTER COLUMN id SET DEFAULT nextval('public.produit_user_id_seq'::regclass);
 >   ALTER TABLE public.produit_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �
           2604    16948    produits id    DEFAULT     j   ALTER TABLE ONLY public.produits ALTER COLUMN id SET DEFAULT nextval('public.produits_id_seq'::regclass);
 :   ALTER TABLE public.produits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �
           2604    17031    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �
           2604    16961    tests id    DEFAULT     d   ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);
 7   ALTER TABLE public.tests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �
           2604    16914    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16969    vehicules id    DEFAULT     k   ALTER TABLE ONLY public.vehicules ALTER COLUMN id SET DEFAULT nextval('public.vehicule_id_seq'::regclass);
 ;   ALTER TABLE public.vehicules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            m          0    17007 
   categories 
   TABLE DATA           V   COPY public.categories (id, libelle, description, created_at, updated_at) FROM stdin;
    public          postgres    false    216   dT       e          0    16931    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    208   �T       `          0    16903 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    203   U       c          0    16922    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    206   +V       o          0    17020    produit_user 
   TABLE DATA           W   COPY public.produit_user (id, produit_id, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    218   HV       g          0    16945    produits 
   TABLE DATA           |   COPY public.produits (id, designation, prix, description, quantite, created_at, updated_at, category_id, image) FROM stdin;
    public          postgres    false    210   �V       q          0    17028    roles 
   TABLE DATA           C   COPY public.roles (id, profil, created_at, updated_at) FROM stdin;
    public          postgres    false    220   �      i          0    16958    tests 
   TABLE DATA           G   COPY public.tests (id, nom, annee, created_at, updated_at) FROM stdin;
    public          postgres    false    212   h      b          0    16911    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role_id, phone_number) FROM stdin;
    public          postgres    false    205   �      k          0    16966 	   vehicules 
   TABLE DATA           c   COPY public.vehicules (id, nom, marque, description, quantite, created_at, updated_at) FROM stdin;
    public          postgres    false    214   �      �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 3, true);
          public          postgres    false    215            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    207            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 19, true);
          public          postgres    false    202            �           0    0    produit_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.produit_user_id_seq', 8, true);
          public          postgres    false    217            �           0    0    produits_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.produits_id_seq', 529, true);
          public          postgres    false    209            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 21, true);
          public          postgres    false    219            �           0    0    tests_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tests_id_seq', 1, false);
          public          postgres    false    211            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 54, true);
          public          postgres    false    204            �           0    0    vehicule_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vehicule_id_seq', 3, true);
          public          postgres    false    213            �
           2606    17017 $   categories categories_libelle_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_libelle_unique UNIQUE (libelle);
 N   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_libelle_unique;
       public            postgres    false    216            �
           2606    17015    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    216            �
           2606    16940    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    208            �
           2606    16942 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    208            �
           2606    16908    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    203            �
           2606    17025    produit_user produit_user_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.produit_user
    ADD CONSTRAINT produit_user_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.produit_user DROP CONSTRAINT produit_user_pkey;
       public            postgres    false    218            �
           2606    16955 $   produits produits_designation_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.produits
    ADD CONSTRAINT produits_designation_unique UNIQUE (designation);
 N   ALTER TABLE ONLY public.produits DROP CONSTRAINT produits_designation_unique;
       public            postgres    false    210            �
           2606    16953    produits produits_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produits
    ADD CONSTRAINT produits_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produits DROP CONSTRAINT produits_pkey;
       public            postgres    false    210            �
           2606    17033    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    220            �
           2606    16963    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    212            �
           2606    16921    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    205            �
           2606    16919    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205            �
           2606    16976    vehicules vehicule_nom_unique 
   CONSTRAINT     W   ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT vehicule_nom_unique UNIQUE (nom);
 G   ALTER TABLE ONLY public.vehicules DROP CONSTRAINT vehicule_nom_unique;
       public            postgres    false    214            �
           2606    16974    vehicules vehicule_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT vehicule_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.vehicules DROP CONSTRAINT vehicule_pkey;
       public            postgres    false    214            �
           1259    16928    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    206            m   |   x�3��M,9��(35�X�5'5��(?/��4���959S!��D!'Q!%�8�(��$3?�V�ť����P��D��X�����������s~qnj	A���k�1g��U%���y%x�FRE��1z\\\ ��\      e      x������ � �      `     x�u��n�0����������$+�e��J���~�h˅�H���I�'	�	�P̋��n`�D��;>��%�;��R�
�S���&Q��"��Tw��v��3��3.�@S��
��1��-Z�k����%(�Ұ�O������V�#���b�\�!��t�a�0�������zjB7�{
�1Cn�[EP)D{<��K��M`�%�:�ww������n��5�\�b��TF��@ڼM�T�+���*�T��q=S?���o�Y��	!~ �?��      c      x������ � �      o   +   x�3�4�4��".#$�1��m��6Cb�#�-��1z\\\ }��      g      x����v�X�-���
�/�܃���"?x8�rY��vnK�<��c����	p�U̯9��߱�cΈ� P��pU��ʴ)�֊ˌ3F��&��y��z��2Z�A��6VQ���}���9(����no��~�j8���Ͼ����I+K����W�������6q���".�,
W���d2��{���Q��"Za�����]u�u���u��*<�P.beA�y�%����M��=�`��E$�����}.҃�E���M�b��-��E��.��M�(_��r�I�<�;� ��ɲ���x����R~aP�� ]q�_��Ѹv��+�s�5]��ݸ^��A>4�lMz�q�u�Ҥ]����s����_�h�;��c�EA������4x̰���U����$
���(W�T�s&�����}��<�ܭ܌\A��;Om��0�e�`��2��6J�Q'Xd�C�����1��J��0��n���m��Sҵ��|v��'g_���m�GEp����o�?]w��1��|6ԥ���=?y�������$��et�ޥ���C��i��D��c�o��t��}�o�l�r���0�����%N压��#�O��m9H������O�U�/7i���ø�iY���w��B�e/[��x�pI���߱��M���Gy>od����s[��U|���\��/�;�ypх��(�˭td�rY/ޣ��/����T�|q�%����Q.'1�
l�e����?�������eaӈ�����)��� �� �e�(������<�g�7o�.���0[n�\�f}�eK,���x4ɶ�������'7���V��&���`U�ox�A�܇8K��,�r~He�����4}�q�x��ɠ��L����� �(��Ų��l�݅m���@�M��7���xmtmy����~���0�^Ӆ�`p���A6+f4��[?E�[}Ð>�xZE�Q.��󻏟>�^?�$bTc�"��4[�A���]����fg��"�G���t��v3ن�,�o�vk'�L��zD�� 6Z����&K��{~�͙�屆����b�.[��f���2l�[�R|����x6�1*6��~S��i'�qQl�����0�'�S�[�Uĺ���x�u����PD��Q�^"W�,sX�Z��-��se�����Ѫ��Ϝݧ�¯Y����+��`�:<V�r]���A�%��W������l����-o��v+fT�W���]��Nc��y݋a��ܦyd���K�#g�D�PV1<�U������;႖W�&����~�,�/�B�i��R1T�o��,j�rI�
{~0k�d_�v��/������^�g��3i��p��������1�#�]�
�}��x�UF%�E�� ��2�^���i��QȲ��D��"\>ؒˎ�M���/X��KY��vg�'���d"^OYLW%��a�7�[?�Ua�;�#Y��G>?d�,��W�(�D~�%�a[ň�āw�щ?R��A��L��;|�ƱsA��u�y��/���Վ�kNP��8Ո�3��0������h)�g8���	��mT�7Y�I:h��{�lGym��iNgږS�Jq��i�-F+��M�$bS%����P]�z��^��!��#>-ߤ��5b�#ɚ?�$��y��-ͺ]�Gr-�^�>���q�s	���EO{�Yˇ\7�/̂X��`4��{w�������~�����ۑ��S�R���'�`;3x�#�ÓG�vj9o:︘M}��x9�u̸�4�CV"^�(��F|,n��.���]Ϝ�NN���9Y��h"1}�s�l��^��rg�C�Ǹx�@ބ�M�%��!��gK�=z��q����X�u+Qo�!l+��>���*�p�~p!�v�-C�Dv�t��h��A��~o�Ԧz�!$~������qh����TR įa�K(d�M�îG����e�y���E*��<]�p-a��[�-료���:p$���-�a&�y��1��+u_��d��!ܷl V{�4D���v�R+��q˽��h��8?������x�Gb�C�p�"��G���q�D-y��+v��f/�͛D�+��<�f���&����{۱��I�����q=�I�4��ߩ�!.��ga��3�/ʠ�ڞ)�u��Wf����U[k.DB�����~�h���I(��-�L4�J�J]��П!?�%�g�"�P��S�&�0�L`r��p�����:Xk���z5�~��Tɲ��, (����-NP~~��.���ˇ�K�H�Z4�no���Mu;���!�t��+���L�l��*��Ǫ��+d�N����r��E8D�`v�O
���.XfK��9�v�LW����b�%�B��ѭ?�5�.�V�q�Y���s	���<�x����k�RIq�
I��0đ��{ )^�^\4e�R&W.Ɗ�I�#���*��A�/0f�V
$iDs(\h[dQ�s��&�xk.�Q(&Ȓ �*�~�i�"I�$T܂bʈ�9l�| ;�i���0U�m�D,�K����Fm.E�./ �z����Q��k���ܽ{}׾�["X��Ⲫ�8�����{�a�µƾ��@<|1s%|1���aUd�$��x!���`>n
 &�-3;�%U�4Ϭ�In)A8Ch�6�"�� ��"<��Be��P*�	JW��1�+�s�1�M�P��z���z��.e�%~��g�p� hr�)�M�t$d��+����L[�x�ek>% ����_�?7��|&��0B�-��U�������!�E��I�,�#9^⬌��\�}=	�(ۄ��{_5��X��1����y����*ݕS\�(�^�d�5����}�I�,�|0������� ��Ze�	pI�HWG,��"^�e�e׵�k�^�����P�pu���������Q�L&ZyԋP��]ky@B�B�϶sޏzZ�z<c��!�?�.��ԗ�h8��.A ʀF4"��A������m��xm�Yd�a!%|���s�Ѩ�G�Nחfr�
���w�}�)�����%�����,�@��`��1{-I�B�W
������t4���%�"��p�W��sȉ��4�p�!=���܋�% T;M�P����ǂ[�rJϗ#�����v�1ɟ­g�����`6mjn���[��8�-*��x2Y������h�$^#�Ă?��?��2d�&�l�B�@�]�ki,� �&z5�^c�+��5߀��	�%&��}q2�<Du��v%{��5FU��'g�v�6����gs�k������#��h9��,��@}��e�[���1F1fA��1߇bi�H��Jڱ�RQ,c��-�"8�PG�]�b��Ɖr�0\�-D}�PN��It�$H8����I�j<�V��0��哮ƓV���D ������"��\���q�=`/%y�����I&{p����z����������)ٱ��������f��:���$	�l��4���3:ʑdf&aq��n�H�aeͼ�����ar+��6�fD(���b���s1|�_�Ɗ���嫲\��@Q��l.3J��tvZ"��@�<�zz�q�b���X��W.l��>�u�=E���-+*�.��\�<#��`�`!��i�#��y�HBL<	TN-KH&-��ɮ���p��UZM+�gZ���Th"��'[�^�/��dAz���>��I��n��+���fzL:����3,�IX�xh/v�`L� r{	HV�S�L�$Ј<�y�ygA�"ТחH�����+g,
��5�~D21�5�m'�����Xi���G�[�<�.l�\�0\p3}H��$7 lѶ��~�D'/���B��Nޖ��_7�Rr�����13}�z��@���~>�P��t�� ���3¨���tU�-��� m�u%v��5r;����Y��&���˗�2�喺�^k��X��1@q����6�=X( S.�ƹON@�����ٿ��mN�@����kJ���:��͇��?�	������پd+.k�B    ��	�JV?�Y-����7��;
"�#32r
>Q{�a�OTo�$�P�ƱC z��$�n�!�]���?����- W��0�1�H4M[����Y�`�:���Ij߲�?��z��+Xx�a������"�1�̀cD'Q��}nV�[T�%Tz#��ô�<q��.�Qqn�iw%��-N��^���������0X����ia��p�zn�:q$ײ��~o$?z��ă^Bޥ���C�L���O�}@��5	�E��F��:�n7�pE:��<����'!����&˓�Zo�c��XV1��9�)������������R	9NF����M]�� ;���ǘ;�Gn+�H w̝����ՠe�����<JuX �QK�q�Eq璌ČEay�B�&��|���,�W�e�v�%�E�}�4x>�@���9��𬐐9�*�a�K�<_L���3,-�cXmل?�;"9.4�P���.B �HV�b.�S!�_��J���	BO���}�:.�MzM�H���aY�qf����& ��!7�uU�]ބ�J|�t���]huf�������dl�ي�Z��3Ŵ�C�ѓ״.���<�F�w�%}�ŃIP���	�o�c5F#�#�@v�d�&- �b=�ܿ`��M�c[.'ܑ��D{X	�R�)�H,j�T��"-x�d��I�����aaf'�(�h$,�!KW�e�;�d+W�֓����$������!�6���q�J2��Z!W+�M�ݞ�&�iQOv�E����2��QW�]�i�:%_g�`�
�j�F�%�T4蘻㢌���n�DeYVa�Wh��m%˱:�&Q�;�����P[��@2���� �
�n�`������┖���6Z3T�RZ,�u��C�9E�Va�3|E*27��� ��c�B}b�[h��
��sˍV�f�ƫ2U_#K�Ha!��ɨ7�62��()ɂ��+����������ޅ9X捲��C�߀��4L��s-����c(>Y��*s\4�v�Q�)�g��|���L�=�e�M���c �����p,!K�W<�]vrT�2��P��e���Ә*��N�s�r+�ۈ�����~x�a��x�&�Rc����Ň\��57��V�\���Qo<��D3.I�P���ud� �NYgW]X���\
f���a�(z	Կ�. f]�q(NGқ��8�0P�Z�;= mNR�ax|~SRV��i&���4S[���=?�5�GY��K8J>�_���DPB�{@ď�^'��g���|sw}���u����u�"�ڍ�����~~�r~I�{�K+1`04�T�}gf������DX����{�	��!�,����N|"����bB�
Gn�Ę�h�U�l��$d}Q���P��{��zEb�5��5�
���/�w;ɨ��v<�rٜ˔%�XX�.8؉�����c΋�z�*�ɨ�H�a��僅�	�r�/���u=y�������"yƶ�����uM�M#���G����N5��V�R���[���|z��L����m�}Z6{�$_9�X"ڥ5�5�R4xׄ�Z�y���]�R`X9`���(H	hZ��Z�-"�B�����7�M�-�.=B�8���S�l���|�g"�yZ�X�zt�����&��Xk�kV��!,���o%Eʻ]%\���z��X~RM�<��� 2mli�վ��19��Ij����*+�ם\�&� �_��
_��i��QBK+��~A�Vmc��zUٯO����A����:��u��}�7�++�����`��֢�#�n"c�j��V,KS����g�C�6Oʦʊ�5���f	;�b�
��൞��W�Xhgђ�0�s��kt���s��<�Yc�H�a��|���Gfs k۵c���{�O��^=�P{C��"��1����_� �*J�BT52�ɼЌ�'M,��B#
��G�T����%8�+�=\i7
��5ԋ4��#n�]L�D9�;İ�`�+E)%�F���ƨ���u܄�$4���5��(���R�H|��eq�~�����֥��'n��ˈTX9�mE�r�`r˃\���p�x�x�H��s��P�ʤ��]Eڦ�N!B�.�-17��,�E�7i��s��En++�Y��ۼc(Z�g8<��r@T$ ���C�a�%��Z��n��G��$ݿ_�u���f�ЕU"k�4C�,]�O\��V��P��d�M�6K.c�(%�Ir�,�A�%���Xu��a2�^ΰ&�\���I�n��Oӽ2�<�t��+!>���Eۀ8�=p����5ҺV���g^<�:��K�ᯭ��R#N��P�$��'�Y�&|+��z�˧�d%�D�b�.`�a�p�~�*�=Mø��`%MQ���-� Lb�����6��m��cY0�'��6�����E�(����� �zi��X���?
�T,ybw���̺E>�P��7�̩�{���� ��'�s��P�ǃ&�Z$�U�{�Q{��
�-��7z:�D!hne��@��7%E8\�S�D`U��������ᨵ?~z��o���ן޿�����u��{�DD@L!�������*P)ƍ�ʨaw�ZĨ�G�ޠ
�h �`�}?��*7CC���z��Q����e\4ڂ��0�8���'�K��j�d��Zۘ�"콐�)F�S�p�u-9���qѸ1�?�02�`:��'l�2ۮL}	��d]0��s��i;D��;�nT
k9Ek�YZ^�K<f��/Ɇ��ЙҾ��ָD�{�A������#q��w��������w�O&�/EF�h�顠TfA���$�u�W�D.�sA��:��z�nV��.��N`ʉ����71jXN�%��u����)ZgrZ�n2=�����ѼJ�gO��KS�����4�d��Հ��z��M���ŚE^�����Vk$�G�5-wLf�:�S��l���T��͇ۛ7��;Pקv��ZvX)ߦBt_H2=��&���MY�g���/�_p����@�t���Q�pn�������ܼ��3	��ߓt����Q�Gzd޿W�ұ����v]����J�m�je����-]�b
�G�Ò�9�vō�Ǔ�̗*58�#[o��y���sI;B��^y�;�	,؟�&�~�I�V{J��D�0�k�X����5�HΑ����f��/�\3��.`���d�V]�W�"���E���q�Y�u�x-��6�}$�v8nji��t����M��9:���2V�w����
!��Q��B.�h�o�*�K���zEC	�:	��؈�;r⎒�m%B4̓7�n>���U��}S��}���oб4�5n-�Z?]_w^8"3?g�C/d�CJ0ZiG3������ŠD�����g��A�<�b�XT����Px��3��=7�ҝo���ӗ-@�\`����/ua�*A����k�8xx���٠�wxd:��x��Zv:�q&�dj-^q;#n�����2�E!��K���C9vjO�(�Xx�	A��i���Ŭi4��D��yV{8�Z�QD�՚�xq%����#S�ە��C�"<�Z�FI��Y���N�6�Ɗw2�W�_@<�!��#������^S�v:���HI�Nh.���W�Q�̯p �����Yi*H�������1��0��.�ǒ��p-�W�Av���u��}��5>|J���'�����{[`4�	O�
w�?�ղ�Kw�iT��r�/��Od� � �=Ze��ᩔ�=0�c�h ��A/�R�k�R�c��5��Y�5��B;@�\�ƽ1�Z쎷�wߦi�c8Tysb�mPc?�@���Hh����"B�|�$"��ѕ27�]p�E;^�H�mY�7����U�-r�Ț~dqv��q!��o�*3[0_�89 ���z����?��Sp���tߨБ�Zx8v3���prDw{��ް�������u	��K-	�qX��������?o��f8TH��$�pU|d[�=#��$��Y��F>����.w�\�ve��L� msf�06����"�
�<��c�HFnX�X����2�Bu    �h
���e�{����p�(Az�h�;mFc[�F��B�E�	f"⥄�qrK�����(�셎C���a;�>O�u�� �z��%>JW��aUK�&���Y&Ԓm�}C�dԸ�e�'э�.�%�.��@�y*���d+��PJ�ɭ�ci�f,�����8��% O� &�j�0@~F�����<HR��_�L*?	�s�)~=�@����u����Զ��҅�f譡�$K/^Ώ���%U
@�&y�h����︯��T���tQ:�&R1��E�0�dq{�r(�XE�/�_��rXcPE��*�W�3�9l��h,9CM�L�5ظ�N�Z �⏚��*��Moh��>���RC�Q�9�/��雳��D�*V�ϲ0����A8Nа)=}�8u�����������P�����i�)<��!;F�KɝHcћ�i��Q��Se(�.0C�%�.��/p�H�P���a�
�O��m��^S: م���M��~��I�i�,�V���):�;�$&~".^/~־Y�u�%8.�D�����G�^SO��@�]zv-+��z����O����O%`���f�Ve�k�

0����u�B_+#�"�nJ���"v�c����*Ҽ	q���=T}�ƈ\�JHSJU����i\
�;�ǃƋ2m�&1�^O��q�7df��\����|ݫ��G�է�?>Q�k�l��`s�a_@
��۫�s��GqG1{h���b�⿽@ʳ�� 4�zA]����q��تGy/v�~bU���j���jVJ�Ŷ�a�~�z�rt�`�1ݸ�t6�i�?n,f�g4���)\�\&$�V��C�c�~�5�eb?Y`z�b^����<k���}��EpZy
�/)�� 㬮��q�p�k�t}{����Z@=�L�L�ԷP�N�SX�a��v�]����J��༸�4L��05���l�;�uv�ʭ?�̚F)������P�xܗC�V̇.�Ep�4!<����U��os���k(���Ϫ6�e�,l����p��d�$�Hʔ�B�)J�'��1���e9u�~������[�g�_R@i6FU�εW��a]�7�!lm���Ȭ2���ނ�I9mpeի�L�!�0[�r�aqZ����T����l�񧣦��Pk�PD�G�a�~� 6�Nc�"�@�L�62b�8k���5k�6�,�6���G׋��J���鲛�p�h%�<GL����G!�$���'�(�4f_�=@k��3��TN���Z��<�Y���-^a�V��_Ll�r��J�rL���K�K��B�n"�,�Uŗ��pQV^�\��'<'Y�Ѥi|?�*��)�,'���i��'�.��C~k���M26h�erTQ�n��K�^���z0K�Κ��/�B����'���ɀ��3&_�|��LZPa g�ն$��g�a�)�5�8'�b�F�B�V��	H�1}�'��\���r�g�5`��ٵdwq���*#�W��G��1Ke>m]'�[��%�'2��Qik8M��{t*(�	��{�R+-ݻ���
,fxK�і��`
�Ba%$�EG�16�6$,IcM�.�L1�ֵɯX�C���Q�>V$#�,X�ƭ�swV\g>9��٠��oJ���3��]�}@���!H�a�T����YaLȊ�:�!s�5	{3MpI��jW���C��R�~�+�&ƀڐ1�47��ku��P�W<B{U]��wR>�֢$E�ה��X"���6[�L���ԊOO�]0-���]�K%6q$"��K���R�F��ƌA��M��}?P�fF ��7�,y�!)W+�ͣV�8�_�,Vr��1Ặ��H���G�=$Q�CQ�Ro�s�.٬:����'6���������Ye�rBٚ�	�Kc��:}4-eG��Hd*9�mU���x�]׸\�XHVσS����i*(���B�(Jn:!��R�=��姣{&R{ڛNǭ7���^�������Ϸ�5�·LV� %Nu��#����P�L�_v�������7,-��kIS
����O	�HF�	�I�8���dL�����3ƝdmǤF<�Ĉ�hkaR�/;�;/��<��l�mdM�h޻P�>�NVp�Ic}�ި���� ���鷸�jׅN�C�(D���2�O���x����rV����$)��.9���g@N
�+��&�l�W5H����2n=e�!��{s`���-�#�ڧ��!!o�b�h�/�W��E�q��N�|���+�a��е�MPė���VT�7=Ǩ���!�<%��xb�B��ܢ��&Ru�'�1�G1�ݧ����S��1�]�m�Żb���W^��Xￓ�F0�o���AǮ�ᙖuc�W*�!>	!�i$���3'�±�l��o�A_���b@�~���A*��jӐ�����8��<x,)��M��><.,�~1co��>@�k�kL���f�^S�4����p�^R[��a�p��}%y��@�M=/�-2��&�ue���ض�2B��=�ĩ����yBՂ��C#���|�ܲ�K�
[��d�D��xg��=�ȷ^y�Cd�
���M���i���I*ǙV���R2W�j�-}�V!l��*���c�BT���c�>ř�kI�7jʱ��p��-����	�V��ۨz�5��w����v�C͐wgE9���*�ea�vLe�:�
���F�ѕ��~����Рj8i�_dS��>i�gr�M�$5�|Ń�a��V��[�s����n�9m��ge��W(�![#`h�s�����<���m̫RJʛBp*ۖ�Ӿ0*����VMX�\#���Ϸw�#��.h.7q��<[����YDF���1k-Έ��TZ:Ņ1�R�:�ڟ'\�g�s1"&)�����"r���¬c����/鵍h�.��-��nQS�v�nck�j*'�g�~6�Nqr��U�Д9s;hnVF��u[�,���q\]w�*�L�	�A�p� �f;EaU��:�8�x݆c|Q�"es�i-��9Zϴ|��n������!{����æ�+,lF���ق26������t�����Vr�w��(�����<<1S�%n�	!�r6��w��!���*tk����_���/�*Rz�'��QMT�֬�#R��H~���5�ZͧNR�ݴ�T��B-}r�홸ʗNѠW���RId�U�Vg�)� ;:nf^���%�*��
	���R�Q-u{lL3�Z˪VH���9��߱K��݉����Ñ�э�8��펣tPD�t�W9^��[��V��n���{�S���Z���������#�R�+��;���Pz�������2��6������F3�����R?�cgH�}��r+�Ǟ	]�� �
:�kk�o&�7�ѓb\��օ�
�s%_�Ug�|�)��&�Q߽q^�w"eĀ8p��'��GtJ�;⃚e���~��c�.��i�0�_���IC��m�z�tN,���I��I�C�,�'�o2;�X=�-2��槠�'x�\B������f�i�l��qy�a��ʳT �C/?�Pڏb`8P���Jߖ#ý�}kt�*`�g�[�O��]�Ui�oͽ˵x��rn�@MK�E]����;�s�y�o�IW�x�4N����d8�95�0K˸�tV�;�5+��~vA�skM4>Wݫs`�c��W$�r�'�P�SWe:�'i_ǃpE�}�Xe0h���/c�` �����1G\�������Ћ	�Sχ̍���R;�6:Q�,��7@���
@uv>n����8�I%�Yc�"!�
�}4B���c�n=C+?@�eӕNh�T'��ڙ���P%��p���Z�����D>.��e�_˩�g�����7>ba��Ɯ��~�hR�|&�m?��c�f�]ٽ�]�~���B�1	�Z�'�+ ���%qG���w�����lnNƭ�Y�ۜ�s����_�d��};݈�U�QT��b���A+Ur��<��hVUm�ݹ���T��^&��P(A��h��x�Z�~sS�;9���T�Z�J��~��K�g�i���\XJ����e�����Wi���7���    �%F��3m�Y����'����~�	n�l���,bw}�x;�?�=;�dc	�G�66��BLs�"e��,ɢ���s��C7��I.��(�R8n7��֍�v�����8E������z��pp�0��}]Y�_���5�i/�D'�	�~F�9�^�4�Sn�Γ�tND���+�ĭ�d�8업$��sp"!�Л�ޅ�u�Z�t.L�`/Vq������V�ٸ��$REe�,�q,���%�j�j����w�޵�d��v9�]�����`\��\A
�ѵ��z�y�������Δ�"5y�%}��$Tm�5��|��Ԙ��k�
k:��.j�7tc��ʆ�'����!�9+�
�7��G�	N�}�ےĝ��
��?~n�q괬�3��C��vD!n�SA��% l9!V��	chk�޾��i,�%��,�i�k�h���|��9z��¼�E��o�C_��X�>��.�]���Z�p6�l.4CQ�	Ȭ���ب��4�E�`�E�������?klw�uέJ�3O��<�~�󄟓�roIO�J�N��9n_�;�sW����-�KR��4L��:��䙚}�ndbl9�
T۰dkX�C]��w��H�N���.�6�ao֪ΐ(kPL��ݰ�£Tс����J�������,F��栆"�9��ᇼe�����,7:rvq~ʣB�1f�(9�DX�Y�<���'M��4�̦�gD��p�e|F�V��&
��BV6�����J��O��Ҵ�H
E"��:C՟�9�B��q0���6��h �{�SE����&�#�"9��^��J�� ���>��:C�օ�ػ�~����(C7̵v����5�j������ ����&� q���V��E�|����/�э�YD쳵��bӊc�qڣ�m�����_���{�9m̎:�W����V������uǈԳ}���p҃��&d��h�o��Qá�R��ɫ)�^��c#���Sα؇���Ǖ��2Pv���J�^��)S��G�m�\n��xU�oæ���qm^�q���Z��6�%��抠�����v93����(�~j�ZZ�"��%�U�?ϩ�;��B?��&M����
[���h:�OG���I�Y�m�mFO�>�R����j73��u��D�	�]��g��&�����{�n�_���½��Zq,z�d2䍩��&����3"G%�c�����n ��n�1��Sua�	�;����pƎ%�	J��tm�GSl���OȥE�\���EU��ӊ-B~?�4��R>�c�����C_Qt4���`vR��-�U���2er�7nJ�ʊ�'�b�<BKj�)�A<&;�*�f�7���p�
�����4�z�X�9&�4*DP׀kJ�x	�ZU元つ:�S�\f��
U���9��̃�:�U���&�*���| �'#b�ʊ�O^�����S�e>��T'��<�#�i���� P��*��B\��F��J�=e"�,M�d<�������`�ø�U�/%�?X��ß�����QnU��9:�fW���[�I>�KZ6�_�X��7����)��c/�c\K&6i�Pkқ��gTMP*W�{�mgn2�N��d��g;9��F_� ~�ݟ���̖�>Y����K9��NF
M�}��w��G�r����<󑬥�_� ��N��'� B�ҝ(�ӮU�Yz*LS��?z�b/s3��|ч$�J��1X��=Ւx9�fv��KŢ5��/�C9��|��v�J���˪��>�f��>B�>3)q�d�tl�CnsRV)I�.wC"�X���"���Eei��\H
T�1@��(]�b.@W=$�oG�졳��C�9�������Q��x	�5��5�dIN5���ә!�O(���ጊ���U�'"R9پ#̢�����[�rwt���􃥝�FH��hp|�Nǿ���=��HL�����k���ёn:=���d6do�K�͹�:C2��T���Mz�p�d)U�\=_�zP�OLm����Ya����͐�b��
3E�a�5�Xo4k����O!rF����D��/�x�T�9n;�r]9��[T�7y)_�,���r,l_��3(.>����ǃ�� FBTM��ד��k�A���S,��D6��ɳ��W������V���4�~�x��!Fe�լ
|�uf7B�L�q
�	
�fU/�%�ڲ��eMF�z�n].�`/�����K����oop�G��]�)�g�VU9XZ8�c�N�عh�*���ku"M"�pJIlj`�.\E�)��/�*e��FG9��E})ٰ���r`x�=�S�Gpc�hU���D����l���4'��t"'Y�R���8ikC ������\��VЊeJҲ��
���2m��o�o|xT�m��{#O&6r�OZ �9	|���6�����r�:��.	2N�
'Y��YE!npm�����&�'�������;�(�zG��k,��O[O��P�)j����g|��&��1?�3t�Po��wT v�J�+t�6v�I�Iw\�kS�D	��ǡ�c58^��̋b�x$�0'A3Ѭyd;���*:��͇��|��&1<B��ӾW?�8���%��,���M�	O�(�P/jIR����?~~UozB���'���e��Y��*���#�
x��������x2l��`�]��8�!�Vm1��"��zp�K7����xغB�L��Q~J0��4��:������%NBO��I�w��|P4�bD^��]!O�[޳ Q�U���L���:�����鈻�v�Ld�
��拫�{�"y����N�`�R�T��l҃�(��3Ɨ�v�.��pibIL��X����|�j�B.ů\��ߧ�e5��*1����vR	oZ�I������VTXfa��Q��Ʒ��+$v�����ˍ���]��܄=C�z��a�n��:!c�aj����r���4j�hΑw�P�eڼ�D��I�-HV�i����᷌�V��P����	, ��n����x�>���ΤӜĦeV]�J�p�� D���}.�?a��z+��t���І�A6qRk!a��癗�'�B�'�����Jg�-1��͉�LuhSp����t�׬P�/�{w}{}:��}����^�tHj'�X򝽯q�_������c$�d��p����B�C�h�W��,I�	��!_�/]��wt�Jb���zl�e��1�jh��&_�~���!�6�jE�*c�I�}��*tdB	{�ʚ�3ׂ�Z����E�*g�P T�D���b� ���j
�>�KIɖ���讽�9��_}�����0��23���b/�i�&̉�m:�j�I
Gć���M)�[�Q+v�'�w�� �d��E�9�����7~��`�\�b2k�ɻ֪5��G�E��r��[[y9�v��3@N�6W0�Ƀ�����t�N�\;�NS�Q����6V�v����d.F�u��so���E�p �����.���Ǿ2@���L������3ژ�Z�eb\�'���i�ҍ�8���͠���Mef�_�8�r=��$G����!�LQ��I�c眔,�f'����x�ƭ��k��O�:�=�r���4��%���T��L'�$	�i��a�~~0�NqW.��<rG�eo/eX�&�H�1S��L2����?���R�yj߂Z'{Uj[*Oْ���|��K��%���f�Q�����YOa�1?�A���n9w�|��w�K�C~��Q^�H5�<�4� �*AB�-�ZY�\Q'6������-�&z������;#��5eߣN<C�G���J͍�Ѭ�^�?;גV�>�Q%���h�Of���l?�������}G�џ&jMݬ�H���Ɉ:�9�|�f�Qu)�0o�?�:�/�Tnѳ��%�J�)�ew���׃�����+M�.^qA�� {��䳾lO[y�� �а�q�&.�!Mr��״;�e:+7�6�XT9Cb�奋ʕcy�;t	/^����i���Jd΋?3�2h�sl0��g�1��    ��Z9�5'�L9����^�),>�����0�y49�(��T���P�͂h�OZa���b+����:/]�}Y��V��}Uϐ��m���J���i��,<�̵����|��]����0�//1�r�L�^�f��S~�s=��|�_OF�9w�?�6??3�;{ɮ$���L1�W�
o�!�=�����~D�׉xUϲ��#NH�=��!�P�s�"��A\����CKGR7#��Y�������!{R��]~�1d��]BQ�:�_�#�ױr�}�Z���U��.a��b^��,����x'�q�N�L{�A͔�1���ΨJc�i]�߁f�z%�٦��5��#�B�E���Y$�˃j���Z�є�Id^3f&��q��}Rݎ�.�C��]29�����p���Kɂp?��@g���Ts8�MZCC��kS�.t]�N�fcEM���kW��2�=E����<|��Q���I�ey�i�E�|��yvY��=s��-��r7����lP�	M��^�2��Y�O�
��&���-�dR�|������ /R�q��y�8��[n����p��`�4�/KQ�y�����j��FG�v�$[�H�6g�T�$tID�+�q(`��"HZ5�)��=h��F5�pW4R��_0g�$ա�k�m����~��Ԡ/_m����:��T�<���������N�h;���+�Vx�j�����"��,�$�U�� ��' <`.���&���D����G=R_�VͣQ���@�\��v�k˻lMǣ~��{��4�`�с:�P�ľV}�>(:|��?�'�n^=�M[�<�J��"4�B�� Ξ9����1`������eM��W/�Mŵ?۞D��i?ѿ��E�K4�7��f3J��q 6�F�Ѹ��*��߲�*���FR�|}�4d�J&	鑊%�	B��\�е;���� T��bI�J�����_ܩI7��iı�����[OU��aS��J����S}~iP�2*�ۀ���$ٳ\"4�Y� ��	��e�`�ժ�c��>C�2zf�0�R��!KU�Y�~o.G�kv���1���V$=\o2��N��	�t���E�u�t����O���-	k"7B���'\}?6���4���}��/(Lq�$������[�dmX���]�&�6���e�X�u�X�v�a�?j���	���
�>R7g���������&P5�?��k���	���x0q�E\�n�R��W"#��U������n�����ϟ�n����7c�`��C� Y1�S��#���	��t���<�O=G�UF�1�)#�h<��?W�1]|�7�5��x8��P�t�8J5$�UH��[��X9>�rt�?��2��KB�(�Q�G4�Ѹy�]� �s�Z�����,L�\�%*��Y{�t����08�57.�'Ee���+<��U�����~Q��2�)T� �*�����֮	Mv�� щ7�ؔ��4 z���
�*�'��%2��H�\�[I=��`/A'J���X�㵎Bw�S)��I�ўQ�����J|q��<&}��~��J��z����	���dXO;����Uژ�Z�9~<�Gs�;�P�:�x4���h{<��<�h�x� ����@#�����M٧�cd�Y��_�u
��Iྩ��a�El(!_�}kݮ�:Y�~w�A�}�Ur#;ҳ�/:��𾨴xR���F����w�Ş`�#Ǚ�(���x90�sa����%�&�_7Z�`���H�����
b�$���N�M64?F��i�
�* P~�i��Nl�a�T�}����^Q򀚭^!�m�dKЩ��z�4����9�Lp��3�i������L��#�����y�.a�٬ߪ (��$M���6�%�c�������*=���s���:�]M�G�&p�YT�re �
S�Ve#�����^�z{����y��Yh*/�H��L���d�N�����<��Q��6����x�l)MYD����͎�r�PPO]��b��c�c��+5C>��[7�H�;�!�F�+'T�y��Y`ױl��=ʱ�h<�}B��r�.�BK�;�T�l�XW�FI���z�6���j�ĝ@T +�����(�%Au�߽W��I���6/ᢲ�*�G�5�z�|[T�'��7���uE:zY&6�B4�SU槂�1~-�e/b���UK+��~�q�2�~�)������:�m[78�QcY���H���s����0v�	�e�I��r횝�k�>���;`	�_"4Q7
�m/0�tgI�p=8�0u��-��&�����:Pgl�25�P	c��VΞ��g��<:3��)�T�l��=���`�X�W����.RY
��$�L�'[T�	��� ���Mʸ�
��<�d�)OU<��֨E�!I��r�D����~:��B=���@	��XN��A�D�}y���<9J�r����nw�������
�2O��o+�=�xe:�e�����ݣX,8����b����S�VA$M���ͭU��°b����`��K2mU&&AYM>:R��d����K�-B�t[�.}"��	^`(Tt>���}}���S���/�ܼ~�yQE�O%�+��"�Fx��Egf�%"�h�.���Wl �[���Ŀ�`��
�BYm���6�M&����L��3f��	��d��oʐ�%qPa*���>)O��e�:�t��Fћ�����|f�g��������47)sG%�By�c(��mt�����3�z�T��os��RE�1�(u�4�C�ܸ��:.�V�]=�ֿm@�b�������1�keѣ�X�[h6Uߨ>}~MfO}m���i3rdV�[��E��J�n�W��L�z"��l�B�#�ꃖ�OT�!�G��>թ�H!Nf���	s�i��`s��*�Fo^�bs.Uh�Q�ړ�S�F��T"F�9�n�ȅ6�h�q~W)��w���]�v���}�cq�wS nৠy���DO&�Gk]yy��m8a�� F�p�eH�#�����1�!�
;������{I��<��Z���h�_ξ��eE)�����5awP����F��Jw>���s@���-��(�ӂWn
s�]<i9�l�JS���)�!�΄ӿ>]�c��`Ӡob���Oe�ȺT�Q��1
�� ;a�,��	�J}���Zv�h�u��SY��|:V�
K��f;k,H3����6��?�q:�ډ4�S4������;��[0��6d�PT;^�A��xq�H&�L��ʹH5|B\��;KUR�Yl@ex8k�F�+�UXsG�,.�7>�|'�%ظ�XY�*��=VGx��|�@GwS\�z��*�^辀�^)p��~���OG`^*��(Ie9��T��Qc����n���`c�N�ׄ��	��~��LN����`��v�,�"�\?�G���k
���^yGcg�$�,�\���n�d�Nfo�4��f���9���7i�UfjR5_{�w;-?�f��-�h�#�/���Z�ٵ�}�������_�kޤm<t��ҋ��ew�4�y�T'�0�z��R�����_��̛�w���)��g8$�` ��C�>��az���wp��$XY���"�(;J�)��8�v���ҤV�4w�jU"�����8sB�m�`u�'r��N�<d[j�5&�@'�w|��˦ݠ>0����e�-�95�rqw��m����ъ��� V+Q`�2ꪊdO\T�GP��"���UWR�pɡ�9�Et�����&*׿� ׎W����Y��e�yOl�wF�����º?g:9\��v1��Dk�*̅M�a	�˺�!(kL�Ao�Ɇ�� H�NCc*.Lfx�X=o0���*�a��ѓ���y��U'�8�fM	��	�����e~[�X��`�y�!l�;]�[�v���Y�t�Ԥ�jsv:%���h;4΅I]'[�����|����}�8�����˚�+[=?f�ksH5=l�� �u��對;Mg�O�7@ �qT;���a�ե������>�H9    �i����&�p�:�*w�2���h��a*��{`�tn�9�,Y�S�$��h�dfZHՈ�h�
��Zm9����l�3�>ι�tP=v�Xҹ�c%�]އ�S	YB�m�U��sM�CuŔG�����;@|�8�c �L�5��7����Ĺ�@|�}���=7����.��$N�$X���_L��J�.�l�xy��NEV'̕oBg��+=n8�k^���_p�g�%��əӪG��g���ϟn����`/��H�n�� ��*��;r� t9;���ğҤfD0O���60Bm�QXI�i�r-�ӯ�� =0�Ac����^� /�5�F����k�q��fO��c)'�&�΋�g�Pf�Oy��wҠ0�]:pn��9�~�]Uጆ��X8�T���Z[���D���U�l������$�������>�1�������v�l�V�ՙ�Y����2QE""Qx�gSyR�߉�s�OY+O�����=��%�E���g�x��`�{���9�l��N*�?G����*c�d���T����hYB㷔�lH�}/+��T�ɨq��V땮�=hr�qQѣRK �𢄒I!�`��q���-��9W:H`>�g��쁉��	��`�c��Q%�|�l��yd�~|Й�Ę�ɾ�|/�/��Q?z*�Q1Ү�"�wq�#K[� 4�x��`8h��&�u�2�9��q6[�9ѷM�X>\X��E4ڎ��(� ����Ƭ8j��"�N~����1�rW���E/�*p�k̥>ae��J�{����a]��*����7��p�v�\1+�~^�Y��x%�rO?x6�O��G�]�ύܩʷ�W�	.�J���.�(4?D�2�[h)�#���2� |��Q���vZ�x��T�>���5�@��'
% ?�@⪴?!#�La��ҡT(k��*��b�9z�������͇���S���П�{>�1Nu���lV7�U���:���NQ�� ����I�p�'7�.6���)cV���]L��+v���E)	F��L�l<j��X�A#O),�+=z\24�6j���"D?!�(=i	`�VgTT3&��]�U�����ӏ�i��'�է��� ����5��K�VV��r+�<L9S�a!���
:A'QR#����Jf����P����IK�����8����ΙR��qv̰߸��v�*����'��_��I�Ҏ>�Y�Z[���s�0��Mf�%r;�7�?QN�I6��=��5eq���0�w�6�:��Cn�u�q��N�1��Ah�[�1:���Þ��#�V������F��ۭ����K oz{@�o)�<H�P*��v�%۴T@YB���0y凥��Xwp�D��Q�(xG���!/����n�5��F������hȱzl����e(o��Le���P媬�e�bZ�m=�!��=9��lj��q`�)�o$-��*ڨ�|�".�%��jB���U��c~��ԡɝ�m�����7w����������n�/�]��
s�.#R�T��N��w:�&Em�>r��5�P�ŀ!��ܻl�:��%��+�)Q3���O,7�~#ħ�֌R���AD��M�,���z��V�-�1D�q|*V&��Kݮ��XsUԸ:	�ۼ�8�NU��VΦ��ϵ.We-��]OJ=��Q{�J�m��0w�2H�RI�n^��1�D�:��BM��nT��0G���{�ܨ4|\V�~G������m�����7������Ro�Q��	Z���T�J��T�		��v��ǹ��}�!�~s��Ydў��0x갟�S��I�Gg��*���	��/��&߈�+T�NR[)H~��<左paEY��I��ճDoT۝g��y�d�����-�Cd�&��vɳz�Po�&��O�"����i�.��VՀ��bQi�s2�TCP�|l�{�:>v,��m#ef�.��Nf�`ۍ����uXt\�8@����F��cZ�Q*B�tj8E~T�P�1�M����)�q�I�WEp1.~�v2�y@��uGQXr96�\=�;h�ŉ$Bh��Tک�RP�A��,	\Fc�[�0�	��&]���t2}J�+�ynW_�~��]�v�a�ĔܐK�Ö=Ȣ�����]�l
ۈx���R��,jW���ܹ߫Y�|��`�%�*3�0�m6Bi�	���>?q���͇ۛ7��*\��
���:JKG�	~H37W��'���4Zs�~��A�_U?�[ҹ�0������Zۮp=��H��2�=R��O-��m}��:#8�x�,=�I�4��E���w������ز<�!}iw��tew�״���w����gh�Z�hS�Y"���,�5@p�GUQLyE�W��sݧ/��B���>f��s�9	F��n	�+y�~
�`����h2K���Bo�?���3��������ձMHb��ϥ{����%R���v�ܿ���M�CkO�yl�[71]��6�L�d<��B�|�X��@��hAH���5m��>��s��(�F����a�zA�^뜮��Q�++��I=�EE�<ōW�������~����#A�<��F<]�ӣQ?��/O 5aH��`��<�D1m+���k�%YGJ7nk�z ^��!�Q6�?:�z�pd�]e�+DI���c����؀8W@�� ����@y������ hG~��e�z���5*	��ʆe�H/X�C�H��o��`��,�DF�!Tm�r)m��h-[d=��*�ﱼ��\q���ɰ��i/n;Mj�����SAS]�R��t �<�,ď�^�=���~�>��Uu��A�D��|Ժ}}�F� P1ߔ4���E%RsZ?r����qTvتP�,C^F����y���Av�K��AL������*8=w��:Q]�ׂ�%\}��H6MM{��t�j>ى�<�qux)���c�����gl���XY��Jcb-
���c]�"G<F�mK|�e���,�;��6��ϵb�*�s2`k�N�x���^h��$�J|M�([jx,�d��#�ȣS���j��Z�0$h�.u�(0�e���~hHb��z��Ǵ֚�R��?N[�s��AU�vQe��$2���>�޲���u �¨F�}q JY�n���$te-*��fy^j�C�����׿��h�����Z�8��޴��8���?]kdo�䒊1��U�m��^"��Y�`u<k�A� ����F�BQ���P<�9e)f~��tLP�bN��XE�/��8�uz[[$���{O�dT��6��\Q1DS%�ʁJ�#���|C�@[U�X�p��{N<��l�x���x�6�Ҹ}�Y~��#ӥ�S+)Χ�7T,�"1q��p&A��g�*5�ʂ�\���IU�Gao�^�+��H�()�����q��/�b�M���|U&s�����L���r�	�5(������4���P܋�ǫ��`jE�i��
�QM;63���W��7B������&�8�=Y9鞎��%FKx�UE�z�4&�G����!�4Č�2�#�DGiYzX�]\
��Q25��W®���^��XyW��ɺO���(�t�c���?��D�W�8�f�؇re�zS��9�D�x.��]i�{V����=m� ���b��]'�F�N�K�a�y��Nq7<M�;6�o��O~�������M���k��t뎕�-�^~���P�)��Q�>S��v��.k��y���:�)�c�V�j��]`�@�^LI�e�*��D�g�H�Ri2����!�+��l��ZP��T�q�����erG��*)W�}��O�.���1K����=Zm-S��ڇ�D���r�!���Yu����{� �����QJ6s���}��!�g�:k��K�sP)\S��=����M7V����
�oˡ+�(S5V��'0$�3����~դL*�L��J��w��#(Z:�4���u��1b�4�/!��*ν�zk4n,7��K���q������Yr9M�����t�O��ɬu1n��J"    ݕk�r�����w
LY�C��z`��ԋ0���Q�/�%�KcǼX& � 
l:#z� f7�j1�������ܻ�v<�IzT��J��Ї��p0@(�����u�K�rg�V�Ϋ�.h�^*Z�.�����r������(�ixe(��*�7_�J�^���t>�>�pT=��,��S���d����z+6j�{��u9f.����:^GȕW��O0����$�|�H�u��Q���z����)s�#.	���Hw�W�Wi�^���̪ә8�6��I��|-�/|����"�E+%���
���3v��^y�칁�F��-�Ϳ�f����]ǒ@Q��>FgJޠ�t�����x6k�W°���RJ�UoдjÎ�R��`���3��R(#������ ����D�3KM/hZS��p��s����BZ"��\۳Rl`��JZ���H�?"�uJ����4]�)��Ӛ	�Ɏ!3_ڍ���+�tw�⨚U�N��+B��M��_�8�U%�hw���L�o+�V�s=b��@��;�1��]A��*���%�3fS
�{2v]�	�]T�J+��^|ޛw$ن	$ns7����I��-2�k������T8eBb���Q�y8��ĕ�mx��͉�ͷ˼�7�)(�}�p�A��;��g�A�U��shS��nj��}Uˏ]lC�h.b:A8�\���|�$)1���75O�$��G2�m�b0�Ul`ȡ��hn'?�@�Dp�x<��9)�k������sa"N�}%��'��:N9���,o:T}�Qk7�ga����bB��'^9E�h�j��P��7&�8��6��? ��K�;:�����B�$� ��:�k�F��
<��j��)�վ�0G�ح��������R�
Z� �'�2��I�z^�&�����p�����FD�U�3����F��v�[��)6����?y�꣊b1$��B��"��?�t�%��s��cgs�PŁ�-2nlUfÚd�"�xL`U�{�dNB�g�A�P��e3Y�:_c��zm�� �-�&׻j����#r�� ��eו%\�c�ca��p�h0��|��C�e�l:����
��yH�!G-FE���Q��_�j��v��V)��0|�:P�#[Tr��D����nl,�{9r5P�ؿ���5=G���u���_������`��7Q.�c��wZ��܆�\R�V���U|U�;��=���x��#9�O�4���"M��m�E���婌ˡϿ�%��t��b+��M<	͌�cl��|Te	��]d�CJw�n�4[j?���R�I��I@!1���o�k����p>2F�*�&��� fڼV��^708��RN&e_Է��V��ਨ*@f��T��������{EH|;��:��K�� �<Wx1���B�
�l���N�	-r�2`RsG���³2/��
�k�yo�:?��f~��<�Xf���tN�hɩ�r�Cߎöoy�[7��p?�A=s:�?��.�_������_�R��[Lf3������s1k�֦�B@I�-��E�.�f����p�\V�NT$E�ܻ�q���E
(A5��~��!.[�ޠ�aI�>]�}����M���������hIBKǋ�l�j�bs)����ol�N=��X��=q���X�h�A�~�%��<��ۙ�Z���#�����x�j�0w�P�S@��=L���mtΉ ���vm0��a��X�W��k���x�WP��7ﶙ�K�⁪Ӎ�S�2�%�R�I�6\+�T,��1N5�:�� �<��kVү�я�)䡂��*6&�촸-$M0`Y��܋ 2u]���h���h�|]��Vn�$���k��0�#�����P9���S��YRB_y)�ec�TV��X��Δ�Q�K[C1���<T�3�l�2��r:�0��Ͽ��G�Z�|���v�y�&	����ׇZ�ϩ�)��U�j�F?]�� �-�	��!PvIv�߽����r�?�	�������������Ow�����biw��f���Yn��p?��v��1��٘��O|C�t���L��'��ه�&FYcKTd�����BH�p0�\Fi���Iq��+7@ͽ�|����T�Ft>��7l�E��g��~ٮ�-��-yE _N,o�v��_J�T E}�b�2F�K	�$v������y���&�5����}�9�c�{�����^�4j.C�@�ŵ��³�8�¸H�ZUtq�h��ĉګF�c���B[�֭n�m��1�L[<Q�}�:��5��h>v$�'�K\���;"Bp((��6��MOJ#���'
6Κ1�8�Q�#�(�fg
�	'���',F�4��!M�����'�A��Ʉ��x����Y�n�H-���I������0��\&'Y�1۴�O��.�y��c�@�%X�<�fh}���͉`��1lL�XҬ����Is:������2"
<��|XV�򪄥i���K�V�^m�(��YLUK �g�;�H{1�i
?Z�$/� A�ǈ��#���?�L�wL�)hU�B9@��|*胚�����Nq�E՝!/�)R?��L$W�]dj�`�d�d�d+�!���Q��Yu>��(�����盏�oe]��2p�r���.��4�M:t3�|8���U>��u��%|��d�WO񨻨�%��
/�(S\������4Y�r�:I7e@��jk�o��>����P7�d�R��] ��v�S���!V�v͇1/�GC��8^��4��q�S�:�BC@�x��n�����xM��'Tˬ2�欏� `�d������0ݨ�,T�BO�:�E���kW/5HD�x<%���q�����:ф��K^��#�&���4�4��{���it�0$��pm��ʉ٠o��uP������<���zi:nII�ީy�r��MZ�1҉�s�ړA��B��KG�NzZ�����͜zCRx���E g��3��>:�� [�>�E���q9x�'�M:;�`���=���A�q�Ͱ7��h'�0�gt���꾑�<��_�e�f&e}H��f�^ԫn)� �uB���*d�I-A����"�CO����I�>;g�C�U���Ύ�L�14�~sL�NI�?�G߉��S��ʭB�����ZV��o����Y�kf�AL����ˠ�e��s�U���^84YPnIȰ��n����7�"�Φ��>�פ4�.�NDՙٜ�(�`S�$ W�$�sPc༳�Ѽ��T�c���}�\�
���R���`GRS��7��GyE��y�#�>��V3%�Yh�1|�E
�i�~��9�aK�����}��@�&�
��e���6mqEF�R�T�kQή��;��kوYx^(A�9�R%��Ş�j�f�8�X��G�ܿj��Nϯ�*���3-y:��k�l7�o`�5�s�N�q�����.�c5~C�.��/b��`�	���8> ���X���&�.Ch~��
i�Y�1����'�+TG^��:}��)�(�;���AKb��7�۹
�䦘��Յ�H�1T[��#�M?��i"����֬�~[ǔ&䜹��_�Ė��:�t~���	�jW�:~%��=���py����m�m$ٵ��W�zaw�@�p�j5բG-�E��q�sb�ɲp3
�5~=��;���;3� R*���� �K"s羬�~�+�U�V�֬:�v?oEk�N���E7�<ֻ�/�D��<�]g��[q˝�z��#,�F�(MTH��l��f�c.�J'%WSU
�(�}�V�V��p�]�/	�QTu울(�څh*��t�@+�>P�.�4.9�~�:��%V����I�u�QG𔻿f;�w�ԁ�0�z�h(����(�Q[P��4=���/���fґ�C/�h>�h��$�#QNY̍B9����BJ��@�F���F�V9���\1��-�st����*\�b�U!J�1���I�@��E�1[�}}�Uq7I���+��v�[���Bl'Ћ�љ�p?+���N�? x ���T����x�؈���7���L����    ���������J��Ǭ͏ѨuHO�t8p��mE �j�{n�ÔI��+����=�ŉR�����N[ɥ�󽗍c_&rݭdn�8��wn9$�f�9�.�v[��0)Dޛ���с5��g��Τ�A����C�8سIO0�1��g�{��M 7l K���V���i��u ���O�f�}V���2l~�?vWl-�c�	rP���ִj�̽�ͺ曫���/��oߌ�R�̤Z�|0�&��K
��I5W�X��COҞXPTP�'삲q�-R�{��q�㑪�6TfS����o�\����=0�t��g,bn2���".�����'��Ur�]�^K�M�.��F:.�\R5S*�p�@,-��߯n.�F>SA�Ž�:�CMD;'��,��2��Z߸C�Pl�2u�y�	���P*�dHv��w=}�0��!E�T���>r] �/e&2ڞ�%�z�4�PV���b���}�w��]�K[vl�|��z4��!�LT�7���RK����\P�',�
�$Z\�"Cx�*�ܴR�v�h��8[�z�^�u53�m׷Ϊ�cG�\x�|G@� ��:�+EV7wEi�,�D��,��K^!�Z���<C�:�z4:�_hT���n�Hp[�BA!��no!>�k}1�-��5G�j�t�K,z%92.��ੴ7h]�H�1���L(���j	�:�b5Y����K���jA�?��,5�	���0�}{6��I��8��BlT������K�fh*��n��x���g�Y %4��z��F��m���.���
�}���}�< �o��ȥ��@��8L�T$3�gˇAN0Z�B�1گo�ퟷ1AfG*(�����l��F�,��V���LH\,T�8�ɨ�b�1�o�������G�-m?Ιq�CW��[�L5��#��܆����P31�-��s��4��ʮ9��ߜ��D$��ez���h0y�׈�!�'m�ᎎ�OX�t�5��?��M���<�L"�5�v4�Fiw0> fxm)��*���iq�}Q��*e�A�1l9䥸�7���I�
y�B��șC�X���j*�]��ˑ#'��vV L�v��ǿ��R��:lH�=�n��é��8�$���!�~)�c�Bf�	MMz��Y&��0��%�`���S��1��Z��?�Ġƀ�o����fcdj�&aF�ꌶ{���"'K�If�����徹b�?�fs���s�Ia���B���m���ы쾘�@�h�>��#P�1���`j�������RF�F7��/K���Ȉ���O��c�Q�Άr�&��r����ȳ��U�
��_
:�6^uQl�zĨ;F��:���^qNn���hEI&��6ۈ;�*C�p�!�ʃ�7�n}�v������}˩�x�áQ���x�6wՙȀ�7��}U����q:���2��'�'NQD��kqrt�dX*f8�&��o�P�0�1,�I�!m��T%hj��Gt����V�5k�t�ߴߘS�6gb%��nl�2�c�j!eK���Ⱦ#�;rX
#ҾS�����s0Į�������Q%>~]m�����#�,�_�ʹ����h`��)��3��&��J^��G�'m�; d����Tw����g�H����7Bj��u9}(�;v�p�����Gb ��?�.��N~�ݱ��f�$|�-�w�Fa'_6��[(�굹k�Sl^�p��(����cB.�<;{�������C|���\xꯔH����tL@�#�,V�5I~�k��b���l��mn��N�ǔq)��
���"��T�5e���3�c���ב-��N8����ce`Z��-nV���BgR���~��)��_3��N7]�,S�� ���=�|��RX��w5�1?AI�K;��G^�g�!���;�J@�>d�l�fI��ޮ��~�f�[��Ycu��ZH����
�jH���.�_�_x{u��Ds�3�+��x0���fP�ɷ>����]�b��U^�}M%]��8�Z淡=3�*sdD��ˍ֦���� ��^Y})��J�`�ĶZ�v2�HӋX���A�=�J��~�:@�`$0�a�W?�!6�Q�)ՂI�q�x�6�V�<-��o�^�q*͸��`�w
#U��ʘ�����'f�=n~����4`�@�ťX�t\��I�>t$��T��,��*ы��i�%���b����U�
�3I�Ŏ2�D�)Ki"rU��PB�֖��ݏO�Y�Ҹ�g2��R�'x?�����FnR(�
�w�*h���q��ڢg$�ia&6�\01<=c�Q��Ҽ�r]@�eHW�C ���,��&�ù�0ǒPs
~ڗ����Ģu]����)��K��D$�n�DuXq{��,��s���n�2	�.i>x�>��?VS����j�Sҩzz��j7v$4�/�=��	4HX�qwX���� ��x#��{^���5eY��T��V�w��XH������g$�M�����2poJĀM���:zӚ�9��2ß0��:�qKO���oUk�%S��Q�8{�9a��\�&�>��Y盇l]�o4S���_�^��4n�E�%�z�!'+�^��W2�o��a�S42����Hr��=��ݑ�t��6jD�܋���+���c��2�h|*�|��I��U32�h�J�+�_��g*��1�W�9����4<�ǌ.�R?!��%���0�Ww̍}�TRu�l�WX����_�L�ѐMvڕt����b��[]&Ԯ�� &Jy�y���)��j`�.�䙤�5��>�Kwz@�r��[��� ����-`���s$�R��oӚ26d���bO�i*���X������t.Q�H	�ּ���b
��C����3�:���3���� [n�w��RuE�d�v���z�����!�}/�[CS�T�-ω 5��1 ���FƲ���h�Pϴ��b�� ��80�{��̶���ď�d�mX�͠}-��L*�&�#��u�o��]P�OEH�y�j�'���#z��_�@���K�	�T)�l����nQ#䔾�o����-��T�1�v�V�Ҹ�]�T�x�����M<�h������{'۫�8<�ػ�?D�c��êJP� j`��B����9C�ίu��r�\7i}��sK��APd�F�R�:�\fO�GH��BzN�[^���bA�^���r2bzFU�[3�؎���k�*�ȽO�8(�>�Z\�
՝�,W*�p�,M��#�5^)�f�2ՙ�a&c(,�>��;;f̗;��}�>.�S��x:͒^�;��l��]�⒌�8=��SkZ��d��j<������,��N$9ɦS��KM2����|�����ͩ��p��Y�?�)�t�<��ϰ�bm����e2�O߂b/����{�d4�ࢳ �6��썪�S��LÚm�繣]�(/���Q`�RT*��8i<Y��<��N/�� I��|=�Ř���Z56q����]g�{�(U\����[��[�Nt���@�6������$���=��
K~��-)q%7�i�V�;ֲ�lij����H����m*��ߞ��<B��Z|�xG�!�;���>hl3��S%�ta<3�'I:�\�0#���"߆��ɧR�/MdWVkVjN���&��֡��X��	�۴ �����A"�<��Q	�A$3�禯��#�oL�I�]���P��N܁����{�HQ�D����p��j�����?�ΉdM�+=�3�(�����E*�x����7lx?�R9���ݧ�D��r��E4�p2�ZǽC�l"E�TB�7�ҿh+*[g�,�xw?��H�}� �$��c��'����Ʃ`RX
[���^���W��J����y%�wy�mv��|^��描U�g+8���'�(�=���V��E�! x����s@L�N�|����y�v(,3釅��`�#�A����w�9� �{���F�=�\�Q�z� �����'l6��w<�r�[��kt�H�DO�Lv�a����g��A�M���˨)mU���͏[�KT6	39����/b�m�\t	    �K=��G��X��ED���Z�L7���J�<�����i�:�{�j1Nܥ����$XQ��oW�M�{�*W�|��h��Ϸ��A�V"@��&�I�<AH�2F�����=S�yi�g >1���(�5_�����z��ĥͽ��\�X�����y�/~Rg4��d�f�yl*��L�6�rA��^��Q��x�`#l�Φ��C�\ƾw��z.���Q�F� �{��2j]����_^��Ȁl�AP���z#�Fv�a~���4-(�z)��{]է��������ތ�].�b�R/nV+�,���?N^H�L|�����(+�����d�DHD��q]4��T��1I!�Q�>���)���x�1'�d3�3�i�aU�D�}�"�#�w�C��i�IW���Y�����I�0��2Ot�]�X/����/�#�FmEOG�u�^$��c��4������!*O�p�OW&��0��ӓ ���9��1��d�V��%iYY��]�rW��A��LK3%&B���5�q�Φ������K.t�Hϭ�wS:�GGp��LF��{�w\���ŭ٫�6��$�'�[�n��p};9�˸n)L�iC���kw[�j�+��1mHm�tH6�@��骈.�9���)ɌD.��	����W�$m�0�*�a��i�[W�!(c��,��į�<$��-d��2SR?��w�v��b���%������R�lG̵������ڞΨ�1����j�NDP�>%�V��	
���9qA��o�
}�S���f������Ve�����I�R~pu��c8��}��p�����^��y�*��|�M�1Q�6��>�����S~3��&�Q~Ήf�����R�;��VQ�E)�Z�����s9nP�yd-+�}�g�=���5�$/���D�l.�f��U"ʋӛ�k����՛Kh�?�iE�Tc+)��I#r��[@�h�:Soٰ�aV�&�S(�f�/�1��ՉO
n��ˢ�H���(s��y���������M0�df'��̹��l���4�Ճ=��Pjy��"r��2���*p���^RSHq*������1�-�N��9���q8H{��C�R���# e��F��LVRX�ȧAEC>�o8����SϠ#=\�������F�O�w�������:+�A�t�OL��k��\��1m��:UU�$��r���{U��%O� ��Y'�j�*�`�@��|�*@h4p��ؓ �[�� ���q#C]D	��I��kDטp`�D�����a�����C'�<�J~0c�KȢ�]3C�f�����hٺn5J��,v�]��rx�n�:w�%,�t<�im��:���A����{=�0H��ٯ�Л��7�7�� R)<wH�(�[ k��4w���)��6���&�;�v쫁C:�M�~�f�{������fYܲlf(䏽za>�S����9F����߶٣} fxZn�ŴJ��3��]h+-�8�Vi�&I˦� "I�*�Q2j=;�?$�
p<4������x쵶�ݞ�ռ%���j�@,�oυ��r�Q�2���6$�n�ri�0��h��[8�I�w@�TA�l�y7ĠL&�d���R���fn�w�n��p�`I�S*����v�4Չ
dC~eS����@
|��oޯ��+�@�����`4Ja�-I$�/�,ӡ����'K�2f�VzP$���~�j�FP���I��W��2��gR���p(�(BXD���B��U�z&z�����Q�j\���R�F��7(��BB&�Ҳ�}��pS��&AGvﲳ�?]����]��}��g |�1t?�͒6��Jǔ�5W@R;���LZW���%�w<	Tҗ�&�dD[�&p�Ac��	���<b_*�M-F�j�q|�>�1����Sv���
�v�0&�5�%���i �?]���]��{n���Ezeo�_���[KE0m8�l��g����h�/ ���B�� ��~�q�<�_l[�@ֱ5F{8F�=)n�fc�-�԰ⷀ�i{�iM��@_�;Lߞ�i�;B�1�l<�2��^�����q�p�Ȍ�P�Z�0��%���]s( _����r���n
�����4]&��#�e�x٭o��ݜ:0��~�q�I��?@� p�����b�Bmඖ�Y^~.�Ɪ�n/ɒ����Bo���M v�YWys����.ʼ)kҸ��J��?^Jw䧏o���D���Ĭ1�+ʀ�Bg`�Ե����x]���L�4v��XqQu����ae 6�0o@\���m�P4	���R��DP���?���]m�W<���5v<Na�f,�&��y0�2�lq8_�"��{�v�HǶbG�2��b\�� B!�](.�!bmvbx�u�}�+�G�o}�J.v�@�H���ҳ��0�ʐU�$@�@dpn}v6��:ڞ�0��}�)�qbܐS_�Tm���Hk���B�6�v��� )��-ia�|����	T0��Il��^��hc���a��׸aLT�q�X��))�V��?�����f����i���p��"��.�8c�D��0����&�Vn7�=*�&�kW�{���l��j��Z6	��>�0*����=� �d46/� ��@�N���D>�� /
���y1�܏jVYw� L}L����6I��x�5șN:@�=o��ښ	=G^yΊ�!(Q"��Ǟ��l?is�����_�2�a��5ݦ�\�a�J1f���ɨ�@[�E�?x�����|�{J�u�1�o´#ئvaE��}��݆��S�X�����\�KȆ]�d��K�J�d���>l{b�qN�Zoy3�q�S�����Nob=q���y�lџ�O�dZX�=gMJn>�x�Z�*�h���L+����]�m�o��L��(��K�e�>�0qXP��DBd��P0o�� ��uuD!��	����#d͊{����3I�.T�����^�y=4���f�Fk�$�w'}��鬒_��q��\��1ش���>�f��"≬�=��'�����&SCw�"�R���E|�6�����d��	�3�a�W�C�yDJ�w��� ��6����P����ߍWC?�sKDڭ�{p���g?77����m}�a�p?����F�zy(l:*뻸z��QNp�~����2�\�ݍ�[�O�����3'l������q-���^�1N�$��FH�j����i��U�S.��}xLxo4j�5�w�������n�L��P�:����f��cg�u!|N��?&���y�6ӡ���{a��Jk�" ��A��+�lJ��Kc�7��x��uIG8?a�o#]���<k�y�w��h��W߶:����_�Dp"K�����:y�x9?�O��c���~�a���7t
z�^l0\<*��i�ˮ��[��^��&}�A�J<"�GS�ն�cRp~%"���,�<b"�����Z7n��BA�Q�U��d�������j�6�n�.�<��P���-�bA�?i�B�PM�^GrP�=�Z��9�F)/Z����3~�p7<��Ԍ�X�u}�u1C�Y�q���L���߃����$U/Qr	�tu2*<z��i��b���)sY��#7Y�������_�1 �v��ʳ��X{Iݦx�*�L��<������=��}Md%���4����G����M�B� �Q���ۥ���\Bjk�����`i�E���)� ���6�hr� �mQ	��2s#3m������O!C��d��ZW�I*���+�<�[׬N�d��)kN]��d�~�\�z�7�d����<A���S�h��F� ���%�����4�Jt9���`v���S�}#� ZGz�6��&�Pz/�� Q%�Я7��!4JM�W�L�"(u�K$X'�Z���U �������۪��.:�z]Q:�u�ب�#W�����(��/P��h�e�K�#ɜ0�L���F�Bs������f&�O�$^����+s�����6���'G�@������G\�\���a�Y��W�(��ج�D/�#���?LwQݒy��*��WQ���    ���r�nz��F�4.���ܴA���L�IK	>�<���Z���PG#谫)QE��:�'<�s�Ӏ�"����@�mB�Q�������mN�h�5�*�����d0Ll�fy���.���y�3���-'�c�>$�vT�� ��`�Ϸ���A��@�[��|�ZV�3���իd%P��o~�$����;��M,�j%�~�IfG
����՟aHh��J�ܮJwI�Z�Af����$�[�}���LI$���Ձ��X���Z$Pf3:+q�%�Ԅ4������I��I�1�7q!�@ Ә+<�eEs�۪�$������a�uB+��P�T�ҡ��]J-�{!��qW���}�T�e0jڼ�'È�+߂���?VtuHo]���ƻ�#X�Т%���p	���}�2��qu�(�����E3���CQ�Cn�8���+ �t�+,i��Q	�!�؄���l0L@��6��Š`�����<-2X�o���uJ��&��6��(��X�M�[Zc++[�%�K*��G����Yp,։�)�q
?�#�(� z�
�S�D���cŷI��FP���>�����X���)��H�ގ�����;M4�aF���Ց]C��Ɲ�}�x�B.��-J�W1m\j���:6��ʥ�9p���D�ٵ;��6t f��L�`Yl��h��L�$!�mT�`ʽr���Q+��بP�Ɇ������'�� +�<�Ո�w�\j~�禹�,�	x�2�T�\��k�y�(�v_O=��:��4��=�X�N��K�$|��;j�i��J�Ȫ���б�]�%9��8A~��TF�`�9ʭcY+E�S[��N{��'���V����0��ì3���Q�ƣo���<\��Ռ�[�nW�G[�1������e��xX2�:/M�Ɂ�$�'���� �"<��%I���{��l	��U�F-�{'>�Yp,��V$��cy���#[	������G\"Pm�e�!��E�?QZ�2t�LN{A�5Y�Ǿ��=�vK2`�a{M �^��.��w
Г]�G �=nV1�j*�h<_Q�48�;�/�E`�h���vD.�lv-(�){��P'��M�	�|�@f7���߭ ��s�x�Lơ�r�(��{<w��G�Ǒ�Sw@<l�mqd�"���1{����s��=�1Y����6�Z�U��O�T����2A�a�WӪl߷��~���S��#��(��Z"p��j��>6�C�4f�{��[��gJ���V�d �Q�/�<;�ߗ��>�Y��p;���ک(ͫ�n:\�<���W�P�$��ľBH���޸�Q�'�����]�>�~J�.aGY�`XH�D@�)C�c���R�d�� �	�խ�5 �ad�����l)=N��r=�R:�5ɧ�|��Ƿ�|��ˇ(��Z�_f�Bu�a���E�ü���2J�)/�c�J����=X��@�f��2�I��HW-0w���S�!Hf&ּD���n	���%v�xc��b�?za6�5X��w4p3om�h�6̗�։�Q�Ws%I�9��0 �p{q�<%7騭�~g�iҪ��Dj��
 R0[T�.��!~[��<%`"c!��T���8�M^��e���w�1�Q�@p���U������^�5�`�L'���$�{Y�6N����8ݬ�s�o���v��?3'�&�A��>�Vs�T�@JY�$1��҆�Kp��`���0ǜF�\� �"�閲��	F\�1;qi��7�UW%�M�Y��O�7�T��������Pf�\�?�`�	L�.��UO���bV�vr�]i�{�^��>TjI;������PKw32���Ns��~�W�>�"K.G����Ǵ�ԤOd��_m��'�	�U�hn�"���f�OM
_z�6�wX����9��tC�}a)�5�NS?m�]Tz���.�OG=�y��(���o�-~��p�E�vüh��-V61��tu�,����ڑz�v���!f����������fG��U�zꪩ�o50�o<,L��W�FX�L�\�$k��d�����z)�ʺ���o�]~8;`���n<��V͔=�PfU��4[a-��m*{^�X6�|����~r�J�b[c�Q2rsd�^	b������zA��u�����j�;��^�ig-lߠ�s�(2{��tL��즋2n|%"16�k��xMjDfs,W�Z���lcn���Oc�(���腚�!��I���teX�s���S�JB�Ӗ~���I���E��ـ�|�&s_덷1V:��Y�zQ&;�EpoX��~� ?���T�z&BN���(Z���\�|p��	e��p��L��Xy"�����V��N��ԏ��Z�IA�����δ���~�c�
߶��hv�qe`������Jyp��m�)OD��_�_<;�s_�K�I���MӺ���k{�eT��h8I����'�Q.�q�����d��la��q�`���������:lI�Bj���VŁu� Z
$%_�8�*�W��{�ƅr�G�7���3��Þ[1(�6xm��ё����D�r�_���՝�-�\N|�:OZU�]*F^!�\� ,���C������V�4�h9Ә�
F���h�
�t��.N�S=�5CzO3� ,�P quVjhu� N���D��|L\�������d���s�Ť����2L�q�0w���\
�nIQ�ds^{\��Pa$W��x^���ת'��\)��Ȏ�����
�"B�+�Y�{K��LUl�W�|�|K�
w�P\AW��$v�1���=���LgR蘀�t%���Y���T���q#����ɩ��k�T��W ����~A����49�tv�<� _P3,�b�c�o62-����m�9�CUk����8&�_�(���[�ˣ���F�!��v��s2�yĹJYH7D��a������Rv&�E�,��X���f b�6�E�Q43<aQu����:�-;��J6��n�$��/<|�	B�'ŝ�I���v�[���$�ϫ���2���L?����(���D~ �g.h�-����p�����������(�e�z������b!����<��.��"o鵎�a�{��Eڣ��9�JׇA��H�Gt~D�+9�x,n��b&@�k�^���ި�8�t[�^����ͩ[e2�ghF��ϣ;Ũs"�j��{�u-nQ�*��)�9��$�D�\v$���e�r���I��yS	n���o�[�}q|�β��Ʒ�Y�u����%���s����OFRn����J{P��޺X���i�ݫN�!�e��"����S��f�F9"!Z>
��	%4:����5���JOEa���p���S1�(�=[�l|��,���������U�Ϛ�V���I$�x�8ɲ���2��S�E`҆�RR��M�������h>fm��}��z,�x2����$۫��]������c��B}vq���ߡ�)����ˠ
�n��_':{��h���	�ր�3A�W���uS�]% S�~7��}���� �����c��?5�x&�V���Ѱ&P&��j�W|)(֩��U��U�J�Ej���R5����Z���ՇKBb�q�~퀴��Մ[��}˷� *c6�u�
���]P2�̋;�"ƒ;N�Nk�b�['���{#�4Y���A<w��_��p��B�C�!�;���2���
a"�?���`l�0۲�o�0��|Mn������4���.�	:�S��h^�#�?�=;�q&�-�'���t�v�7��ޝ� p|�t�;�M��V�������g��N힕�a�Tk�-���X�����N����	4ϳ/�]�bP�T�/U�x.ߑιM���p�	�a�;�$��,�K�ν���UYO���3D���,�7(�����X�agX1֎Kt�d\���!"UX���<�ٝ+j`S\Eߑ�MZ
F�o��l�t,PR���M���k�N`��n��B��hSm2Y)�;�ί\������ϔY��æ�����9s��B�>��f`����q    ��da)d��������)�%b���&��a�&�*B�>�����3V�A��+�H%nf�k����5y�H���歖aR5��p�d2�GA����R N/�4iEs��)�$P�"���N���.&����Wك�S���k�x�+$8X9A� �8�ͷK�Z�&aH�WCw����u�D^U����"�V��*=�ӄ9U \.Pj���̥�@�� U TFP.��(�y��K{P�.tp�2�P�A�bJ� �n)��h��u�#,=�?]bڨb�q�ǪWU�5o��1-9��Z�<��?R$��Te��ݑD�q�;�W�<\�$P�� ��L>���,�e����������?]������ǛN�������._�y���_:���x{����O��\ݼ����_/<��Z3�s�td�R��I#L�f^��$d�A4����Z5-iٸ�3�8˟^­���BZ-���CC��Ӵ{==ćѡ1�Lq]�:��SS-b~2� �ej�7C�������`�L����t���c�Ơ���G|-���iG��CF�vk��7�^\�t�dᢍ���H����BG�1P�\�!�ū�4�u
U /�g�)��x_�f�^ܤ�����K���aw�����gQ����+P�O���]�Ѐ�#�����ګ�^l\1s�dww ��C�j*p���K�g�C:IF֐B3�a��r���$v:jo��ω���6p�^�6��Հ;��:<4&����lA���O���?R���q��F��H|H1�k��>���e�� �����Ҵ1P}8i�pp �m`�g][�d
��~����R���#��L�[�x'�8�v��ҢT:�y0>�5� ;�|}�������ed��� d�F���D��քB@˗ �V��%ޢ���а��$a����{�4�)��6s�u�qI(�m������+J����b�%��'J��&d�]$�Q⧈���e
�f�T��ʾ�aU���w�;"�
u��,�Q�Gm�)eL�f�~�ډ�)���� zB��&	B���읕��4 �4�-=�;�k��o��}�6���D���Z����Ά%a������Q�ݧ�)� c6+U��vE�_5f	��k{Rs寞+/_��b�6�-i+(��A�ܠ�=��{~���
����ݩKv.y��uǐ�ʔq�]�*��K�v��,d��Q�	7Hcm���m��{,���?-op��I�ǘÔ���ݫ�O��O��w�t�Ҙkd�i��6G9<��v]�ޣ����S1�0�ɛ�8������xh�O���Q�q7�%}�ʭ�bme��lI���P���叾mG]�)vOsC	�B�E߬C��4mNw}��xw�áɠy�8�݊жfP�-�بR0�6w��ԕ�V�����m犈E0N'�kҹFѕ�RM	�HTk8��r�!m@7��Z�dj��� #^"p"Q�%,`F���h�l��?햔5�Of�׹oļ�`�v��m~6��9��� ڸ�X����ɠ(��ɰ�GN46ڔRu.p6Z�(�Oǂ��\"0y�U��P�S���[n$������jse�g{u:�㲑�ks����8���?��v�K��=��
5��o�3�M�3���3���;�x�B���L?���W.Hs�o�[�)�6N*�i�xJ��=�ۄ^��䰪�����e�߻$��Jf�w�%OfE�V��q$b6��݊���&�h�J���Fz�5���@�u���3�ٽ�é(�y�Nխ�+=SB\w�1��m�-�r  � I6�wx
'Q���Y��c��g��0~~�'^���_4�����3��5�u�C��L��B�,\Y�z�r��ViJ6%���V���~w[��%KJ/z3��p�4���{���߷?]����������>�
�Q�R����T/��)���Ƕ���"�XUz�j���ރ쒎�N~F~�ң:`7F�r���A���Z+�E���٤��x8�v=���RT`�RP��Tˎ�b����Ӟ<H�bH�i��J{�� �vZ">P��k,���\�`Y� �(4��{�H����-��y�Į"	�a�r/����f�G}��K�����M�����gWS�~��Xq�R�"��%���TӔk���I�Le�_��R��ąZt��u���~*W��{���1wG����Gه��{���+��\�H�b�2��,R"���/[�^���-ܕ�.ij޼�2)����<$�,�R'ܸ� .O �½נ�T3A�5NA �MTҾ��Z���<�h�K�l/�� �-O�і#�`U,�.MCD�U�ns����ƷU��ӗW��Q^��V� 4O�mЋw�2�70���U����9�� h'�% ,RdE���0�Q^>6�OЪԅ�~��n�������w^av�0@eTE�C��Ís��6S��#��ܕ������X��aJh�ɣ�Z��M��Mp'�#4�9�'�J3�D�q���q�	eB�gc�u�*U��!G�bs��v���UbO�ҝ6v3����[A(���tB��)�Eŋ(�E�Äa�"l.,B#j��"^Nٰ��n�^��M[�/4�V��1,2�=$$dޮ*)�K$��@
�L�L=O����u�-�#H�����**[5�*��h0�[g��U2�4��XqRP<�s[D���n>��LM{��T���,��/����2"��C�z�k�'�l������y���jr�H������Kؾ+��
_dƛ`N�Y�@�
�z�ET͠m�.s��fK ��bٲX��3Ղ�r�=�@hمG�d�5�!���^XT����8��0T ��śZCl����
���IP!ZĄNX1n�H�۞����_�=�+D
��3A;b��26�b"��L0~��
�V5��r�6����8����E�얥���>߶�W�"j`��},�y�t�+�8��P[J������Z�xcX���yu-O��nE�^���~���q󎊙my�@��^?�X�:[-����Qi���4۶�E!~�`�$��V$��j�:�M%��M��9�ka.n�7|�?SCc�\�h2j��#<�,2�����ḫ��w�EL���Tv��$��
r�d�y��#`;8�Yh�%!�ylWU�#�ά�=�Z��K�ɸu� �L��	�h�$MF1D����ŝ�-O�����Y�������}�!g��]�0������6a�Qo��w�cك@#4GfO&2-<,�7�b��P�O|�f��aH�61�MD������M��M�T1��#��GD�bR8� �|��;$n\����U���/���8��B2lt���~:J$�esrnS(:��c���`0�Œy|��%�_(wM��ܙ9 �V1S�u�������Z%�j@�lD��2�&���띝�}:b?����Z'׳��s��!�2ъ��q�Fl9�����[�V���M���[�])Yr@6�7hr�&hx�0�T(�F�-�%U���Ww#M�}[�>�/6�U����2���>�9B=�v8�+A�s�YM��XŁ�ݒӊ��T�ʋ������?������M�1r��	�Kc9�A7� `�$�ՠ�
��Y[N�pz�^Ho(����I�`rq�[�?;���ۂ��ȃk��3� ?3K����~w��'��.վ�.����j�����JZm�5/���A���a���0�������\w��D����қr�s�|�5`���~�Pt39�X�tY�--7�������>��vez*��
���Ji�|�i}�Q�<��Z�պ��M�h) ��-�z� �e��"�$�o��M���"^Ĺd���V��܍� ƒȋ_�{���:���VZ{�~�"n�E��K��〜��5��FWx������븗�т���enê����N��ݪl�?Irэ�v�^7� �Y^yؚ���zشF��ew��-�w�.d+�,�<��E/�<6���.C{n�?��+���_t��n��X�۞V~^��E�����6+�9Y�n+�MwK���k����~ �   x�u�yt��D�s�*�i����e��R��#ϛt�O2���֣�R>��t�'M�y|�?xf>���a2�Ҵ���|u���{�M�����޽b�v�(�|�c�5�=m2�H��et�Kp�{��d|�\��e2k��j~6������.����%-���]�^�-�'nF�q��o��V�-N����N�>&�}8�&����E���������_���cdo�      q   �   x���K� ���@*l �ϒM�f���~�_"e�6
��#�y�㫻��l�v�wO����ĀL۽3��4ΟÂ�e�r$1rVy��^�R�X�JLcI�Rﳒ�
hk]YX�0@���c� )e���/�g���#��[�e�� ����A�%�i�Ԡ�m�o;'1 kZ\�+� ~%���      i      x������ � �      b   �  x���[��Hǟs>������O�EEb_H�D���~������׈
��DT��d���dE��������.�İia�U�AX�
DTu
h���M����)}a�/,�E�����Kj.��^���I�[1FO�n����[�=�3�f�]���N�%%_-�"ﱟ�-|j���4/�"Ñ��=yУ���ͫ��3�3�QU�9I]�m.�&ۣ�`�|���u�Br�6NW��/v�a8Hw{E::�K� �m�f{T�P13�WUa�ꦓո9�����얊^o�̜P���?�����l����=�A��	���S�0��,0a�A�f*�ۡ��K.Y�O�u���Ǩ�t�o�O����ӟ��ӫ�����E�Og�����\q^z�\e�n����h���w���8�)�gJ#5YY�y�U�{�ו�:j�+�u}����.�Ko�	w���	��nlO�Y:��[ay���<����-�)[�L���"i*���Q�:�Q������/o�X���;�fF����Jp�+$o��� ��ȱZG��:! 9+�6�:k�)��A����D��]�ꂟ{�4m�g�m�9>��&�]��|�̤���;u�|�ޕ�I��yp�%�6��Y^��8�Ct��u5�?�5���"��m�^��	i_5�=r]��fz:mCx��\���t5m��V�YYg �j���[��K@�?�}�^2T�h�5�!_ض�E��U7��߷m��U�o;!fTtj�pG��Z	+�0�(�zy7���N�`Yg(�3���C���'��7�M9�E/o?_��9�}gA�n�L�3f�m�mëQ��Tn��
�����$]���n:�P�������gre6�~�(DUZ}3���%̊�]k��oĵ���D�����T$wRmjI�GM�J��������C��]"�����f�����Om?��@�,c`\f�?_?B���eP�S���4�!,ĝ���:6��B�brs�\m<�w̟��/���>�Q̏HP7�b{���M��PW<�}���Ϳs21'�U�\���`e�����ɿDM,$���r�B��6��J&�+<�t�mө�%p��x�n�oԣ�Kxt5�."�b����t���,�)�P�����j0��E���wA�G�t-�L��)K�z�b0����\0lA]���ĳ�-ß+�����9�w���*mE���!W��sě鼲����c�8�erSK�hu�Aɗ	��w�'˺�`<�NSќ��=�C~����Ύ+q3z,���ֶ�����CJ�A�]qS3������an�����.R���I^����)���e��?u�ٺ& ����A��8��qOs�p����Gm"۞G.�hq(W������H>��	8��Z�%E�MN�����g��M�iG4c�3�����ѫg��:T��ŞK�C�֏�6m��=`U�� /P��O��ᾘTl���zv�۞0��Ɂ}�N%9��xf_4�wL4=��������;��e`��_��C���F&,�/�S��/��m��F������6���L:���I�}U����< "X����=.�)~�L���	37"�-E�K�i�>��m4?�}����XQ�r4\0��������m|X1�dE1ά���:�°��U�?t�è-�{�Ы�qU	2��&�	}M ���LF��3���D@[:�[)���m~���9E�����H����<o"HD�����24��������Xci#W�wI"�hb�aM[͗]����Q��:+/��V���L|
#�Ό#�S%į���������ٮ��t0Q���B>s�`��&��s�}Y`�T�v����3�x����ً��w��t7T���ze><����ѣ���m�4k�V���&sQC<��(zN
#�||�Yp_H�E}j���$�ST�vu�=*����,��:	zrJtR�jD�`�Ѭ���$ў��2o����'��c\�[b-Ii	�պGQ�7�O֦?��|1A��4�T���8�АEOP�U=!Y�/�����G��!5��]!B,2�f�>�ܐ���?,�z��Ձ+k�����m|
Xwӄf�]��"����D��F�/���y�W�u����<�d��}�,�ӈs�nw��X�9��3(7���˦�[�x�����XQ1��ZO�M[W�ҰH*�������)��s�4���7d�F����XL��ZӒ}����Dj���ڛ�+���os�Q����z��k������3k8���o�#o\/9�����P�б0n2�����t�8z�q�U��*���nؤȾM���g�� ��N�Dq��ٶ��`�ǱD�t��}��wdE~~+)��w�4�q2e�y����Y�`ga���cݿ���igJ�6�	���H����'�Q:MY3������=i�5w�}�s��(�
[QR9b�Ӊ*�u^mԷ����Ȟhv�d-��� $�Հơ/���r5}W��xq�O�|�7GG�3�1Ĺmy�1"�i(}X�/pT���`î�i�X ��Y�r��v�'�T.�=N\�4"`�n5��+�Fl����**-��n�J�/��qY��<? �0D�e*���%�'5��~���lJ��H*��Tg6&zb���G�ǘ�����ʣS	&���R��6����O}����v##�>V{m>&H�mw]�Ԣ��ī����m��Rn�ǽ��e��b�P§6�������s&��˱qW[��B��{������=lI��t(ł4�j���L⧶�/P~�SM�W�5�q����᮱�2��=j�C3V��8n�5f.�Q�?R�`��23'��Ύ )���'4~_��^��=�����i��:D�V^�����RYpX���*�!�}��@3��X�m�2�ϯ ��T����2T�d����;y��r���M���=�*���О��ӱ����|�4��[���.u��UA2�U3x����,�е�_�����h.p*]���?�'rJ*O���F,o$�]7�'�ZDj��|?������Y��(A�̛d�z���:<��;�v*VʢJ�O����I�}�]�6w=���MX�����wFwG�>����+�L�H׊F0:�6h�Շ���^��GT�p65�)Z@[�"�7����Y�,�IX�M���L�65� �$��Iq-�6�~�ݷ�v��n�x+u� ��LW3�SK%�a1b��z��t��fQ����4]�Y�m�|�.��	�t��	�VA]\ku�7�7�m�iL�oh"�4�Mt���끒y=g5-��"l�/�jG��n^#�+��GFd��>�κ����|i���!_��ݴ��eU��5�7S�,&A��d�RoNz��\�4:��$�X�!�R��߅���&97U�^hw�"��z��`���{�]gi������K"cכ�4����D�-C�- q{>!���y�ٴ�i���*�� ���6���~�2���fbp�g��*DuXw��:���xv�x0��Ip$����T�N	��:���뾥�R�������>R8��t�m�_I$����˩.��������0A���҈����\&��SO}��/O'���K�~�}<�|��|/�>g2�K�/Aq?�j�ڗ�.{��N�s�3�Ŋf�;�R��Ιm���?�>n��gb�H�S5��0�r�E���j�bZF����ZEG2��^����g"b��������o���?����      k   J   x�3�L,�,�,ɯ�/I�,K��L.�IU ����b��Լ�RN#SN##C]]##+cc+Klb\1z\\\ h="     