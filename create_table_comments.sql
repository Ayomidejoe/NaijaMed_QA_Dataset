create table thread_comments
(
    id           int unsigned auto_increment
        primary key,
    content      text                 not null,
    user_id      int unsigned         not null,
    thread_id    int                  not null,
    is_retrieved tinyint(1) default 0 not null,
    retrieved_at timestamp            null,
    is_answer    tinyint(1) default 0 not null,
    created_at   timestamp            null,
    updated_at   timestamp            null,
    deleted_at   timestamp            null,
    constraint thread_comments_user_id_foreign
        foreign key (user_id) references users (id)
)
    collate = utf8mb4_unicode_ci;

create index thread_comments_user_id_index
    on thread_comments (user_id);