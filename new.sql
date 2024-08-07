PGDMP                         |            Cafedral    15.5    15.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16401    Cafedral    DATABASE     ~   CREATE DATABASE "Cafedral" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Cafedral";
                postgres    false            �            1259    16528    workload    TABLE     �   CREATE TABLE public.workload (
    id integer NOT NULL,
    discipline integer,
    study_year integer,
    semester integer,
    id_group integer
);
    DROP TABLE public.workload;
       public         heap    postgres    false            �            1259    16527 &   ID_seq005f0820e400465fad480796c63e8939    SEQUENCE     �   CREATE SEQUENCE public."ID_seq005f0820e400465fad480796c63e8939"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq005f0820e400465fad480796c63e8939";
       public          postgres    false    249            �           0    0 &   ID_seq005f0820e400465fad480796c63e8939    SEQUENCE OWNED BY     \   ALTER SEQUENCE public."ID_seq005f0820e400465fad480796c63e8939" OWNED BY public.workload.id;
          public          postgres    false    248            �            1259    16491 
   speciality    TABLE     s   CREATE TABLE public.speciality (
    id integer NOT NULL,
    descr character varying(255),
    faculty integer
);
    DROP TABLE public.speciality;
       public         heap    postgres    false            �            1259    16490 &   ID_seq08db0ed080fc49d187ab75332c25b057    SEQUENCE     �   CREATE SEQUENCE public."ID_seq08db0ed080fc49d187ab75332c25b057"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq08db0ed080fc49d187ab75332c25b057";
       public          postgres    false    239            �           0    0 &   ID_seq08db0ed080fc49d187ab75332c25b057    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public."ID_seq08db0ed080fc49d187ab75332c25b057" OWNED BY public.speciality.id;
          public          postgres    false    238            �            1259    16484    semester    TABLE     t   CREATE TABLE public.semester (
    id integer NOT NULL,
    descr character varying(255),
    week_count integer
);
    DROP TABLE public.semester;
       public         heap    postgres    false            �            1259    16483 &   ID_seq0fa03d9778f643668b4872e1d83334f9    SEQUENCE     �   CREATE SEQUENCE public."ID_seq0fa03d9778f643668b4872e1d83334f9"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq0fa03d9778f643668b4872e1d83334f9";
       public          postgres    false    237            �           0    0 &   ID_seq0fa03d9778f643668b4872e1d83334f9    SEQUENCE OWNED BY     \   ALTER SEQUENCE public."ID_seq0fa03d9778f643668b4872e1d83334f9" OWNED BY public.semester.id;
          public          postgres    false    236            �            1259    16410    academic_rank    TABLE     a   CREATE TABLE public.academic_rank (
    id integer NOT NULL,
    descr character varying(255)
);
 !   DROP TABLE public.academic_rank;
       public         heap    postgres    false            �            1259    16409 &   ID_seq30f03a8a44b14040a29e9bd47e7068a8    SEQUENCE     �   CREATE SEQUENCE public."ID_seq30f03a8a44b14040a29e9bd47e7068a8"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq30f03a8a44b14040a29e9bd47e7068a8";
       public          postgres    false    217            �           0    0 &   ID_seq30f03a8a44b14040a29e9bd47e7068a8    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."ID_seq30f03a8a44b14040a29e9bd47e7068a8" OWNED BY public.academic_rank.id;
          public          postgres    false    216            �            1259    16403    academic_degree    TABLE     c   CREATE TABLE public.academic_degree (
    id integer NOT NULL,
    descr character varying(255)
);
 #   DROP TABLE public.academic_degree;
       public         heap    postgres    false            �            1259    16402 &   ID_seq459a95d506c748fbbf77e9cb841a6292    SEQUENCE     �   CREATE SEQUENCE public."ID_seq459a95d506c748fbbf77e9cb841a6292"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq459a95d506c748fbbf77e9cb841a6292";
       public          postgres    false    215            �           0    0 &   ID_seq459a95d506c748fbbf77e9cb841a6292    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."ID_seq459a95d506c748fbbf77e9cb841a6292" OWNED BY public.academic_degree.id;
          public          postgres    false    214            �            1259    16431    discipline_parameter    TABLE     z   CREATE TABLE public.discipline_parameter (
    id integer NOT NULL,
    descr character varying(255),
    cost integer
);
 (   DROP TABLE public.discipline_parameter;
       public         heap    postgres    false            �            1259    16430 &   ID_seq545b244bd1fa48d69a300a3af177ebc7    SEQUENCE     �   CREATE SEQUENCE public."ID_seq545b244bd1fa48d69a300a3af177ebc7"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq545b244bd1fa48d69a300a3af177ebc7";
       public          postgres    false    223            �           0    0 &   ID_seq545b244bd1fa48d69a300a3af177ebc7    SEQUENCE OWNED BY     h   ALTER SEQUENCE public."ID_seq545b244bd1fa48d69a300a3af177ebc7" OWNED BY public.discipline_parameter.id;
          public          postgres    false    222            �            1259    16445    employee    TABLE     &  CREATE TABLE public.employee (
    id integer NOT NULL,
    employee_name character varying(255),
    contract_number integer DEFAULT 1,
    rate double precision,
    birthday timestamp without time zone,
    working_position integer,
    academic_rank integer,
    academic_degree integer
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    16444 &   ID_seq606d7ab98ca64874a39eee777b666e31    SEQUENCE     �   CREATE SEQUENCE public."ID_seq606d7ab98ca64874a39eee777b666e31"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq606d7ab98ca64874a39eee777b666e31";
       public          postgres    false    227            �           0    0 &   ID_seq606d7ab98ca64874a39eee777b666e31    SEQUENCE OWNED BY     \   ALTER SEQUENCE public."ID_seq606d7ab98ca64874a39eee777b666e31" OWNED BY public.employee.id;
          public          postgres    false    226            �            1259    16452    faculty    TABLE     �   CREATE TABLE public.faculty (
    id integer NOT NULL,
    descr character varying(255),
    full_name character varying(255)
);
    DROP TABLE public.faculty;
       public         heap    postgres    false            �            1259    16451 &   ID_seq8cff231def354b43bd75803615015f68    SEQUENCE     �   CREATE SEQUENCE public."ID_seq8cff231def354b43bd75803615015f68"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq8cff231def354b43bd75803615015f68";
       public          postgres    false    229            �           0    0 &   ID_seq8cff231def354b43bd75803615015f68    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ID_seq8cff231def354b43bd75803615015f68" OWNED BY public.faculty.id;
          public          postgres    false    228            �            1259    16521    working_position    TABLE     d   CREATE TABLE public.working_position (
    id integer NOT NULL,
    descr character varying(255)
);
 $   DROP TABLE public.working_position;
       public         heap    postgres    false            �            1259    16520 &   ID_seq9310125d19a043f591114ae7fb9c8f41    SEQUENCE     �   CREATE SEQUENCE public."ID_seq9310125d19a043f591114ae7fb9c8f41"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seq9310125d19a043f591114ae7fb9c8f41";
       public          postgres    false    247            �           0    0 &   ID_seq9310125d19a043f591114ae7fb9c8f41    SEQUENCE OWNED BY     d   ALTER SEQUENCE public."ID_seq9310125d19a043f591114ae7fb9c8f41" OWNED BY public.working_position.id;
          public          postgres    false    246            �            1259    16477    qualification    TABLE     a   CREATE TABLE public.qualification (
    id integer NOT NULL,
    descr character varying(255)
);
 !   DROP TABLE public.qualification;
       public         heap    postgres    false            �            1259    16476 &   ID_seqa101419f785641339d05031c66d5b529    SEQUENCE     �   CREATE SEQUENCE public."ID_seqa101419f785641339d05031c66d5b529"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqa101419f785641339d05031c66d5b529";
       public          postgres    false    235            �           0    0 &   ID_seqa101419f785641339d05031c66d5b529    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."ID_seqa101419f785641339d05031c66d5b529" OWNED BY public.qualification.id;
          public          postgres    false    234            �            1259    16461    students_group    TABLE     �   CREATE TABLE public.students_group (
    id integer NOT NULL,
    descr character varying(255),
    speciality integer,
    qualification integer,
    study_form integer,
    student_count integer,
    entry_year integer,
    subgroup_count integer
);
 "   DROP TABLE public.students_group;
       public         heap    postgres    false            �            1259    16460 &   ID_seqb2a3ce7e347841278aeecbd6562bd51d    SEQUENCE     �   CREATE SEQUENCE public."ID_seqb2a3ce7e347841278aeecbd6562bd51d"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqb2a3ce7e347841278aeecbd6562bd51d";
       public          postgres    false    231            �           0    0 &   ID_seqb2a3ce7e347841278aeecbd6562bd51d    SEQUENCE OWNED BY     b   ALTER SEQUENCE public."ID_seqb2a3ce7e347841278aeecbd6562bd51d" OWNED BY public.students_group.id;
          public          postgres    false    230            �            1259    16505 
   study_form    TABLE     �   CREATE TABLE public.study_form (
    id integer NOT NULL,
    descr character varying(255),
    descr_rus character varying(255)
);
    DROP TABLE public.study_form;
       public         heap    postgres    false            �            1259    16504 &   ID_seqbdce05eb38054ac4b8794c40e6dcf75e    SEQUENCE     �   CREATE SEQUENCE public."ID_seqbdce05eb38054ac4b8794c40e6dcf75e"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqbdce05eb38054ac4b8794c40e6dcf75e";
       public          postgres    false    243            �           0    0 &   ID_seqbdce05eb38054ac4b8794c40e6dcf75e    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public."ID_seqbdce05eb38054ac4b8794c40e6dcf75e" OWNED BY public.study_form.id;
          public          postgres    false    242            �            1259    16424 
   discipline    TABLE     �  CREATE TABLE public.discipline (
    id integer NOT NULL,
    descr character varying(255),
    department integer,
    discipline_type integer,
    lecture_count integer,
    practice_count integer,
    lab_count integer,
    kr boolean,
    kp boolean,
    rgr boolean,
    zach boolean,
    ekz boolean,
    kons boolean,
    uch_pr integer,
    pr_pr integer,
    pred_dip_pr integer,
    niir integer,
    kons_zaoch boolean,
    gek boolean,
    gak boolean,
    gos_ekz boolean,
    gak_pred boolean,
    dp_ruk boolean,
    dopusk_vkr boolean,
    retz_vkr boolean,
    dp_retz boolean,
    asp_ruk boolean,
    mag_ruk boolean,
    mag_retz boolean,
    ruk_kaf boolean,
    is_special boolean,
    contr boolean
);
    DROP TABLE public.discipline;
       public         heap    postgres    false            �            1259    16423 &   ID_seqd3ff41012254493991520d7d83ca46fc    SEQUENCE     �   CREATE SEQUENCE public."ID_seqd3ff41012254493991520d7d83ca46fc"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqd3ff41012254493991520d7d83ca46fc";
       public          postgres    false    221            �           0    0 &   ID_seqd3ff41012254493991520d7d83ca46fc    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public."ID_seqd3ff41012254493991520d7d83ca46fc" OWNED BY public.discipline.id;
          public          postgres    false    220            �            1259    16438    discipline_type    TABLE     c   CREATE TABLE public.discipline_type (
    id integer NOT NULL,
    descr character varying(255)
);
 #   DROP TABLE public.discipline_type;
       public         heap    postgres    false            �            1259    16437 &   ID_seqd8a5b4bb78a74ee68c070edadb723ca0    SEQUENCE     �   CREATE SEQUENCE public."ID_seqd8a5b4bb78a74ee68c070edadb723ca0"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqd8a5b4bb78a74ee68c070edadb723ca0";
       public          postgres    false    225            �           0    0 &   ID_seqd8a5b4bb78a74ee68c070edadb723ca0    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."ID_seqd8a5b4bb78a74ee68c070edadb723ca0" OWNED BY public.discipline_type.id;
          public          postgres    false    224            �            1259    16514 
   study_year    TABLE     T   CREATE TABLE public.study_year (
    id integer NOT NULL,
    study_year integer
);
    DROP TABLE public.study_year;
       public         heap    postgres    false            �            1259    16513 &   ID_seqd94b9cbc3ae84e9b9ba978a20a51e724    SEQUENCE     �   CREATE SEQUENCE public."ID_seqd94b9cbc3ae84e9b9ba978a20a51e724"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqd94b9cbc3ae84e9b9ba978a20a51e724";
       public          postgres    false    245            �           0    0 &   ID_seqd94b9cbc3ae84e9b9ba978a20a51e724    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public."ID_seqd94b9cbc3ae84e9b9ba978a20a51e724" OWNED BY public.study_year.id;
          public          postgres    false    244            �            1259    16535    workload_assign    TABLE     �   CREATE TABLE public.workload_assign (
    id integer NOT NULL,
    teacher integer,
    workload integer,
    student_count character varying(255),
    weeks character varying(255),
    is_contract boolean
);
 #   DROP TABLE public.workload_assign;
       public         heap    postgres    false            �            1259    16534 &   ID_seqdf9692bed8e849c588782fa7af702901    SEQUENCE     �   CREATE SEQUENCE public."ID_seqdf9692bed8e849c588782fa7af702901"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqdf9692bed8e849c588782fa7af702901";
       public          postgres    false    251            �           0    0 &   ID_seqdf9692bed8e849c588782fa7af702901    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."ID_seqdf9692bed8e849c588782fa7af702901" OWNED BY public.workload_assign.id;
          public          postgres    false    250            �            1259    16498    student    TABLE     [   CREATE TABLE public.student (
    id integer NOT NULL,
    descr character varying(255)
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    16497 &   ID_seqeb8bbe1bd01c454c99682b25824e50ef    SEQUENCE     �   CREATE SEQUENCE public."ID_seqeb8bbe1bd01c454c99682b25824e50ef"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqeb8bbe1bd01c454c99682b25824e50ef";
       public          postgres    false    241            �           0    0 &   ID_seqeb8bbe1bd01c454c99682b25824e50ef    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."ID_seqeb8bbe1bd01c454c99682b25824e50ef" OWNED BY public.student.id;
          public          postgres    false    240            �            1259    16417 
   department    TABLE     w   CREATE TABLE public.department (
    id integer NOT NULL,
    code_number integer,
    descr character varying(255)
);
    DROP TABLE public.department;
       public         heap    postgres    false            �            1259    16416 &   ID_seqf05633ea1bd042a0b8e6e15d3292bda2    SEQUENCE     �   CREATE SEQUENCE public."ID_seqf05633ea1bd042a0b8e6e15d3292bda2"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."ID_seqf05633ea1bd042a0b8e6e15d3292bda2";
       public          postgres    false    219            �           0    0 &   ID_seqf05633ea1bd042a0b8e6e15d3292bda2    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public."ID_seqf05633ea1bd042a0b8e6e15d3292bda2" OWNED BY public.department.id;
          public          postgres    false    218            �            1259    16468    normas    TABLE     �   CREATE TABLE public.normas (
    id integer NOT NULL,
    parameter_name character varying(255),
    value double precision,
    comment character varying(255)
);
    DROP TABLE public.normas;
       public         heap    postgres    false            �            1259    16467 *   КОД_seq35369ace332a43c2b0d1973e2b9c98be    SEQUENCE     �   CREATE SEQUENCE public."КОД_seq35369ace332a43c2b0d1973e2b9c98be"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."КОД_seq35369ace332a43c2b0d1973e2b9c98be";
       public          postgres    false    233            �           0    0 *   КОД_seq35369ace332a43c2b0d1973e2b9c98be    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public."КОД_seq35369ace332a43c2b0d1973e2b9c98be" OWNED BY public.normas.id;
          public          postgres    false    232            �           2604    16751    academic_degree id    DEFAULT     �   ALTER TABLE ONLY public.academic_degree ALTER COLUMN id SET DEFAULT nextval('public."ID_seq459a95d506c748fbbf77e9cb841a6292"'::regclass);
 A   ALTER TABLE public.academic_degree ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16758    academic_rank id    DEFAULT     �   ALTER TABLE ONLY public.academic_rank ALTER COLUMN id SET DEFAULT nextval('public."ID_seq30f03a8a44b14040a29e9bd47e7068a8"'::regclass);
 ?   ALTER TABLE public.academic_rank ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16765    department id    DEFAULT     �   ALTER TABLE ONLY public.department ALTER COLUMN id SET DEFAULT nextval('public."ID_seqf05633ea1bd042a0b8e6e15d3292bda2"'::regclass);
 <   ALTER TABLE public.department ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16773    discipline id    DEFAULT     �   ALTER TABLE ONLY public.discipline ALTER COLUMN id SET DEFAULT nextval('public."ID_seqd3ff41012254493991520d7d83ca46fc"'::regclass);
 <   ALTER TABLE public.discipline ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16780    discipline_parameter id    DEFAULT     �   ALTER TABLE ONLY public.discipline_parameter ALTER COLUMN id SET DEFAULT nextval('public."ID_seq545b244bd1fa48d69a300a3af177ebc7"'::regclass);
 F   ALTER TABLE public.discipline_parameter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16811    discipline_type id    DEFAULT     �   ALTER TABLE ONLY public.discipline_type ALTER COLUMN id SET DEFAULT nextval('public."ID_seqd8a5b4bb78a74ee68c070edadb723ca0"'::regclass);
 A   ALTER TABLE public.discipline_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16818    employee id    DEFAULT     �   ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public."ID_seq606d7ab98ca64874a39eee777b666e31"'::regclass);
 :   ALTER TABLE public.employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16832 
   faculty id    DEFAULT     �   ALTER TABLE ONLY public.faculty ALTER COLUMN id SET DEFAULT nextval('public."ID_seq8cff231def354b43bd75803615015f68"'::regclass);
 9   ALTER TABLE public.faculty ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16853    qualification id    DEFAULT     �   ALTER TABLE ONLY public.qualification ALTER COLUMN id SET DEFAULT nextval('public."ID_seqa101419f785641339d05031c66d5b529"'::regclass);
 ?   ALTER TABLE public.qualification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16860    semester id    DEFAULT     �   ALTER TABLE ONLY public.semester ALTER COLUMN id SET DEFAULT nextval('public."ID_seq0fa03d9778f643668b4872e1d83334f9"'::regclass);
 :   ALTER TABLE public.semester ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    16867    speciality id    DEFAULT     �   ALTER TABLE ONLY public.speciality ALTER COLUMN id SET DEFAULT nextval('public."ID_seq08db0ed080fc49d187ab75332c25b057"'::regclass);
 <   ALTER TABLE public.speciality ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    16874 
   student id    DEFAULT     �   ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public."ID_seqeb8bbe1bd01c454c99682b25824e50ef"'::regclass);
 9   ALTER TABLE public.student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    16881    students_group id    DEFAULT     �   ALTER TABLE ONLY public.students_group ALTER COLUMN id SET DEFAULT nextval('public."ID_seqb2a3ce7e347841278aeecbd6562bd51d"'::regclass);
 @   ALTER TABLE public.students_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16888    study_form id    DEFAULT     �   ALTER TABLE ONLY public.study_form ALTER COLUMN id SET DEFAULT nextval('public."ID_seqbdce05eb38054ac4b8794c40e6dcf75e"'::regclass);
 <   ALTER TABLE public.study_form ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    16897    study_year id    DEFAULT     �   ALTER TABLE ONLY public.study_year ALTER COLUMN id SET DEFAULT nextval('public."ID_seqd94b9cbc3ae84e9b9ba978a20a51e724"'::regclass);
 <   ALTER TABLE public.study_year ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    16904    working_position id    DEFAULT     �   ALTER TABLE ONLY public.working_position ALTER COLUMN id SET DEFAULT nextval('public."ID_seq9310125d19a043f591114ae7fb9c8f41"'::regclass);
 B   ALTER TABLE public.working_position ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            �           2604    16911    workload id    DEFAULT     �   ALTER TABLE ONLY public.workload ALTER COLUMN id SET DEFAULT nextval('public."ID_seq005f0820e400465fad480796c63e8939"'::regclass);
 :   ALTER TABLE public.workload ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    16919    workload_assign id    DEFAULT     �   ALTER TABLE ONLY public.workload_assign ALTER COLUMN id SET DEFAULT nextval('public."ID_seqdf9692bed8e849c588782fa7af702901"'::regclass);
 A   ALTER TABLE public.workload_assign ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �          0    16403    academic_degree 
   TABLE DATA           4   COPY public.academic_degree (id, descr) FROM stdin;
    public          postgres    false    215   i�       �          0    16410    academic_rank 
   TABLE DATA           2   COPY public.academic_rank (id, descr) FROM stdin;
    public          postgres    false    217   �       �          0    16417 
   department 
   TABLE DATA           <   COPY public.department (id, code_number, descr) FROM stdin;
    public          postgres    false    219   N�       �          0    16424 
   discipline 
   TABLE DATA           >  COPY public.discipline (id, descr, department, discipline_type, lecture_count, practice_count, lab_count, kr, kp, rgr, zach, ekz, kons, uch_pr, pr_pr, pred_dip_pr, niir, kons_zaoch, gek, gak, gos_ekz, gak_pred, dp_ruk, dopusk_vkr, retz_vkr, dp_retz, asp_ruk, mag_ruk, mag_retz, ruk_kaf, is_special, contr) FROM stdin;
    public          postgres    false    221   z�       �          0    16431    discipline_parameter 
   TABLE DATA           ?   COPY public.discipline_parameter (id, descr, cost) FROM stdin;
    public          postgres    false    223   ��       �          0    16438    discipline_type 
   TABLE DATA           4   COPY public.discipline_type (id, descr) FROM stdin;
    public          postgres    false    225   ��       �          0    16445    employee 
   TABLE DATA           �   COPY public.employee (id, employee_name, contract_number, rate, birthday, working_position, academic_rank, academic_degree) FROM stdin;
    public          postgres    false    227   ,�       �          0    16452    faculty 
   TABLE DATA           7   COPY public.faculty (id, descr, full_name) FROM stdin;
    public          postgres    false    229   2�       �          0    16468    normas 
   TABLE DATA           D   COPY public.normas (id, parameter_name, value, comment) FROM stdin;
    public          postgres    false    233   ��       �          0    16477    qualification 
   TABLE DATA           2   COPY public.qualification (id, descr) FROM stdin;
    public          postgres    false    235   R�       �          0    16484    semester 
   TABLE DATA           9   COPY public.semester (id, descr, week_count) FROM stdin;
    public          postgres    false    237   ��       �          0    16491 
   speciality 
   TABLE DATA           8   COPY public.speciality (id, descr, faculty) FROM stdin;
    public          postgres    false    239   ��       �          0    16498    student 
   TABLE DATA           ,   COPY public.student (id, descr) FROM stdin;
    public          postgres    false    241   E�       �          0    16461    students_group 
   TABLE DATA           �   COPY public.students_group (id, descr, speciality, qualification, study_form, student_count, entry_year, subgroup_count) FROM stdin;
    public          postgres    false    231   b�       �          0    16505 
   study_form 
   TABLE DATA           :   COPY public.study_form (id, descr, descr_rus) FROM stdin;
    public          postgres    false    243   ��       �          0    16514 
   study_year 
   TABLE DATA           4   COPY public.study_year (id, study_year) FROM stdin;
    public          postgres    false    245   4�       �          0    16521    working_position 
   TABLE DATA           5   COPY public.working_position (id, descr) FROM stdin;
    public          postgres    false    247   z�       �          0    16528    workload 
   TABLE DATA           R   COPY public.workload (id, discipline, study_year, semester, id_group) FROM stdin;
    public          postgres    false    249   ��       �          0    16535    workload_assign 
   TABLE DATA           c   COPY public.workload_assign (id, teacher, workload, student_count, weeks, is_contract) FROM stdin;
    public          postgres    false    251   j�       �           0    0 &   ID_seq005f0820e400465fad480796c63e8939    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seq005f0820e400465fad480796c63e8939"', 1, false);
          public          postgres    false    248            �           0    0 &   ID_seq08db0ed080fc49d187ab75332c25b057    SEQUENCE SET     V   SELECT pg_catalog.setval('public."ID_seq08db0ed080fc49d187ab75332c25b057"', 1, true);
          public          postgres    false    238            �           0    0 &   ID_seq0fa03d9778f643668b4872e1d83334f9    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seq0fa03d9778f643668b4872e1d83334f9"', 1, false);
          public          postgres    false    236            �           0    0 &   ID_seq30f03a8a44b14040a29e9bd47e7068a8    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seq30f03a8a44b14040a29e9bd47e7068a8"', 1, false);
          public          postgres    false    216            �           0    0 &   ID_seq459a95d506c748fbbf77e9cb841a6292    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seq459a95d506c748fbbf77e9cb841a6292"', 1, false);
          public          postgres    false    214            �           0    0 &   ID_seq545b244bd1fa48d69a300a3af177ebc7    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seq545b244bd1fa48d69a300a3af177ebc7"', 1, false);
          public          postgres    false    222            �           0    0 &   ID_seq606d7ab98ca64874a39eee777b666e31    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seq606d7ab98ca64874a39eee777b666e31"', 1, false);
          public          postgres    false    226            �           0    0 &   ID_seq8cff231def354b43bd75803615015f68    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seq8cff231def354b43bd75803615015f68"', 1, false);
          public          postgres    false    228            �           0    0 &   ID_seq9310125d19a043f591114ae7fb9c8f41    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seq9310125d19a043f591114ae7fb9c8f41"', 1, false);
          public          postgres    false    246            �           0    0 &   ID_seqa101419f785641339d05031c66d5b529    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seqa101419f785641339d05031c66d5b529"', 1, false);
          public          postgres    false    234            �           0    0 &   ID_seqb2a3ce7e347841278aeecbd6562bd51d    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seqb2a3ce7e347841278aeecbd6562bd51d"', 1, false);
          public          postgres    false    230            �           0    0 &   ID_seqbdce05eb38054ac4b8794c40e6dcf75e    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seqbdce05eb38054ac4b8794c40e6dcf75e"', 1, false);
          public          postgres    false    242            �           0    0 &   ID_seqd3ff41012254493991520d7d83ca46fc    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seqd3ff41012254493991520d7d83ca46fc"', 1, false);
          public          postgres    false    220            �           0    0 &   ID_seqd8a5b4bb78a74ee68c070edadb723ca0    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seqd8a5b4bb78a74ee68c070edadb723ca0"', 1, false);
          public          postgres    false    224            �           0    0 &   ID_seqd94b9cbc3ae84e9b9ba978a20a51e724    SEQUENCE SET     V   SELECT pg_catalog.setval('public."ID_seqd94b9cbc3ae84e9b9ba978a20a51e724"', 5, true);
          public          postgres    false    244            �           0    0 &   ID_seqdf9692bed8e849c588782fa7af702901    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seqdf9692bed8e849c588782fa7af702901"', 1, false);
          public          postgres    false    250            �           0    0 &   ID_seqeb8bbe1bd01c454c99682b25824e50ef    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seqeb8bbe1bd01c454c99682b25824e50ef"', 1, false);
          public          postgres    false    240            �           0    0 &   ID_seqf05633ea1bd042a0b8e6e15d3292bda2    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ID_seqf05633ea1bd042a0b8e6e15d3292bda2"', 1, false);
          public          postgres    false    218            �           0    0 *   КОД_seq35369ace332a43c2b0d1973e2b9c98be    SEQUENCE SET     [   SELECT pg_catalog.setval('public."КОД_seq35369ace332a43c2b0d1973e2b9c98be"', 1, false);
          public          postgres    false    232            �           2606    16753 #   academic_degree AcademicDegree_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.academic_degree
    ADD CONSTRAINT "AcademicDegree_pkey" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.academic_degree DROP CONSTRAINT "AcademicDegree_pkey";
       public            postgres    false    215            �           2606    16760    academic_rank AcademicRank_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.academic_rank
    ADD CONSTRAINT "AcademicRank_pkey" PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.academic_rank DROP CONSTRAINT "AcademicRank_pkey";
       public            postgres    false    217            �           2606    16767    department Department_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.department
    ADD CONSTRAINT "Department_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.department DROP CONSTRAINT "Department_pkey";
       public            postgres    false    219            �           2606    16782 -   discipline_parameter DisciplineParameter_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.discipline_parameter
    ADD CONSTRAINT "DisciplineParameter_pkey" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.discipline_parameter DROP CONSTRAINT "DisciplineParameter_pkey";
       public            postgres    false    223            �           2606    16813 #   discipline_type DisciplineType_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.discipline_type
    ADD CONSTRAINT "DisciplineType_pkey" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.discipline_type DROP CONSTRAINT "DisciplineType_pkey";
       public            postgres    false    225            �           2606    16775    discipline Discipline_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.discipline
    ADD CONSTRAINT "Discipline_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.discipline DROP CONSTRAINT "Discipline_pkey";
       public            postgres    false    221            �           2606    16820    employee Employee_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT "Employee_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employee DROP CONSTRAINT "Employee_pkey";
       public            postgres    false    227            �           2606    16834    faculty Faculty_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT "Faculty_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.faculty DROP CONSTRAINT "Faculty_pkey";
       public            postgres    false    229            �           2606    16883    students_group Group_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.students_group
    ADD CONSTRAINT "Group_pkey" PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.students_group DROP CONSTRAINT "Group_pkey";
       public            postgres    false    231            �           2606    16738    normas Normas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.normas
    ADD CONSTRAINT "Normas_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.normas DROP CONSTRAINT "Normas_pkey";
       public            postgres    false    233            �           2606    16855     qualification Qualification_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.qualification
    ADD CONSTRAINT "Qualification_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.qualification DROP CONSTRAINT "Qualification_pkey";
       public            postgres    false    235            �           2606    16862    semester Semester_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.semester
    ADD CONSTRAINT "Semester_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.semester DROP CONSTRAINT "Semester_pkey";
       public            postgres    false    237            �           2606    16869    speciality Speciality_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.speciality
    ADD CONSTRAINT "Speciality_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.speciality DROP CONSTRAINT "Speciality_pkey";
       public            postgres    false    239            �           2606    16876    student Student_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.student
    ADD CONSTRAINT "Student_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.student DROP CONSTRAINT "Student_pkey";
       public            postgres    false    241            �           2606    16890    study_form StudyForm_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.study_form
    ADD CONSTRAINT "StudyForm_pkey" PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.study_form DROP CONSTRAINT "StudyForm_pkey";
       public            postgres    false    243            �           2606    16899    study_year StudyYear_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.study_year
    ADD CONSTRAINT "StudyYear_pkey" PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.study_year DROP CONSTRAINT "StudyYear_pkey";
       public            postgres    false    245            �           2606    16906 %   working_position WorkingPosition_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.working_position
    ADD CONSTRAINT "WorkingPosition_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.working_position DROP CONSTRAINT "WorkingPosition_pkey";
       public            postgres    false    247            �           2606    16921 #   workload_assign WorkloadAssign_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.workload_assign
    ADD CONSTRAINT "WorkloadAssign_pkey" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.workload_assign DROP CONSTRAINT "WorkloadAssign_pkey";
       public            postgres    false    251            �           2606    16913    workload Workload_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.workload
    ADD CONSTRAINT "Workload_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.workload DROP CONSTRAINT "Workload_pkey";
       public            postgres    false    249            �   r   x�E��	AD��QL6���`tV�,x2�9��:8k
�3���A��;�3����U782G���
7&���Fiq�J~���Of�	�<�t/��[��|���z4U��xM=      �   S   x�3�0�¾�m�^�{��ˈ����@��[/6^l���9/L�oW��|���¾�/�S���¦����b���� _�.�      �      x�3���0�¼�.,����� OQ      �      x��ˮ��m��GOq�U��_��2�dd�U��&?�fdYN�X����ı���F�Hs�+�~������������jƒ<=g��{��t�����z�z~�n���������OW���}v������������޿����~��sw����-��[�{����������_�����}�Ɣ_�����G�����O���M֡���ʐ�����I���Ŗ�F��_�~�?�HZ�:�����N��	k�.��M��o�ߠ���~^��C��4`o�?4L���ȼ�
�������G�	����}Z��N�/6���������s���zb|���J?66C�P����9z��Z޷�����_a�����6�M(旨�W$bO��r��{p{��2%Hᗥ��^Ҍ�㷥�y:��"�ҕ���h-���o��>)]��Z�k����=G����Q��ۙ�e��]��׏���|ܬ���qeZ����"|[����O��Y����;��a�O��3�	���7��^{�����w��7�d��O�~RF ���Ǹ�����x��w��v�?uWnh�[ǲ1
�u�;
z���4Λ�e���N4R���������Gĭ]�(�W����I�]����ĺ�6�A������O�'4M��O�-���#?���T���@[�層�i�z{��~y��~�d-�Hk�����H�����W�eZ�yr�y�Ua_\8�º͑���X^m�\�M�Mۿ�-���G�����T6�rC������{���L~���_=9��G�!�I�l�:�+P�v�Y}Z{$'�XC8��>�iV�ǻ�޿�Pe�_��݅�+�����*?���n��v���i���5��6������ץGw��.wՒ��ݤ��-��k�K�6w��ܹ}��>�Ôn�e�ov������wW����Ѓ�����L>,7�r�e�;����l���Mw�H:"n�����\�^������9�:Mw�}np�/23M���v���yX�ԙe�Ӈ�׻���ȇa%�����5�XOJ���>��24S�-S���)�~���d�U��/7߹�������V�^����'���f{{< �W��F��������Lt��C9�?,o�����]>.��m����G��by��m�n�b{[����8+��fJ,�O���4��.c&Y��1�-:��n�?ء$���������g�1��]����=t��c3����z�x
mM��e����ӎZ������Z+�؎�����ݠL�6km�������H�,.:����O�9X��N�.�c�0v`�Fp�au�g۞ő����_���Z(��''��fsa�{#m/�쇍��yb�<�X�n:���G�;'Gy�ͦ��Sw=�,!�<��/��|=k�э;�����.6;��-�ZIi�����ƌ�9���yvl�
��S������+/-�/�/}v���t�鴟����a���kh��M�ߖ���Gww%�ס�6֐.5��֟9&�by]>zE����?-���u�6��$�q��=�u�Y^O��|f�FA��M��vw=�����ԃ���]�3�8q�`Ǜ)���"$`�o��������t3uge����]���m7�e��C�.�<�q���i�Ǜq�X6����v�G�����̒�����?P࿔���C;��ϲV�i~M>��^�x����+;�c`���{�zj�|�l��y4�nF�>�?)� ��ɬ����G�˵g�wb�k�h���������K��gK�
B/��͐��1YXJą�yd���|al0����u�������~�V��,���-v��O P��\���h?+��Z���0�X,�[Ò����#[�3-p4k��]��V/���ZS���i���q^}v�0��xP�F�k2FX�Lݭ�db)�P%]o��.�(�9�uP���T������TV!zU��B�jRY��۵��i�NV�ƒU�Y�K~n,an,mÒ����#����Ԝ ��w�R�X���2\7VB��Ʋ�+���X>M���9�Í��In��,�ʍ��G7p<��MA��\����_���������J܃8��폱A	�耱�t �S�ؠ�L���A	��[U[W������/�	]d���9�'�J��v*�0n�#`}`�ZK+�F`�S��c_f���pmܝ�D��>9�M	@n��K.��*䤖4s�5��ͽP���|�jiQ �X!д�q�t.1$�H'�v{wa���w1�V1�K�D�*�-�������_��I�X�D���d��}�����D����St)sz�W%��`�Ů��qV���jw�_>a_����2,��6�b{8M�.���ik7?��!e׊��6pl���j�i��Y�J�˰L!X�e
��4�B(�+�0�`�k5o��$PC�l�){�d
�M���֖���"8�W��Ϊ@h���%�j	�A�P���-}L�kB�~���bS�%r�N����K���%�_//	^���=0. �s��e����Ҵ xa"|��{��24�G[���5�3�W���8(��G[���5[���-��Gk��}�Gk�X}�f/SL_����装�ר�h�)��B-p����G[�
#��:�b+�+[�!��-n��->�1�Gܴ��kۃGcD����e�d��n�	������-��裵a���8�h�^H������7��+
&
Z�����������
y>��1�,��'lIۼOӍjr�O.�̨��ỵ�^l(nqU���7}�U�%*�n��H������"��۔53�M�	q#��~Z8Wb�e��$4OY#���ޒθ��<*[�qg\Dy��cʃ���8�7�o��)�,t��8�/��k�K���fҲ�!u�(�T��j�����YUe�D�p�W��6�`�R��uP�<Gqx̷p
ժ��}��vܫO�۪#����^(�_�k�90�
�� Ņ�wC�/j�(?	�(.�:g'��50ʻ�����m׹h�v_�U�����-eA[����bP��i�A���ج�G�LE[*��D�
2Qj�A��8�������w%ۈ��${%����{2,An�X=O��FL�|���_���M�"q�4���-,O�����>?|�87�ح�m'�g�M�3�l���da��l���J��VzK�7 ,��tx��e8j��{�{�yo���S{�y�%�aއq�a�G�g��i�g��Y��ä������z��`�=�|p�FB�ڳ/��qq΃��[�������ܜXÛnxܵӊ���R0x���X9|\#~C�+��h��0�D<��]:;Y/[U����In���h��^L�C����Xȳ�|v|U�#�Kh���v�fa3&�͘i�A=��!nhf�����@au嘁B��3�Ue
����V�u@@��Bu�]َ�: ~N�u�[�z�r�u��h�����rVv���:�'�:̌Aµwv|Ʀ&{b����07������B�sO�X�-��wt˽���,�c�녹f�궶0��I͉⯻\�x�F1��K��W�f��p_W�_w�+!1#F{���Y5_y�kS���i\�lZ*Oj�n�P�u+'���L�Qnէʻ"q<��b*W!?O���TO0��m_��$���HS����Z����,}�7�Չ*�E�=�(.�MT�~���U&�d��~�Ks|�6$ӎFM:��<I��p���	�S'A�F����ltB7�.�S���]�~\�.ؠ��{�i��M�]�g���at�M�bt����肃n]pV��iat�y�.����U0���6&�����]�F��x֣���pP����(`t��:����ct��"n;at�󩾖]��I�.P؇FB�'r�Cct�b1�8���K
1�r�V T~v+D#�n��ޡWyU���w}~�Ӊ�
���n�������-Hx|{v+��n�>��xYv�`��G��MA�p�Cz�s��ɩ���    p�����G�3�<@MU�p$�S�#�yEI�p$ĳ�G8�)��S���)wz�F3�y�#���{�#y%�'��}bƓX2�餙G�Ŭ{�%;殅�j�ף��C/Q?��K�.􅭊��(��D5�n@g��:������g5�����sA��rAF�\��&$k�u�����rA�KrAr��v.�8J.��ޱ��R������c%c��'��bp��J�p쾩+��׈���2m�X���S$gm~/c%#��wdp��$y����T!V�Xɸ-�+e�6�۵�eJ����	�:\'�k��u��3T�m�(���P�:���q��MֿNDo�1���ћ������}�-��6�	^'Pܩ$�B�	ʎ'�����p\�L��+��b�'4Ӈ��YI>Bqy@�(z7��G��Q��P4���?|�R8�ME�{]�5��j��#��:�G("��G��I>BA�RV�ڪN���%®��ST��e�:ő�:E�Nq��N�]U���K�ŪN�Y0 �\�*U�*v�Z��V�U��Ok��UQ�jUT�Z��jUԨZ[T��	ͪUQ�jUT�Z��jUԨZ{U���ZW�b�]٪UQ�jUt z#�*f�7�Ǣ<�|���PI���g�2q�N�5�j��>��>ѥ�0�໵�u}?�y'�Y��SR8\�����Bzh����X-	�x��*&�¦f� �<iG�P��_�0��b`�Ƀ��r��@�V��N`0����	ˬN��8E��rֆ��ݳ6$��v���Y kC"c�\ֆD�Iլ����YR����Y�&�fmHd��ڐB��ڐ���%kC
I�K!_��ԁj c� p������]F(��j(�_F��/Gg%�/��A�/�&��Q�`�Q#���(�_~�5ٺ�_f��`�Q���YS\��rtn��˨���Q���QD�������Q�Z�e�=l�e�m��˨��e���(o����R^::�V^e��奱������,���(N��4�0ByiT�X^�%Y^ōX^�R./]�*/���./�

��F)��Q�ryi�@��4j�X^��./�"��K�$�����N�����K��k(/�j���Fْ�Qܸ�Q9���(��Ҩ�nyiT@��tti��Ҩ�@����d%���8>R����ݢ��Q�V}o�P��*��F�*��Q�U��F���{G���{�h���(]��7j�R��^e}o�[��7
��7�3D}o�C��7
����ԫ�w�7���4ӫX���A����\���蘣@'�Z�ty=�����4S��>� ;5�rۑ!S'�eň G�@���U�@����ޔ��+� T��F����uL(j`#P�#" 5��(�=�R�/:N�Ί>O� V�r�� δ��k=h�1 �F�j�q��ZЍ@����.�J�з�@�CD ~m�@�j��P����z���"P��Z��<j�Ve�����v��g�pAb�Embuh�װ�&$q�	�Y'����?s�ḌZ�ḲV��G�nhb���y���Z+z=��A�%�Q�y�HAb��u%�Q��!�Q�)6�1��lo4~�t�%.���\3be����&�Q\��G�&1�M>[�E��Gm�*1�
,�Ќ�G�vXb�;[1K��Gm|/`�{m��Fy<ڭ�F�I�F�K�RV�m���(�h�`�q`�Z%`E/-xtv��u�m� h �(7j���I�F�y `ۃ��W4�Q#���I�L�'2�B%(�H��L� �Z���]�]	B0y�@��	jP��dH�
R��@�Ň �4A�ޭ\�/�r�W��a�`'�J��B�����X	�\��	B���!X� �{ފ�`畒��@q+�	B�A� ;��X,�g�*�@(��@�)�!83A��5k�}/	BX�<�b��$�Bn�	Bp�T��|3��b��,I��F$�7���� �B�vl�� �s�֊^oZ}���)H� �yRQ�($�/A�#BB02!��	V� ��� ���B�.�	B�h�Q	BI� �p�$a�w[� ��4�_;�(�dT����$a���Aq{ݗ ��K�׀ �B� =��d�V ӤMH�B�U')lE� LK�����;m��"`4���S�@&~�s�0�Ʀ!�È��"H�nO�l�B
NQ$�� ��M�0sr���g9A�Lک�-\ɐX
z�#-ŪA��J�vj�V���4/�ݕ ��a�`'��R������4bY$,ŧ�'-ř���"L ��=oE	Bk楏����V���xy�К9p-�bY�%�9�B[� �f�ZF� �0BZ
Sњ� �%Ah)Rfp��5�N� �r�LZ�W^jHZ��O(�:I���3�|uBk'e��R�Ah-�MZkBk9[kE�{e��R�*Ah) H� �ԗ ��#BZ7��֙N��@� �Y3>Ah��T;�B�N]�����UF%����ugqA��R؉&Ah�ٔ��BK�&��֟M�(H�u��.�������^� �>(��L�BK�%
��Y��b�6L��F� �aiڣ���p�L�R[F� ��k���A� ���܁ ����T���a$	BK/r��������\����Hr69z���&�5��9�G�:z?L�:z�(R��s�1��ܕ���65�|T�F=NT�Q?Mr���5~jT��1'�t��x'[�'�uT[�'�U�V꧳u{m��XM[���F�����)�k+��S]ޒ6�R�ԶDm���צ`�q=a:��O ��k �$w�2�����e�<P���g^�3D(��Q�=1�$"r�T���;�U_.D(2��حk�ƶǩ=1����ө�6j�~�"�0D�P�Z$'�"m�;�M�p���dO�Hn/�?� 7���k���'b���5;"�M�Ο\�Οܱ�2v��9W@��=�|��v�D�'U;�V�Ο��$��K�P��|�~�%�>«r_���r}�%�~���!�~�8���~���O�Dܚ��/��}��_
<�W��¼�z������!RH��!qeJq�)�)���"�c���!R�;�4�C�h��(Ͳڬ��ev������ጒ�!�V��b����'5%�|Bq�	奖��3R��"Q�j��)M�g�Hɏ�"� �"%��Z��I9;D�tӪ�!R�"���(�t���2M�d�H�T n����Lw	}I���r�
�X^�ێxN���9�I��L��"񜧳���<�.񜧥�E��Y��g���zt��s&
��yf���s�x����f셳C���|���`y���䔾���X���O�d��fi�ͣ����"ҥ�"���>�zg�����Cd�%si�"S�I�/S�h9�/C�'r�Ff�ҬGf�C��%�!3�]�]	�\�)��	�LI�U	�l��I��#�;���(Af�	�lۻ�+�E˩+W�燍���L镇 3�*4������'x��ݞ\̔Z�\�2 ���Y-J.f7��ޜ\�/Ӟ\�.ʓ���Ao9,�3%9��L�/Ð���b����ar1Sx�֬��$sI�66h�� I.f
�Q&�o������^@.f
.�#�c&���@�\�q�C.���&s��b����ף2��)�H�\�a^ U�\��ԗ\�Q$B.�2�b���[&:9r1SD���b�gstv#s<u�kN.f���\�Y�\L�rp���d����(�1k(���b:[O�\\'��C.�y�wgr1�r�� S� )�E�\�F�����\�G�K!奅7��Vý6AH0a��냩wR 3?��=A��46$Q#J�@$Q\��*~��"Q�W$Q|� D��&A��9�ȸ�$� �Da.�!jP�&�c9P$Q�� DM�0A�"ۻw+�E
f#Q�a�\�ť1BԤS�.�&�OiN���]�5�H>ԃ���$�P�y���$��H>�� N��9p-�D��4   *ɇ�K��@���S�(�|����CM@o�Z�>�|�n7<x�N/H�õ�I>ԡE�Z�!����P�u�I�0�3�|UH>T��|�(�|(�M򡂮?ɇR8[kE�]�5��$j��H>��;�|a�	�%�*pێ�CA��=�ɇ���|���T;�H>�}��ך�CqqX��K�$�?��ȑ|a��E�8���ɇ�aX��;��Q��Cm\/��{ݕ�CyA��C�Q��C�I��C�Y#�C��MHqB�ۈ�(�B�4����j��%Q�A�ܠ�>�zGq���{�������"JR� A�z=���'����Ȇ�F�����Gn6��Rf��Y��f%���[Z`����Kriy���<�m��1�e�~̣YG�	�s
�\�y\��\��KX��:��ʍ�Yn�-Y�`̳�y�%��[lDbo/��c��y�®⼃��Z�2\��}.ʞ�(P�<w1��92��չ4T�ұ��2Au.͹ۮAu���~��N9���B5�΃��®����43G;��SD�J�	�%�TQo;!,��[���xۈ�bE%��l�[A�įM�]Po�	%��$��2y4@I��}��@��N�F��5
��:��:ْo(P��[S���)^���`��:t���,Ǌ��k`ţY��b!���(�����ގE���;��k��bN��h��〒���=�(�̥(�����Rc^J�?�t�䘗z`rw��HR�W�H?�$���Õ�1bc�����?�Iu      �   +   x�3��IM.)-J���2�(JL.�L�9}�@�=... �
�      �   5   x�3���-�I�2�.HM�L�	.)MI�+q�/�+�2�����fs��qqq �jS      �   �   x���KN�0E�ϫ���|Zҵ���T1�AAU������B���q��*��s&���}7V����h5fK#�OY�W���I2	�oS)T*x��Sc��l�E+��+or��A��`�Pi�r���й)Z�����
��U�G������2��Q#�EG�oպ[��1\p�8l�?��.�σ˲�W�k��&ZF�d�t��%b�������d�l��V�����r���3��^Q~M̸�d�1J�?@*�"      �   �   x�u���PC�?S�	��u>��^\�:��RKif�7¹"q�����2��]Hś{L���Œ��<����Gp��.l2:u��I�T8�*���ʳ<�ܱ���@`�b���uB���q�0�/$�{�      �   }  x��Umn�@��{�� ��N��.&�
�PD�@�*����XI�ع��x3�v�M�����͛�3oǱ���޽���U��-e�*�P��*Z�)e �����hO��5�xE�N\´~0@�y>n��?J7s*��ji� )�]��Ҹ�!���XN�)b���c��cE�@�����Q w�(�;J� ��/U6�<��
	�#E�X��A���r]հ.H	c߅
�-��XL�;���>����dܑ
�^E�<uh.��#�_Sn�\%�����b���'�c��&ԝxĘϧ1��7�s�D<[�7pÛ�E�����c�ۨs���K���o�G�����$�i�>�akn��Wˇ��c�'q�8څ��'��3iU&-��/�BL6����T8����P�,�}
���w�3�zTcHbHE+��rm�� �BL�%u)Zn���@��I���\����\,p�ZH���#ކA
�/�%��A˵�g��9��ǃ �j;�����8
�~=Qi���s��T�_h�v���1~��}{���"��lc���U�Z{��aХ�O�}��R����ȴ9y1�����=NI=:�7���$�IF��R�+y_b:��u2lڰa������v���f-      �   0   x�3�tJL�H��/�2�.HM�L��,.�2��ML2��+�b���� :�      �   C   x��� 1Cѳ]�(&����_�`�KO� �31M"M���2�\\(��T�I��n���~�^]�      �   P   x�3�0G���3.�ջ� H-�4�2�0CИ����.��4�2�0�%��L9/��J�A%�Lsd3f\�4!F��� b�4�      �      x������ � �      �   i  x����m�0E��)<A R��t��m:�F*�:�� 2�s������w���%���ɣ�2M�x$���=1@�"�0A<u��4*��h6Rg1vU��ڏ�����E��a��@UQyd+ˇ0a�Dv$ (����N��]b�,*{�y����Iz���'���T_�"L�6�>��{�TW
-�a��e�xU%����UN}��*	Ǡq*�!NF�8]Hz��i2�Im^��Z���������\(dl,
^:ُ{\LsЬ;���	����
^.�J�� �C���U�Q��\*5��Y1����{��nE{j�'Y�0��;�\Jh�K��2h=��� ��n��?�j�8      �   I   x�3�t+��	��M�0�b����qq:���祤�%�Bd�_�paT�1g@bQ	�.�ۑ��qqq ˫-      �   6   x�ʹ  ��+�������m�ʖ���HV(lp>:l�Yf1�D�S�<��)      �   n   x�3�0�bÅ}[.l��x��j�2�0�h����ދM\Ɯ^l���b�Ŏ;.�T���e���]�raÅM@�& ��.�y�%M9/L [�H6AM����� ؘT�      �   b  x�U�]��E�gz0�D��\2�q�^P��|AU�r�œ#���1���1��?�?��!��H�"k�x�^��Cd�"g���F�G|x s���M�fw�=Th�n�Wh��B��
;Uh�#4�G��*4G7�����Bs�
͑*4�R�9J�����
�qD����МS��4��Uh�P�9S�������9K���*4�Y4��
�k�мL������W�мR��Th^�B��*4�#R4�G��*4���\�|�Bs�
͕*4�R��J���*4W7�a�6��s�{^D�����~�;.�|�ǳ>"}��h�u�{_D�>J����󭷗�?v��/���Eԟ����.���Eԟ}����S�P���s��<��C�G�=Dr�x�^Y��H�"{�9�?��ړ=7ߟ�+4ϩB�4����<�9^�y�
�s��<K��Uh�G�h��
����[{r;2Dh6W��B�fK�m��lݼ^�ٶ
�vD�"4�T��M�fw�=Th�n��ړۑ!B��
;Uh�#����9�
������Uh�P�9R��X*4G��[��8"܎�s�М��l҃М�Bs�
͙*4�R�9K���f�h�y��Jd�y��."|}���=�#J������."~�Eԯ}��[o_�d(Q_�"��.���"�+.���"�k]D}�E�׾�z�̧�Y��pc2Dh�S�t�˟P�ui�^!���'tsY��l�ʟP�Ui,RV47%C��}D�'"4��B���x���*4�P���
�g��|J��Uh>ݜ���ۑ!2G=D|���C$G�G�+k���Cd�"g��	��}��B�����<M�����+ڸ"4�T�y.�g��<�
��p92ٯ�lS�f3��Uh�P��R�f[*4[��l[�f;"\�����MBhvS��]�f�=Uh��B�ws?AD���j?J܏%�c^Dx�E�G��VDz�E�G^D|��������Q�z�7%C���Q�v��Q�q��Q��"�.�>���s���3����z_��F����=��9z�`�?���{�8,�	�����c��R���	Pj���ZPj)@�-J�(�-@���c�g������1~@�� ���zP�)@�S�^��K�R����3�(�)@i� �Ai�|�������ѷ�����}>�Ȕ���!�hBq�Ay�C��P]�оhA�z�[H����|⧉$��UH��B�L�g��+t�R!{n��Q!�>*4�T��Ld�l��wu�f�-Uh��B��
ͶUh�n^����}���&R4����B��
;Th�n.�ϼ�l�����c��&�iW�9�y�Bs�
ͱTh�R�9�
�q�I����>���0�O�ĕ����ʩ¹�D�JW�\���eM˼��庈�e]��r_���\D���~s�F���Q�L�����6N��6���6ΰ�}=B�a�E�a�8�:q��\�j^�	�{�/o��G�n���7�ɟ�H׿ȉ*/�@�.�@Uq��q�:q�����y���q��*��P!}�
�{��K���������
��B��*4�	o�+X�����U޼?�*	CRő��+��J"[e!G�9Ex�x�:޼?2Uhva���
�*4{7�+4�R��K�f�*4�Q�9>*4�T�9�9{����W�9B��H�c���Bst�z��8*4�G��*4���2#]���3Uh�n�^ؼj�ThέBs��G��5Uh^���#.�K2V�мR��Th^z��cm��Q��>*4�T��L���ͧ���	�+Uh��Bs�
͵Uh�n�N��s�{^D�6%6`l���Q���c���U�C�"�w]D��Q��Eԟ�Eԟ)�
/�2%���Eԟ����Q�E�R��g_D�9��������?���      �   �
  x�U�I�+�D����{��_A��
�_�x�L;&~��h����?�{�������)���L���P �~�"��D��n��ο$�M2I����&
b���|l(�N�6mB�fM���f�?�19������$���*��XN"Xy�
P�Z���'���:D���:-�~]3���&�I4Q�M��j��a4?:O ���E���D��|%�l�r�ل�M�P�y������<#0*(:��A�D�A+���|�V��:�u �E&I4�@�T��A�.S?�E�~ڥ�F'�{-����7��;x2�"i��d��^�*4?A�� ����
�(�@s}P ��j}�6�Z���O���;p���|�J�\t�$����U���2$�Z@�%A7I��Mޓ�[�[���A3�����@��|���4�J��|����(rz:koPrM�"�/�;�]�/��XK&('i����h���MP	}H����c���o�t�x�8j���l�] ����Opd=*����@'q�{D��
P�	ApHX�(��	J�����(����(���c$��I:J�`�s4����_l3������}����g4��O�E�6�9�9�3T	� �bPB� ZFHX����]����0��Q ���Y@hQJM	J���Rs�RjT���PeCK�Q��R;�(��VJ�!��:�Z)u�E)u*�R��!�ԩ�J�3�o1�v��6�]B7�7Kn���q�P����՞��`���"�k�Z��5���y�P��&���MI���n-���K�E�ҳ��Z�B�M�E��5��d$i͋	�y�K@���ŔH�J����P�^k/�aZ��G���	5_���q���f�W\�E6�k�&�ye�V�>?l���L�-��ۦ����[���/�H_�E�W|F��/��⋠���"?թ�hqS��L�⋰�i�Pm²v�	���&AM(��z����X�Ϋk"7R�hi)�!���)���f�/-J���t)��j����YJ9����YJ�hQJ�q��@Т�
��R*��T�t�RE���TJ�2���������+��dn_"�\.�V��n�XI���B���v0%��U��<-�&FbM���nA��uc����6G��AyZZ%u9��FlRzN���[�{-Е�1ߍ�1��87�t�c���+z��"��$z��}@~,z�.f}�
]�a�By!��0��E/�����f��'�}�%���vZp��G�9�M�6�d�Y��N���M����[�.1"{|�;��)۳�LƞU㷢�lM��[f��i�$��8ʚ8m�1m�D۠1mYMИRz�����V�ڋ�1�v���p�� ��5xD�;oE����cϔ��H�D����VdӦ'lgJ�mq7v��y[�9٨���<C<��M��ڳs��5��&Y�!��y�x� Y�yd�&53@g4��ag6|�H����%�sd����u	�Ɖ&��Y=j�l��� ���T=�P{&j�U�d�:c7�r9���Ԯ3GԮ3gԮ3�	jיڄ��Lk�t�M�âɢ�V�V�v��G�+��$U�&�1��dg�/�^s�,��*��ID�Y��K����"�I���'{�ȹ|���o�q�$��~��?�m>.@=�o�q�x�}�����CvJ}���|ĔR���R�c��c*C+�T�TJ)�iL)�J�RJuѢ�*�*�T-J�Q��R�јZJ�J���PSK�Q��R�cj)5*�R�MJL-�Ƙ��T��E[��_A�أDJ~6���6ر��Q�1m���]6L�&A?ф�m��M�W��ȡ�)��)��$� ���H�E��J�Q��^�9ʛ�ħ�"L�����8j�����2>�-fEj���Cj��s���Cn~a���98*چ��|����GF�h��M&��j՛b�j��#�1:�-[>�Б7b�W�����y�~��<c�a��9qܣ�O�����4aa����z���`�V}?GV⽚�f�}(z���N�H�o�ēwG4a��� ���G~±\��A�ڳ
l:���o�mv��P�S�BPJ��䝭5�E��s�@:�;[����;[��i&䝭U��䝭U�M���Pi�7��:�ڛ�V{�7a{�ya{�jo��&lo���jo�ǂ�jo"��Rg ufPa��ߙ!��a�ԙA�-N�̠�س�X�rz��ɇ���Y��`�R��GFz�%ߑ�Z�;n(.����z�4��lq���K2O\�6��,�.uz��s݆��6�k�N��-E2���"Qld]�E�(r��]����]�"�]�E�(���]�"�]_2�"7\_2�"�]_2�b����YE�����u�Ҽ��`�g7?�곛�]����-�>�NW}v�>�7��g�V���+@YLT��K)^�=������%�=�'���VǉK�'V��K�'V��K�)���%�Q֞�6�'�w%�ݞ�l�g�+]Ҟ�t�5q����h��y��+]�����%oc.�w%�zWǻ�[�+��H�V�J7�����8����kT�Qq�d� �ǔ�8_Ҟ'O�}L��%֞�6uLx����'΃�{���<���Hx����"u�-�Y@�o�h����#��E��[�Q`Ѣzx;��"������� U8�?     