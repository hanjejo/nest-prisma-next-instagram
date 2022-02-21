export class CreateProfileDto {
  id: number;
  image?: Buffer;
  info?: string;
  website?: string;
  profile_name?: string;
  gender?: string;
  birth_date?: Date;
}
