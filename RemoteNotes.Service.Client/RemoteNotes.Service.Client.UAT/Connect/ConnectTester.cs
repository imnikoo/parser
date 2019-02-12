using System;
using System.Configuration;
using NUnit.Framework;
using RemoteNotes.Service.Client.UAT.Context;
using TechTalk.SpecFlow;

namespace RemoteNotes.Service.Client.UAT.Connect
{
    [Binding]
    public partial class ConnectTester
    {
        /// <summary>
        /// The connect the service.
        /// </summary>
        [Given("I try to connect the service")]
        [When("I try to connect the service")]
        public void ConnectTheService()
        {
            string serviceUrl = ConfigurationManager.AppSettings["ServiceUrl"];
            TestingContext.GetFrontServiceClient().Connect(serviceUrl);
        }


        /// <summary>
        /// The disconnect from the service.
        /// </summary>
        [Given("I try to disconnect from the service")]
        [When("I try to disconnect from the service")]
        public void DisconnectFromTheService()
        {
            TestingContext.GetFrontServiceClient().Disconnect();
        }

        /// <summary>
        /// The connect wrong service.
        /// </summary>
        [Given("I try to connect wrong service")]
        [When("I try to connect wrong service")]
        public void ConnectWrongService()
        {
            try
            {
                string serviceUrl = ConfigurationManager.AppSettings["ServiceUrl"] + "x";
                TestingContext.GetFrontServiceClient().Connect(serviceUrl);
            }
            catch (Exception ex)
            {
                TestingContext.LastException = ex;
            }
        }

        /// <summary>
        /// The result successful.
        /// </summary>
        [When("the result should be connected successfully")]
        [Then("the result should be connected successfully")]
        public void ConnectResultSuccessful()
        {
            Assert.That(TestingContext.LastException == null);
        }

        /// <summary>
        /// The disconnect result successful.
        /// </summary>
        [When("the result should be disconnected successfully")]
        [Then("the result should be disconnected successfully")]
        public void DisconnectResultSuccessful()
        {
            Assert.That(TestingContext.LastException == null);
        }

        /// <summary>
        /// The result failed.
        /// </summary>
        [Then("the result should be failed to connect")]
        public void ResultFailed()
        {
            Assert.That(TestingContext.LastException != null);
        }
    }
}
