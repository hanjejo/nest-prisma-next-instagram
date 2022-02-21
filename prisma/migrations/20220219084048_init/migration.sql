-- CreateTable
CREATE TABLE `Comment` (
    `id` VARCHAR(255) NOT NULL,
    `author` CHAR(1) NULL,
    `content` TEXT NULL,
    `created_time` DATETIME(0) NULL,
    `updated_time` DATETIME(0) NULL,
    `author_id` INTEGER NOT NULL,
    `post_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `File` (
    `id` INTEGER NOT NULL,
    `file` BLOB NULL,
    `post_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Follow` (
    `id` INTEGER NOT NULL,
    `follower` INTEGER NOT NULL,
    `following` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Like` (
    `id` INTEGER NOT NULL,
    `post_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Post` (
    `id` INTEGER NOT NULL,
    `author` CHAR(1) NULL,
    `content` TEXT NULL,
    `created_time` DATETIME(0) NULL,
    `updated_time` DATETIME(0) NULL,
    `author_id` INTEGER NOT NULL,
    `location` CHAR(1) NULL,
    `comment_available` BOOLEAN NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Profile` (
    `id` INTEGER NOT NULL,
    `image` BLOB NULL,
    `info` TEXT NULL,
    `website` CHAR(1) NULL,
    `profile_name` CHAR(1) NULL,
    `user_id` INTEGER NOT NULL,
    `gender` CHAR(1) NULL,
    `birth_date` DATE NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL,
    `username` CHAR(1) NULL,
    `nickname` CHAR(1) NULL,
    `is_professional` BOOLEAN NULL,
    `is_private` BOOLEAN NULL,
    `phone_num` CHAR(1) NULL,
    `email` CHAR(1) NULL,
    `password` CHAR(1) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
