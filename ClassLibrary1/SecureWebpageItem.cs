using System;
using System.Collections;

namespace Hyper.Web.Security
{
 
/// <summary>
 /// Indicates the type of security for a SecureWebPageItem.
/// </summary>
public enum SecurityType
{

  Secure,
  
  Insecure,

   Ignore
 }

      public class SecureWebPageItemComparer : IComparer
   {
         /// <summary>
        /// Initialize an instance of this class.
         /// </summary>
        public SecureWebPageItemComparer()
        {
         }
  
         /// <summary>
          /// Compares the two objects as string and SecureWebPageItem or both SecureWebPageItem 
         /// by the Path property.
         /// </summary>
          /// <param name="x">First object to compare.</param>
         /// <param name="y">Second object to compare.</param>
         /// <returns></returns>
       public int Compare(object x, object y)
          {
               // Check the type of the parameters
               if (!(x is SecureWebPageItem) && !(x is string))
                   // Throw an exception for the first argument
                   throw new ArgumentException("Parameter must be a SecureWebPageItem or a String.", "x");
               else if (!(y is SecureWebPageItem) && !(y is string))
                   // Throw an exception for the second argument
                   throw new ArgumentException("Parameter must be a SecureWebPageItem or a String.", "y");
   
               // Initialize the path variables
               string xPath = string.Empty;
               string yPath = string.Empty;
   
               // Get the path for x
               if (x is SecureWebPageItem)
                   xPath = ((SecureWebPageItem) x).Path;
               else
                  xPath = (string) x;
 
            // Get the path for y
            if (y is SecureWebPageItem)
                 yPath = ((SecureWebPageItem) y).Path;
            else
                  yPath = (string) y;
 
            // Compare the paths, ignoring case
             return string.Compare(xPath, yPath, true);
           }
     }
 
  
     public class SecureWebPageItem
     {
        // Fields
         private SecurityType secure = SecurityType.Secure;
           private string path = string.Empty;
         /// <summary>
         /// Gets or sets the type of security for this directory or file.

         public SecurityType Secure
         {
             get { return secure; }
              set { secure = value; }
         }
 


         public string Path
       {
           get { return path; }
          set { path = value; }
         }

         /// <summary>
          /// Creates an instance of this class.
         /// </summary>
         public SecureWebPageItem()
          {
          }
  
          /// <summary>

         public SecureWebPageItem(string path, SecurityType secure)
       {
             // Initialize the path and secure properties
             this.path = Path;
            this.secure = secure;
          }
  

         public SecureWebPageItem(string path) : this(path, SecurityType.Secure)
         {
          }
 
      }
  }

