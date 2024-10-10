import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'HELLOOOOOOOOOO! update v1, Update 14:02PM';
  }
}
