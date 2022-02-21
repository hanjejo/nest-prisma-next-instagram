import { User } from '../../user/entities/user.entity';
import { Post } from '../../post/entities/post.entity';

export class Comment {
  id: string;
  author: string | null;
  content: string | null;
  created_time: Date | null;
  updated_time: Date | null;
  author_id: number;
  post_id: number;
  User?: User;
  Post?: Post;
}
