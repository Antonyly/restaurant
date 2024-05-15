create table _order
(
    id           bigint not null auto_increment,
    date_created datetime(6),
    delivery     varchar(255),
    payment      varchar(255),
    status       bit    not null,
    admin_id     bigint,
    client_id    bigint,
    kitchen_id   bigint,
    primary key (id)
) engine = InnoDB;
create table administrator
(
    id   bigint not null auto_increment,
    name varchar(255),
    role varchar(255),
    primary key (id)
) engine = InnoDB;
create table bill
(
    id bigint not null,
    primary key (id)
) engine = InnoDB;
create table category
(
    id          bigint not null auto_increment,
    description varchar(255),
    image       varchar(255),
    name        varchar(255),
    _category   bigint,
    primary key (id)
) engine = InnoDB;
create table clients
(
    id         bigint  not null,
    email      varchar(255),
    last_name  varchar(255),
    first_name varchar(255),
    phone      integer not null,
    primary key (id)
) engine = InnoDB;
create table dishes
(
    id          bigint not null auto_increment,
    description varchar(255),
    image       varchar(255),
    name        varchar(255),
    price       DECIMAL(10,2),
    menu_id     bigint,
    category_id bigint,
    primary key (id)
) engine = InnoDB;
create table dishhasorder
(
    id        bigint  not null auto_increment,
    quantity  integer not null,
    dishes_id bigint,
    order_id  bigint,
    primary key (id)
) engine = InnoDB;
create table kitchen
(
    id bigint not null auto_increment,
    primary key (id)
) engine = InnoDB;
create table menu
(
    id bigint not null auto_increment,
    primary key (id)
) engine = InnoDB;
create table roles
(
    id   bigint not null auto_increment,
    name varchar(255),
    role varchar(255),
    primary key (id)
) engine = InnoDB;
create table users
(
    id       bigint not null auto_increment,
    password varchar(255),
    username varchar(255),
    primary key (id)
) engine = InnoDB;
create table users_rolesset
(
    users_id    bigint not null,
    rolesset_id bigint not null,
    primary key (users_id, rolesset_id)
) engine = InnoDB;
alter table if exists _order
    add constraint FK255g44uvqbrvits5xfoof50t0 foreign key (admin_id) references administrator (id);
alter table if exists _order
    add constraint FKdr1hf5kgevnhwb3adi2p9qm1p foreign key (client_id) references clients (id);
alter table if exists _order
    add constraint FKeh9ygim622wwlsnd9kxuq866m foreign key (kitchen_id) references kitchen (id);
alter table if exists category
    add constraint FKp1bs78bwafjonphiydijutixu foreign key (_category) references menu (id);
alter table if exists clients
    add constraint FK1hgwdp9vl25xl9i7s354sifey foreign key (id) references users (id);
alter table if exists dishes
    add constraint FKmjyxiavmsmhlx7p6xg46a1lkf foreign key (menu_id) references menu (id);
alter table if exists dishes
    add constraint FKq6jujqnynk0jypu29lc9rc9ug foreign key (category_id) references category (id);
alter table if exists dishhasorder
    add constraint FKfaogd9dfw5yvqjnmvg7tn952s foreign key (dishes_id) references dishes (id);
alter table if exists dishhasorder
    add constraint FK22f6dtyo5yoogcbuv6sul2e85 foreign key (order_id) references _order (id);
alter table if exists users_rolesset
    add constraint FKbae8tw2kg6p1ja9cges83x7ha foreign key (rolesset_id) references roles (id);
alter table if exists users_rolesset
    add constraint FKt7213is417582bjg6e95g5w53 foreign key (users_id) references users (id);