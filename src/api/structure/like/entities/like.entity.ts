import { Post } from '../../post/entities/post.entity';
import { User } from '../../user/entities/user.entity';

export class Like {
  id: number;
  post_id: number;
  user_id: number;
  Post?: Post;
  User?: User;
}
