%ctor { // Upon Initalising Tweak

NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
NSString *documentsDirectory = [paths objectAtIndex:0];
NSString *path = [documentsDirectory stringByAppendingPathComponent:@"authentication.json"]; // Sets Path

NSFileManager *fileManager = [NSFileManager defaultManager];

if ([fileManager fileExistsAtPath: path])
{
  // Does Nothing If File already exists
} else {

  NSString *content = @"{\"mechanism\":\"guest\",\"accountIdentifier\":\"HackedByKodeyThomas_\",\"oauth\":null,\"expiration\":\"9999-08-09T12:52:27Z\"}"; // Custom Auth String

  [content writeToFile:path
                   atomically:NO
                         encoding:NSStringEncodingConversionAllowLossy
                                error:nil];    // Writes Data To File

}

}
