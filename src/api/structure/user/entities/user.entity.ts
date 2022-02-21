import { Comment } from '../../comment/entities/comment.entity';
import { Follow } from '../../follow/entities/follow.entity';
import { Like } from '../../like/entities/like.entity';
import { Post } from '../../post/entities/post.entity';
import { Profile } from '../../profile/entities/profile.entity';

export class User {
  id: number;
  username: string | null;
  nickname: string | null;
  is_professional: boolean | null;
  is_private: boolean | null;
  phone_num: string | null;
  email: string | null;
  password: string | null;
  Comment?: Comment[];
  Follow_Follow_followerToUser?: Follow[];
  Follow_Follow_followingToUser?: Follow[];
  Like?: Like[];
  Post?: Post[];
  Profile?: Profile[];
}
