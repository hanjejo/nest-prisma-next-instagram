import { Body, Controller, Get, Post } from '@nestjs/common';
import { AppService } from './app.service';
import { IUser } from './api/structure/IUser';
import { PrismaClient } from '@prisma/client';
import { CreateUserDto } from './api/structure/user/dto/create-user.dto';

@Controller()
export class AppController {
  private prisma: PrismaClient;
  constructor(private readonly appService: AppService) {
    this.prisma = new PrismaClient({
      log: [
        {
          emit: 'event',
          level: 'query',
        },
        {
          emit: 'stdout',
          level: 'error',
        },
        {
          emit: 'stdout',
          level: 'info',
        },
        {
          emit: 'stdout',
          level: 'warn',
        },
      ],
    });

    // prisma.$on('query', (e) => {
    //   console.log('Query: ' + e.query)
    //   console.log('Params: ' + e.params)
    //   console.log('Duration: ' + e.duration + 'ms')
    // });
  }

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Get()
  async getUsers(): Promise<Array<IUser>> {
    return await this.prisma.user.findMany();
  }

  @Post()
  async createUser(@Body() input: CreateUserDto): Promise<IUser> {
    const result = await this.prisma.user.create({
      data: input,
      //  {
      //   username: '조한제',
      //   nickname: '한제님1',
      //   is_professional: false,
      //   is_private: false,
      //   phone_num: '010-2816-3765',
      //   email: 'gkswpsla1@gmail.com',
      //   password: 'rnsdls1!'
      // }
    });

    return result;
  }
}
