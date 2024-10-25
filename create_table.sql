create table threads
(
    id            int unsigned auto_increment
        primary key,
    category_id   int unsigned         null,
    user_id       int unsigned         null,
    content       text                 not null,
    anonymous     tinyint(1) default 0 not null,
    created_at    timestamp            null,
    updated_at    timestamp            null,
    deleted_at    timestamp            null,
    trending      tinyint(1) default 0 not null,
    pinned        tinyint(1) default 0 not null,
    pinning_order int unsigned         null,
    constraint threads_category_id_foreign
        foreign key (category_id) references categories (id),
    constraint threads_user_id_foreign
        foreign key (user_id) references users (id)
)
    collate = utf8mb4_unicode_ci;

create index threads_category_id_index
    on threads (category_id);

create index threads_user_id_index
    on threads (user_id);