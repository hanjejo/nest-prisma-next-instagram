export class CreateCommentDto {
  id: string;
  author?: string;
  content?: string;
  created_time?: Date;
  updated_time?: Date;
}
