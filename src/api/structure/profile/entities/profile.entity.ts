import { User } from '../../user/entities/user.entity';

export interface Profile {
  id: number;
  image: Buffer | null;
  info: string | null;
  website: string | null;
  profile_name: string | null;
  user_id: number;
  gender: string | null;
  birth_date: Date | null;
  User?: User;
}
