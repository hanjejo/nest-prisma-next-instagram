export class CreatePostDto {
  id: number;
  author?: string;
  content?: string;
  created_time?: Date;
  updated_time?: Date;
  location?: string;
  comment_available?: boolean;
}
