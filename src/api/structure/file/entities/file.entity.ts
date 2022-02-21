import { Post } from '../../post/entities/post.entity';

export class File {
  id: number;
  file: Buffer | null;
  post_id: number;
  Post?: Post;
}
