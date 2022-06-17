create table tbl_bb_stadium (
    st_pk	VARCHAR2(20)		PRIMARY KEY,
    bb_st_name	nVARCHAR2(20),
    bb_st_x	VARCHAR2(50),
    bb_st_y	VARCHAR2(50)
);

create table tbl_schedule_dusan (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_schedule_lg (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)
);

create table tbl_schedule_kia (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_schedule_kt (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_schedule_lotte (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_schedule_ssg (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_schedule_samsung (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_schedule_kiwoom (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_schedule_hanwha (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_schedule_nc (
    st_seq      NUMBER(5)    PRIMARY KEY,
    st_pk       VARCHAR2(20),
    st_date     nVARCHAR2(20),
    st_match    nVARCHAR2(20)    
);

create table tbl_fb_stadium (
    fb_st_pk	VARCHAR2(20)		PRIMARY KEY,
    fb_st_name	nVARCHAR2(20),
    fb_st_x	VARCHAR2(50),
    fb_st_y	VARCHAR2(50)
);

create table tbl_fb_schedule_seoul (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_jeonbuk (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);
        
create table tbl_fb_schedule_gangwon1 (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_gangwon2 (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_incheon (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_seongnam (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_suwon_ss (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_suwon (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_gimcheon (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_daegu (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_pohang (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_ulsan (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

create table tbl_fb_schedule_jeju (
    fb_st_seq      NUMBER(5)    PRIMARY KEY,
    fb_st_pk       VARCHAR2(20),
    fb_st_date     nVARCHAR2(20),
    fb_st_time     VARCHAR2(20),
    fb_st_match    nVARCHAR2(20)    
);

