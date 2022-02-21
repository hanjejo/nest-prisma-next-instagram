import { User } from '../../user/entities/user.entity';

export class Follow {
  id: number;
  follower: number;
  following: number;
  User_Follow_followerToUser?: User;
  User_Follow_followingToUser?: User;
}
