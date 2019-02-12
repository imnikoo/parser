using System;
using RemoteNotes.Core.Domain;
using RemoteNotes.Service.DTO.Data;

namespace RemoteNotes.Service.DTO.Transform.Core
{
    public class UserTransformer
    {
        public UserInfo Transform(User user)
        {
            UserInfo userInfo = new UserInfo(user.Login);

            return userInfo;
        }

    }
}
