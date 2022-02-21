import { User } from '../../user/entities/user.entity';
import { Comment } from '../../comment/entities/comment.entity';
import { File } from '../../file/entities/file.entity';
import { Like } from '../../like/entities/like.entity';

export class Post {
  id: number;
  author: string | null;
  content: string | null;
  created_time: Date | null;
  updated_time: Date | null;
  author_id: number;
  location: string | null;
  comment_available: boolean | null;
  User?: User;
  Comment?: Comment[];
  File?: File[];
  Like?: Like[];
}
