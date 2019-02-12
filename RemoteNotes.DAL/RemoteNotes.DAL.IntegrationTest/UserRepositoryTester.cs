using System;
using NUnit.Framework;
using RemoteNotes.Core.Domain;
using RemoteNotes.DAL.Contract;
using RemoteNotes.DAL.IntegrationTest.Base;

namespace RemoteNotes.DAL.IntegrationTest
{
    public class UserRepositoryTester : RepositoryTesterBase<IUserRepository, User>
    {
        [Test]
        public void GetByLoginTest()
        {
            // Arrange
            User element = this.BuildObject();

            this.repository.Add(element, true);

            // Act
            User elementAfter = this.repository.GetUserByLogin(element.Login);

            // Assert
            Assert.IsTrue(elementAfter.Id > 0);
        }

        protected override void ModifyProperties(User element)
        {
            element.Login = "user";
            element.Password = "user";
        }

        protected override User BuildObject()
        {
           return new User() {Login = "login", Password = "password"};
        }
    }
}
