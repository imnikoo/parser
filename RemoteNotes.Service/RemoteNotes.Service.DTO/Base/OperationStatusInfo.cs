using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemoteNotes.Service.DTO.Enum;

namespace RemoteNotes.Service.DTO.Base
{
    public class OperationStatusInfo
    {
        /// <summary>
        /// The attached info.
        /// </summary>
        protected string attachedInfo = string.Empty;

        /// <summary>
        /// The object.
        /// </summary>
        protected object attachedObject;

        /// <summary>
        /// The operation status id.
        /// </summary>
        protected byte operationStatusId;

        /// <summary>
        /// Gets or sets the attached info.
        /// </summary>
        public string AttachedInfo
        {
            get
            {
                return this.attachedInfo;
            }

            set
            {
                this.attachedInfo = value;
            }
        }

        /// <summary>
        /// Gets or sets the attached object.
        /// </summary>
        public object AttachedObject
        {
            get
            {
                return this.attachedObject;
            }

            set
            {
                this.attachedObject = value;
            }
        }

        /// <summary>
        /// Gets or sets the operation status.
        /// </summary>
        public OperationStatus OperationStatus
        {
            get
            {
                return (OperationStatus)this.operationStatusId;
            }

            set
            {
                this.operationStatusId = (byte)value;
            }
        }

        public OperationStatusInfo()
        {

        }

        public OperationStatusInfo(OperationStatus operationStatus)
        {
            this.operationStatusId = (byte)operationStatus;
        }

        public OperationStatusInfo(OperationStatus operationStatus, object attachedObject)
        {
            this.operationStatusId = (byte)operationStatus;
            this.attachedObject = attachedObject;
        }

        public OperationStatusInfo(OperationStatus operationStatus, string attachedInfo)
        {
            this.operationStatusId = (byte)operationStatus;
            this.attachedInfo = attachedInfo;
        }
    }
}
