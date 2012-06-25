using System;

namespace Ventaur.Web.Security.Configuration
{

    /// <summary>
    /// The SecureWebPageDirectory class represents a directory entry in the &lt;secureWebPages&gt;
    /// configuration section.
    /// </summary>
/*    public class SecureWebPageDirectory : SecureWebPageItem
    {

        // Fields
        private bool recurse = false;

        /// <summary>
        /// Gets or sets a flag indicating whether or not to include all files in any sub-directories 
        /// when evaluating a request.
        /// </summary>
        public bool Recurse
        {
            get { return recurse; }
            set { recurse = value; }
        }

        /// <summary>
        /// Creates an instance with default values.
        /// </summary>
        public SecureWebPageDirectory()
            : base()
        {
        }

        /// <summary>
        /// Creates an instance with initial values.
        /// </summary>
        /// <param name="path">The relative path to the directory or file.</param>
        /// <param name="ignore">A flag to ignore security for the directory or file.</param>
        public SecureWebPageDirectory(string path, SecurityType secure, bool recurse)
            : base(path, secure)
        {
            this.recurse = recurse;
        }

        /// <summary>
        /// Creates an instance with an initial path value.
        /// </summary>
        /// <param name="path">The relative path to the directory or file.</param>
        public SecureWebPageDirectory(string path)
            : base(path)
        {
        }

    }

    /// <summary>
    /// The SecureWebPageDirectoryCollection class houses a collection of SecureWebPageDirectory instances.
    /// </summary>
    public class SecureWebPageDirectoryCollection : SecureWebPageItemCollection
    {

        /// Initialize an instance of this collection.
        /// </summary>
        public SecureWebPageDirectoryCollection()
            : base()
        {
        }

        /// <summary>
        /// Indexer for the collection.
        /// </summary>
        public SecureWebPageDirectory this[int index]
        {
            get { return (SecureWebPageDirectory)List[index]; }
        }

        /// <summary>
        /// Adds the item to the collection.
        /// </summary>
        public int Add(SecureWebPageDirectory item)
        {
            return List.Add(item);
        }

        /// <summary>
        /// Inserts an item into the collection at the specified index.
        /// </summary>
        /// <param name="index">The index to insert the item at.</param>
        /// <param name="item">The item to insert.</param>
        public void Insert(int index, SecureWebPageDirectory item)
        {
            List.Insert(index, item);
        }

        public void Remove(SecureWebPageDirectory item)
        {
            List.Remove(item);
        }

    }*/

}