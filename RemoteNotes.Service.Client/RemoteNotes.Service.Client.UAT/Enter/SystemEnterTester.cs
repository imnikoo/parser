using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using RemoteNotes.Service.Client.UAT.Context;
using RemoteNotes.Service.DTO.Base;
using RemoteNotes.Service.DTO.Data;
using RemoteNotes.Service.DTO.Enum;
using TechTalk.SpecFlow;

namespace RemoteNotes.Service.Client.UAT.Enter
{
    [Binding]
    public partial class SystemEnterTester
    {
        /// <summary>
        /// The enter the system.
        /// </summary>
        /// <param name="login">
        /// The login.
        /// </param>
        /// <param name="password">
        /// The password.
        /// </param>
        [When("I enter the login: (.*) and password: (.*)")]
        public void EnterTheSystem(string login, string password)
        {
            // In the result we have assigned userInfo and his active accountInfo in User and Account contexts.
            UserInfo userInfo = TestingContext.GetFrontServiceClient().Enter(login, password);
            Thread.Sleep(100);
        }

        /// <summary>
        /// The exit the system.
        /// </summary>
        /// <exception cref="Exception">
        /// </exception>
        [When("I try to exit the system")]
        public void ExitTheSystem()
        {
            // In the result we have assigned userInfo and his active accountInfo in User and Account contexts.
            OperationStatusInfo result = TestingContext.GetFrontServiceClient().Exit();
            Thread.Sleep(100);

            if (result.OperationStatus != OperationStatus.Done)
            {
                throw new Exception("Exit is not ok.");
            }
        }
    }
}
