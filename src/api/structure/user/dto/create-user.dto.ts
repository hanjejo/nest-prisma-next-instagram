export interface CreateUserDto {
  id: number;
  username?: string;
  nickname?: string;
  is_professional?: boolean;
  is_private?: boolean;
  phone_num?: string;
  email?: string;
  password?: string;
}
