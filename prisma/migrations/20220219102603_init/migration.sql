/*
  Warnings:

  - The `birth_date` column on the `Profile` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE `Comment` MODIFY `author` CHAR(20) NULL,
    MODIFY `created_time` TIMESTAMP(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `updated_time` TIMESTAMP(3) NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AlterTable
ALTER TABLE `File` MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `file` LONGBLOB NULL;

-- AlterTable
ALTER TABLE `Follow` MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT;

-- AlterTable
ALTER TABLE `Like` MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT;

-- AlterTable
ALTER TABLE `Post` MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `author` CHAR(20) NULL,
    MODIFY `created_time` TIMESTAMP(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `updated_time` TIMESTAMP(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `location` CHAR(20) NULL;

-- AlterTable
ALTER TABLE `Profile` MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `image` MEDIUMBLOB NULL,
    MODIFY `website` CHAR(100) NULL,
    MODIFY `profile_name` CHAR(20) NULL,
    MODIFY `gender` CHAR(10) NULL,
    DROP COLUMN `birth_date`,
    ADD COLUMN `birth_date` TIMESTAMP(3) NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AlterTable
ALTER TABLE `User` MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `username` CHAR(20) NULL,
    MODIFY `nickname` CHAR(20) NULL,
    MODIFY `phone_num` CHAR(20) NULL,
    MODIFY `email` CHAR(40) NULL,
    MODIFY `password` CHAR(40) NULL;
