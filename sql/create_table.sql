# 数据库初始化
# 用户表
create table user
(
    id           bigint auto_increment comment 'id'
        primary key,
    username     varchar(256)                       null comment '用户昵称',
    userAccount  varchar(256)                       null comment '登录账号',
    avatarUrl    varchar(1024)                      null comment '用户头像',
    gender       tinyint                            null comment '性别',
    userPassword varchar(256)                       not null comment '密码',
    phone        varchar(128)                       null comment '电话',
    email        varchar(512)                       null comment '邮箱',
    userStatus   int      default 0                 not null comment '状态 0 正常 ',
    updateTime   datetime default CURRENT_TIMESTAMP null comment '更新时间',
    createTime   datetime default CURRENT_TIMESTAMP null comment '创建时间',
    isDelete     tinyint  default 0                 not null comment '是否删除'
)
    comment '用户';



